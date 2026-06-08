<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
    public $M_auth;
    public $M_users;

    public function __construct() {
        parent::__construct();
        $this->load->model('M_auth');
        // diperlukan untuk migrasi password legacy ke hash
        $this->load->model('admin/M_users');
    }

    public function index() {
        if ($this->session->userdata('role') == 'admin') {
            redirect('admin/admin'); 
        } elseif ($this->session->userdata('role') == 'kasir') {
            redirect('kasir/kasir'); 
        }
        
        $this->load->view('login');
    }

    public function proses() {
    $username = $this->input->post('username', TRUE);
    $password = $this->input->post('password', TRUE);

    $user = $this->M_auth->cek_login($username); 

    if ($user) {
        if (isset($user->status) && $user->status == 'nonaktif') {
            $this->session->set_flashdata('pesan', 'Akun Anda telah dinonaktifkan. Silakan hubungi Administrator.');
            redirect('auth');
            return;
        }

        // Periksa password menggunakan password_verify (hash)
        if (isset($user->password) && password_verify($password, $user->password)) {
            // ok
        } elseif (isset($user->password) && $password == $user->password) {
            // Legacy: password disimpan plain-text. Re-hash dan simpan agar aman.
            $new_hash = password_hash($password, PASSWORD_DEFAULT);
            $this->M_users->update_user($user->id_user, ['password' => $new_hash]);
        } else {
            $this->session->set_flashdata('pesan', 'Password salah');
            redirect('auth');
            return;
        }
        date_default_timezone_set('Asia/Jakarta');
            
            $session_data = array(
                'id_user'   => $user->id_user,
                'username'  => $user->username,
                'nama'      => $user->nama_lengkap,
                'role'      => $user->role,
                'logged_in' => TRUE,
                'login_time' => date('Y-m-d H:i')
            );
            $this->session->set_userdata($session_data);

            if ($user->role == 'admin') {
                redirect('admin/admin');
            } else {
                redirect('kasir');
            }
    } else {
        $this->session->set_flashdata('pesan', 'Username tidak ditemukan');
        redirect('auth');
    }
}

    public function logout() {
        $this->session->sess_destroy();
        redirect('auth');
    }
}