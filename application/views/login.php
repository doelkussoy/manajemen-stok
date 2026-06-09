<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login | TOKO SUMBER KERAMIK</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500;600;700&display=swap">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    
    body {
      font-family: 'DM Sans', sans-serif;
      background: linear-gradient(135deg, #f0f4f8 0%, #d9e2ec 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }

    .login-card {
      background: #ffffff;
      border-radius: 12px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.05);
      width: 100%;
      max-width: 400px;
      padding: 36px 28px;
    }

    .logo-wrap {
      width: 240px;
      height: 75px;
      overflow: hidden;
      position: relative;
      margin: 0 auto 16px;
    }

    .logo-wrap img {
      width: 100% !important;
      height: 100% !important;
      max-width: none !important;
      object-fit: cover !important;
      object-position: center !important;
    }

    .login-header {
      text-align: center;
      margin-bottom: 24px;
    }

    .login-header h1 {
      font-size: 20px;
      color: #102a43;
      font-weight: 700;
      margin-bottom: 4px;
    }

    .login-header p {
      font-size: 13px;
      color: #627d98;
    }

    .input-group {
      margin-bottom: 18px;
    }

    .input-label {
      display: block;
      font-size: 12px;
      font-weight: 600;
      color: #486581;
      margin-bottom: 6px;
    }

    .input-wrapper {
      position: relative;
    }

    .input-wrapper i {
      position: absolute;
      left: 12px;
      top: 50%;
      transform: translateY(-50%);
      color: #9fb3c8;
      font-size: 14px;
      pointer-events: none;
    }

    .input-wrapper input {
      width: 100%;
      padding: 10px 12px 10px 36px;
      border: 1.5px solid #cbd2d9;
      border-radius: 6px;
      font-size: 14px;
      color: #102a43;
      outline: none;
      transition: all 0.2s;
    }

    .input-wrapper input:focus {
      border-color: #2563eb;
      box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
    }

    .input-wrapper .icon-right {
      left: auto;
      right: 12px;
      pointer-events: all;
      cursor: pointer;
    }

    .flash-msg {
      padding: 10px 12px;
      border-radius: 6px;
      font-size: 13px;
      font-weight: 500;
      margin-bottom: 18px;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .flash-msg.error {
      background: #ffe3e3;
      color: #c92a2a;
      border: 1px solid #ffa8a8;
    }

    .btn-login {
      width: 100%;
      padding: 11px;
      background: #2563eb;
      color: #ffffff;
      border: none;
      border-radius: 6px;
      font-size: 14px;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }

    .btn-login:hover {
      background: #1d4ed8;
    }

    .btn-login:disabled {
      opacity: 0.7;
      cursor: not-allowed;
    }

    .btn-login .spinner {
      display: none;
      width: 14px;
      height: 14px;
      border: 2px solid rgba(255, 255, 255, 0.4);
      border-top-color: #ffffff;
      border-radius: 50%;
      animation: spin 0.6s linear infinite;
    }

    @keyframes spin { to { transform: rotate(360deg); } }

    .login-footer {
      text-align: center;
      margin-top: 24px;
      font-size: 11px;
      color: #9fb3c8;
      line-height: 1.5;
    }
  </style>
</head>

<body>

  <div class="login-card">
    
    <div class="logo-wrap">
      <img src="<?= base_url('assets/images/logo.png') ?>" alt="Logo Toko Sumber Keramik"
           onerror="this.style.display='none'; this.nextElementSibling.style.display='block';">
      <i class="fas fa-chart-bar" style="display:none; font-size: 40px; color: #2563eb; text-align: center; margin-top: 10px;"></i>
    </div>

    <div class="login-header">
      <h1>Selamat Datang</h1>
      <p>Masukkan username & password Anda</p>
    </div>

    <!-- Flash message -->
    <?php $pesan = $this->session->flashdata('pesan'); ?>
    <?php if ($pesan): ?>
      <div class="flash-msg error">
        <i class="fas fa-exclamation-circle"></i>
        <?= $pesan ?>
      </div>
    <?php endif; ?>

    <form action="<?= site_url('auth/proses') ?>" method="post" id="loginForm" novalidate>

      <div class="input-group">
        <label class="input-label" for="username">Username</label>
        <div class="input-wrapper">
          <i class="fas fa-user"></i>
          <input
            type="text"
            id="username"
            name="username"
            placeholder="Username"
            required
            autofocus
            autocomplete="username"
          >
        </div>
      </div>

      <div class="input-group">
        <label class="input-label" for="password">Password</label>
        <div class="input-wrapper">
          <i class="fas fa-lock"></i>
          <input
            type="password"
            id="password"
            name="password"
            placeholder="Password"
            required
            autocomplete="current-password"
          >
          <i class="fas fa-eye icon-right" id="togglePassword" title="Tampilkan password"></i>
        </div>
      </div>

      <button type="submit" class="btn-login" id="btnLogin">
        <span class="spinner" id="btnSpinner"></span>
        <span id="btnText">Login</span>
        <i class="fas fa-arrow-right" id="btnArrow"></i>
      </button>

    </form>

    <div class="login-footer">
      <strong>TOKO SUMBER KERAMIK BALARAJA</strong><br>
      Sistem Manajemen Stok & Penjualan
    </div>

  </div>

</body>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
  // Toggle password visibility
  document.getElementById('togglePassword').addEventListener('click', function () {
    var input = document.getElementById('password');
    var icon  = this;
    if (input.type === 'password') {
      input.type = 'text';
      icon.classList.replace('fa-eye', 'fa-eye-slash');
    } else {
      input.type = 'password';
      icon.classList.replace('fa-eye-slash', 'fa-eye');
    }
  });

  // Validation & Loading state on submit
  document.getElementById('loginForm').addEventListener('submit', function (e) {
    var username = document.getElementById('username').value.trim();
    var password = document.getElementById('password').value.trim();

    if (!username || !password) {
      e.preventDefault();
      Swal.fire({
        icon: 'warning',
        title: 'Peringatan',
        text: 'Username dan Password tidak boleh kosong!',
        confirmButtonColor: '#2563eb'
      });
      return;
    }

    var btn     = document.getElementById('btnLogin');
    var spinner = document.getElementById('btnSpinner');
    var text    = document.getElementById('btnText');
    var arrow   = document.getElementById('btnArrow');

    btn.disabled          = true;
    btn.style.opacity     = '0.85';
    spinner.style.display = 'block';
    text.textContent      = 'Memproses...';
    if (arrow) arrow.style.display = 'none';
  });
</script>
</html>