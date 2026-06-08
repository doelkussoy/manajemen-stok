-- SQL dump for db_ta (created from project analysis)
CREATE DATABASE IF NOT EXISTS `db_ta` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_ta`;

-- Table: users
CREATE TABLE `users` (
  `id_user` INT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(100) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `nama_lengkap` VARCHAR(255) DEFAULT NULL,
  `role` VARCHAR(50) NOT NULL DEFAULT 'kasir',
  `status` VARCHAR(20) NOT NULL DEFAULT 'aktif',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: categories
CREATE TABLE `categories` (
  `id_category` INT AUTO_INCREMENT PRIMARY KEY,
  `nama_kategori` VARCHAR(150) NOT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: suppliers
CREATE TABLE `suppliers` (
  `id_supplier` INT AUTO_INCREMENT PRIMARY KEY,
  `kode_supplier` VARCHAR(50) NOT NULL UNIQUE,
  `nama_supplier` VARCHAR(255) NOT NULL,
  `alamat` TEXT DEFAULT NULL,
  `telp` VARCHAR(50) DEFAULT NULL,
  `status` VARCHAR(20) NOT NULL DEFAULT 'aktif',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: products
CREATE TABLE `products` (
  `id_product` INT AUTO_INCREMENT PRIMARY KEY,
  `id_category` INT DEFAULT NULL,
  `kode_produk` VARCHAR(100) DEFAULT NULL,
  `nama_produk` VARCHAR(255) NOT NULL,
  `satuan` VARCHAR(50) DEFAULT NULL,
  `stok` INT NOT NULL DEFAULT 0,
  `harga_beli` DECIMAL(12,2) NOT NULL DEFAULT 0,
  `harga_jual` DECIMAL(12,2) NOT NULL DEFAULT 0,
  `status` VARCHAR(20) NOT NULL DEFAULT 'aktif',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT NULL,
  FOREIGN KEY (`id_category`) REFERENCES `categories`(`id_category`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: stok_log
CREATE TABLE `stok_log` (
  `id_log` INT AUTO_INCREMENT PRIMARY KEY,
  `id_product` INT NOT NULL,
  `id_user` INT DEFAULT NULL,
  `stok_sebelum` INT DEFAULT 0,
  `stok_sesudah` INT DEFAULT 0,
  `selisih` INT DEFAULT 0,
  `keterangan` TEXT DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`id_product`) REFERENCES `products`(`id_product`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: harga_log
CREATE TABLE `harga_log` (
  `id_log` INT AUTO_INCREMENT PRIMARY KEY,
  `id_product` INT NOT NULL,
  `id_user` INT DEFAULT NULL,
  `tipe_harga` VARCHAR(100) DEFAULT NULL,
  `harga_lama` DECIMAL(12,2) DEFAULT 0,
  `harga_baru` DECIMAL(12,2) DEFAULT 0,
  `keterangan` TEXT DEFAULT NULL,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`id_product`) REFERENCES `products`(`id_product`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: purchases (header)
CREATE TABLE `purchases` (
  `id_purchase` INT AUTO_INCREMENT PRIMARY KEY,
  `no_faktur` VARCHAR(100) NOT NULL UNIQUE,
  `id_supplier` INT DEFAULT NULL,
  `id_user` INT DEFAULT NULL,
  `nama_supplier_snapshot` VARCHAR(255) DEFAULT NULL,
  `total_bayar` DECIMAL(12,2) DEFAULT 0,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME DEFAULT NULL,
  FOREIGN KEY (`id_supplier`) REFERENCES `suppliers`(`id_supplier`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: purchase_details
CREATE TABLE `purchase_details` (
  `id_detail` INT AUTO_INCREMENT PRIMARY KEY,
  `id_purchase` INT NOT NULL,
  `id_product` INT NOT NULL,
  `qty` INT NOT NULL DEFAULT 0,
  `purchase_price` DECIMAL(12,2) NOT NULL DEFAULT 0,
  `subtotal` DECIMAL(12,2) NOT NULL DEFAULT 0,
  FOREIGN KEY (`id_purchase`) REFERENCES `purchases`(`id_purchase`) ON DELETE CASCADE,
  FOREIGN KEY (`id_product`) REFERENCES `products`(`id_product`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: sales (header)
CREATE TABLE `sales` (
  `id_sale` INT AUTO_INCREMENT PRIMARY KEY,
  `kode_transaksi` VARCHAR(150) NOT NULL UNIQUE,
  `id_user` INT DEFAULT NULL,
  `nama_pelanggan` VARCHAR(255) DEFAULT NULL,
  `alamat_pelanggan` TEXT DEFAULT NULL,
  `tgl_jual` DATETIME DEFAULT CURRENT_TIMESTAMP,
  `total_harga` DECIMAL(12,2) DEFAULT 0,
  `bayar` DECIMAL(12,2) DEFAULT 0,
  `kembalian` DECIMAL(12,2) DEFAULT 0,
  `metode_pembayaran` VARCHAR(100) DEFAULT NULL,
  `nomor_referensi` VARCHAR(150) DEFAULT NULL,
  `bukti_transfer` VARCHAR(255) DEFAULT NULL,
  `status` VARCHAR(50) DEFAULT 'Lunas',
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`id_user`) REFERENCES `users`(`id_user`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table: sale_details
CREATE TABLE `sale_details` (
  `id_detail` INT AUTO_INCREMENT PRIMARY KEY,
  `id_sale` INT NOT NULL,
  `id_product` INT NOT NULL,
  `qty` INT NOT NULL DEFAULT 0,
  `harga_jual` DECIMAL(12,2) NOT NULL DEFAULT 0,
  `subtotal` DECIMAL(12,2) NOT NULL DEFAULT 0,
  FOREIGN KEY (`id_sale`) REFERENCES `sales`(`id_sale`) ON DELETE CASCADE,
  FOREIGN KEY (`id_product`) REFERENCES `products`(`id_product`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Optional migrations table used by CodeIgniter migration config
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Seed data
INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `role`, `status`) VALUES
('admin', '$2y$10$VWmWG4ijHwyQP6G8h.sfvupHkzoQAZmd7XeDRe4gSCgiXy7cR0zbC', 'Administrator', 'admin', 'aktif'),
('kasir1', '$2y$10$ieX1FUWaI./JTM7dwadsb.ZONAROYaCfzkUAi7XvbhCtBejYT9PAC', 'Kasir Satu', 'kasir', 'aktif');

INSERT INTO `categories` (`nama_kategori`) VALUES
('Makanan'),
('Minuman');

INSERT INTO `suppliers` (`kode_supplier`, `nama_supplier`, `alamat`, `telp`) VALUES
('SUP-001', 'PT. Contoh Supplier', 'Jalan Contoh No.1', '081234567890');

-- products: two sample products
INSERT INTO `products` (`id_category`, `kode_produk`, `nama_produk`, `satuan`, `stok`, `harga_beli`, `harga_jual`) VALUES
(1, 'MKN-0001', 'Nasi Goreng', 'porsi', 50, 8000.00, 15000.00),
(2, 'MNM-0001', 'Teh Manis', 'gelas', 100, 2000.00, 5000.00);

-- sample purchase (restock)
INSERT INTO `purchases` (`no_faktur`, `id_supplier`, `id_user`, `nama_supplier_snapshot`, `total_bayar`) VALUES
('BMK-20260101-001', 1, 1, 'PT. Contoh Supplier', 100000.00);
INSERT INTO `purchase_details` (`id_purchase`, `id_product`, `qty`, `purchase_price`, `subtotal`) VALUES
(1, 1, 20, 8000.00, 160000.00);

-- sample sale (transaction)
INSERT INTO `sales` (`kode_transaksi`, `id_user`, `tgl_jual`, `total_harga`, `bayar`, `kembalian`, `status`) VALUES
('TRX-20260101-001', 2, NOW(), 20000.00, 20000.00, 0.00, 'Lunas');
INSERT INTO `sale_details` (`id_sale`, `id_product`, `qty`, `harga_jual`, `subtotal`) VALUES
(1, 1, 1, 15000.00, 15000.00),
(1, 2, 1, 5000.00, 5000.00);

-- Adjust product stock according to sample data (reflecting purchase+sale)
UPDATE `products` SET `stok` = `stok` + 20 WHERE `id_product` = 1;
UPDATE `products` SET `stok` = `stok` - 1 WHERE `id_product` = 1;
UPDATE `products` SET `stok` = `stok` - 1 WHERE `id_product` = 2;
