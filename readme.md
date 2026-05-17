<p align="center">
  <img src="assets/images/logo.png" alt="Logo PT Pordjo" width="160">
</p>

<h1 align="center">Sistem Manajemen Barang</h1>
<h3 align="center">PT Pordjo Steelindo Perkasa</h3>

<p align="center">
  <em>Aplikasi Point of Sale (POS) berbasis web untuk mengelola stok, transaksi penjualan, barang masuk, dan laporan keuangan pada perusahaan distributor baja & besi.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Framework-CodeIgniter%203-EF4223?style=flat-square&logo=codeigniter&logoColor=white" alt="CodeIgniter 3">
  <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Language-PHP-777BB4?style=flat-square&logo=php&logoColor=white" alt="PHP">
  <img src="https://img.shields.io/badge/UI-AdminLTE%203-007bff?style=flat-square" alt="AdminLTE 3">
  <img src="https://img.shields.io/badge/License-Academic-green?style=flat-square" alt="Academic">
</p>

---

## 📋 Daftar Isi

- [Tentang Proyek](#-tentang-proyek)
- [Fitur Utama](#-fitur-utama)
- [Tech Stack](#-tech-stack)
- [Struktur Proyek](#-struktur-proyek)
- [Instalasi](#-instalasi)
- [Konfigurasi Database](#-konfigurasi-database)
- [Hak Akses](#-hak-akses)
- [Screenshot](#-screenshot)
- [Lisensi](#-lisensi)

---

## 📖 Tentang Proyek

**Sistem Manajemen Barang PT Pordjo Steelindo Perkasa** adalah aplikasi web yang dibangun sebagai **Tugas Akhir** untuk mengatasi permasalahan pencatatan stok dan transaksi yang sebelumnya dilakukan secara manual.

Sistem ini menerapkan arsitektur **MVC (Model-View-Controller)** menggunakan framework **CodeIgniter 3** dengan dua peran pengguna: **Admin** dan **Kasir**, masing-masing dengan hak akses yang berbeda.

### Permasalahan yang Diselesaikan
- ❌ Pencatatan stok manual yang rawan kesalahan
- ❌ Tidak ada riwayat perubahan stok dan harga
- ❌ Laporan penjualan yang sulit direkap
- ❌ Tidak ada proteksi terhadap penjualan stok habis

### Solusi yang Ditawarkan
- ✅ Manajemen stok real-time dengan audit trail
- ✅ Transaksi penjualan terintegrasi (POS) dengan validasi otomatis
- ✅ Laporan & analitik penjualan dengan visualisasi chart
- ✅ Sistem hak akses berbasis role (RBAC)

---

## ✨ Fitur Utama

### 🛒 Modul Penjualan (Point of Sale)
- Input transaksi dengan pencarian produk real-time
- Validasi stok otomatis sebelum checkout
- Perhitungan **PPN 11%** otomatis
- Proteksi anti jual rugi (harga jual ≤ harga beli ditolak)
- Dukungan metode **Cash** dan **Transfer Bank**
- Cetak nota / invoice

### 📦 Modul Barang Masuk (Restocking)
- Input pembelian dari supplier dengan auto-generate No. Faktur
- Perhitungan **Average Cost** otomatis
- Penambahan stok gudang otomatis
- Upload surat jalan (gambar/PDF)
- Supplier snapshot (nama supplier terkunci saat transaksi)

### 📊 Modul Laporan & Analitik
- Filter periode: Hari Ini, Minggu Ini, Bulan Ini, Bulan Lalu, Tahun Ini, Custom
- Chart omzet harian (Admin)
- Top produk terlaris
- Performa per kasir (Admin)
- Cetak laporan (print-friendly)

### 🔒 Keamanan & Integritas Data
- **Atomic Transaction** — Rollback otomatis jika ada error di tengah proses
- **Soft Delete** — Data yang punya riwayat transaksi dinonaktifkan, bukan dihapus
- **Audit Trail** — Pencatatan setiap perubahan stok dan harga ke tabel log
- **Session Guard** — Dua lapis penjagaan (login + role) di setiap controller
- **XSS Filter** — Semua input difilter dengan parameter `TRUE`

### 🎨 UI/UX
- Desain modern dengan tema warna biru profesional
- Halaman login dengan animasi partikel
- Profile dropdown dengan info sesi
- Section data nonaktif dengan styling khusus
- Responsive layout

---

## 🛠 Tech Stack

| Layer | Teknologi |
|---|---|
| Backend | PHP 7.4+, CodeIgniter 3 |
| Database | MySQL 5.7+ / MariaDB 10+ |
| Frontend | HTML5, CSS3 (Vanilla), JavaScript (ES6) |
| UI Framework | AdminLTE 3.2 |
| Font | DM Sans (Google Fonts) |
| Icon | Font Awesome 5.15 |
| Server Lokal | Laragon / XAMPP |

---

## 📁 Struktur Proyek

```
TA/
├── application/
│   ├── config/              # Konfigurasi CI (database, routes, autoload)
│   ├── controllers/
│   │   ├── Auth.php         # Login & Logout
│   │   ├── admin/           # 8 controller khusus Admin
│   │   └── kasir/           # 7 controller khusus Kasir
│   ├── models/
│   │   ├── M_auth.php       # Model autentikasi
│   │   └── admin/           # 6 model (shared oleh Admin & Kasir)
│   └── views/
│       ├── login.php        # Halaman login
│       ├── layout/          # Header, Sidebar, Footer
│       ├── admin/           # View halaman Admin
│       └── kasir/           # View halaman Kasir
├── assets/
│   ├── css/                 # Stylesheet (responsive, dark-mode)
│   └── images/              # Logo dan aset gambar
├── uploads/
│   ├── bukti_transfer/      # Upload bukti transfer penjualan
│   └── surat_jalan/         # Upload surat jalan barang masuk
├── system/                  # Core CodeIgniter (jangan diubah)
└── index.php                # Entry point aplikasi
```

---

## 🚀 Instalasi

### Prasyarat
- PHP ≥ 7.4
- MySQL ≥ 5.7 atau MariaDB ≥ 10
- Apache dengan `mod_rewrite` aktif
- [Laragon](https://laragon.org/) atau XAMPP

### Langkah Instalasi

**1. Clone repository**
```bash
git clone https://github.com/username/TA.git
```

**2. Pindahkan ke direktori web server**
```bash
# Laragon
cp -r TA/ C:/laragon/www/

# XAMPP
cp -r TA/ C:/xampp/htdocs/
```

**3. Import database**
```bash
# Buat database baru
mysql -u root -e "CREATE DATABASE db_ta;"

# Import file SQL
mysql -u root db_ta < database/db_ta.sql
```

**4. Konfigurasi database**

Edit file `application/config/database.php`:
```php
$db['default'] = array(
    'hostname' => 'localhost',
    'username' => 'root',
    'password' => '',
    'database' => 'db_ta',
    ...
);
```

**5. Akses aplikasi**
```
http://localhost/TA/
```

---

## 🗄 Konfigurasi Database

### Tabel Utama

| Tabel | Keterangan |
|---|---|
| `users` | Akun pengguna (admin/kasir) dengan kolom status aktif/nonaktif |
| `categories` | Kategori produk |
| `products` | Master data produk (kode, nama, harga beli, harga jual, stok, status) |
| `suppliers` | Data pemasok/supplier |
| `sales` | Header transaksi penjualan |
| `sale_details` | Detail item per nota penjualan |
| `purchases` | Header transaksi barang masuk |
| `purchase_details` | Detail item per faktur barang masuk |
| `stok_log` | Audit trail perubahan stok manual |
| `harga_log` | Audit trail perubahan harga otomatis |

### Relasi Antar Tabel

```
categories ──1:N──► products ──1:N──► sale_details ◄──N:1── sales
                         │                                      │
                         └──1:N──► purchase_details ◄──N:1── purchases
                                                                │
suppliers ──1:N──────────────────────────────────────────────────┘
                                                                
users ──1:N──► sales
users ──1:N──► purchases
users ──1:N──► stok_log
users ──1:N──► harga_log
```

---

## 👥 Hak Akses

Sistem menggunakan **Role-Based Access Control (RBAC)** dengan dua peran:

### Admin (Superuser)
| Modul | Hak Akses |
|---|---|
| Dashboard | Statistik global, chart 7 hari, monitoring barang masuk |
| Kategori | Tambah, edit, hapus |
| Produk | Tambah, edit, hapus, update stok + audit |
| Supplier | Tambah, edit, hapus |
| Barang Masuk | Input, lihat semua, detail |
| Penjualan | Input, lihat semua, detail, cetak nota |
| Laporan | Laporan global, chart, performa kasir, cetak |
| Kelola Akun | Tambah, edit, hapus/nonaktifkan user |

### Kasir (Operator)
| Modul | Hak Akses |
|---|---|
| Dashboard | Statistik personal hari ini |
| Produk | Lihat stok, update stok + audit |
| Supplier | Lihat saja (read-only) |
| Barang Masuk | Input, lihat milik sendiri |
| Penjualan | Input, lihat hari ini, detail, cetak nota |
| Laporan | Laporan personal, cetak setoran |
| Riwayat | Semua riwayat transaksi sendiri |

> **Catatan:** Kasir **tidak memiliki akses** ke Kategori dan Kelola Akun.

---

## 📸 Screenshot

> *Tambahkan screenshot halaman sistem di sini*

<!-- Contoh:
### Halaman Login
![Login](screenshots/login.png)

### Dashboard Admin
![Dashboard](screenshots/dashboard_admin.png)

### Form Penjualan
![POS](screenshots/pos_form.png)

### Laporan Penjualan
![Laporan](screenshots/laporan.png)
-->

---

## 📝 Lisensi

Proyek ini dibuat untuk keperluan **Tugas Akhir** akademik dan tidak untuk distribusi komersial.

---

<p align="center">
  <strong>PT Pordjo Steelindo Perkasa</strong><br>
  <em>Sistem Manajemen Barang — Tugas Akhir 2026</em>
</p>
