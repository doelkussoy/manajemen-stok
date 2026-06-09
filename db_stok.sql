-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2026 at 11:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stok`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `nama_kategori` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(3, 'Keramik Lantai 40x40', '2026-06-09 15:20:53', NULL),
(4, 'Keramik Lantai 50x50', '2026-06-09 15:20:53', NULL),
(5, 'Keramik Dinding 25x40', '2026-06-09 15:20:53', NULL),
(6, 'Granit 60x60', '2026-06-09 15:20:53', NULL),
(7, 'Keramik Kasar (Rustic)', '2026-06-09 15:20:53', NULL),
(8, 'Keramik Motif Kayu', '2026-06-09 15:20:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `harga_log`
--

CREATE TABLE `harga_log` (
  `id_log` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tipe_harga` varchar(100) DEFAULT NULL,
  `harga_lama` decimal(12,2) DEFAULT 0.00,
  `harga_baru` decimal(12,2) DEFAULT 0.00,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `kode_produk` varchar(100) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `harga_beli` decimal(12,2) NOT NULL DEFAULT 0.00,
  `harga_jual` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(20) NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `id_category`, `kode_produk`, `nama_produk`, `satuan`, `stok`, `harga_beli`, `harga_jual`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 'ROM-001', 'Roman dMilan White 40x40', 'Dus', 150, 45000.00, 52000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(4, 3, 'MUL-001', 'Mulia Accura Beige 40x40', 'Dus', 200, 42000.00, 48500.00, 'aktif', '2026-06-09 15:21:50', NULL),
(5, 4, 'PLA-001', 'Platinum Amazon Brown 50x50', 'Dus', 120, 55000.00, 65000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(6, 5, 'ROM-002', 'Roman dTuscany 25x40', 'Dus', 80, 58000.00, 68000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(7, 5, 'MUL-002', 'Mulia Neo Wall Tile 25x40', 'Dus', 300, 40000.00, 47000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(8, 6, 'GRA-001', 'Granito Salsa Crystal White 60x60', 'Dus', 50, 120000.00, 145000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(9, 6, 'GRA-002', 'Granito Black Galaxy 60x60', 'Dus', 40, 135000.00, 160000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(10, 7, 'PLA-002', 'Asia Tile Alpha Grey (Kasar)', 'Dus', 180, 43000.00, 50000.00, 'aktif', '2026-06-09 15:21:50', NULL),
(11, 8, 'ROM-003', 'Roman dTimber Oak 15x60', 'Dus', 60, 75000.00, 88000.00, 'aktif', '2026-06-09 15:21:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id_purchase` int(11) NOT NULL,
  `no_faktur` varchar(100) NOT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_supplier_snapshot` varchar(255) DEFAULT NULL,
  `total_bayar` decimal(12,2) DEFAULT 0.00,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id_detail` int(11) NOT NULL,
  `id_purchase` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `purchase_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id_sale` int(11) NOT NULL,
  `kode_transaksi` varchar(150) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `alamat_pelanggan` text DEFAULT NULL,
  `tgl_jual` datetime DEFAULT current_timestamp(),
  `total_harga` decimal(12,2) DEFAULT 0.00,
  `bayar` decimal(12,2) DEFAULT 0.00,
  `kembalian` decimal(12,2) DEFAULT 0.00,
  `metode_pembayaran` varchar(100) DEFAULT NULL,
  `nomor_referensi` varchar(150) DEFAULT NULL,
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Lunas',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id_sale`, `kode_transaksi`, `id_user`, `nama_pelanggan`, `alamat_pelanggan`, `tgl_jual`, `total_harga`, `bayar`, `kembalian`, `metode_pembayaran`, `nomor_referensi`, `bukti_transfer`, `status`, `created_at`) VALUES
(3, 'TRX-DUMMY-2829', 1, 'Pelanggan Demo', NULL, '2026-06-05 04:21:50', 480000.00, 500000.00, 20000.00, NULL, NULL, NULL, 'Lunas', '2026-06-05 04:21:50'),
(4, 'TRX-DUMMY-1531', 1, 'Pelanggan Demo', NULL, '2026-06-04 00:21:50', 515000.00, 550000.00, 35000.00, NULL, NULL, NULL, 'Lunas', '2026-06-04 00:21:50'),
(5, 'TRX-DUMMY-8290', 1, 'Pelanggan Demo', NULL, '2026-06-09 04:21:50', 1430000.00, 1450000.00, 20000.00, NULL, NULL, NULL, 'Lunas', '2026-06-09 04:21:50'),
(6, 'TRX-DUMMY-2318', 1, 'Pelanggan Demo', NULL, '2026-06-04 06:21:50', 1819000.00, 1850000.00, 31000.00, NULL, NULL, NULL, 'Lunas', '2026-06-04 06:21:50'),
(7, 'TRX-DUMMY-2640', 1, 'Pelanggan Demo', NULL, '2026-06-05 02:21:51', 616000.00, 650000.00, 34000.00, NULL, NULL, NULL, 'Lunas', '2026-06-05 02:21:51'),
(8, 'TRX-DUMMY-8648', 1, 'Pelanggan Demo', NULL, '2026-06-07 06:21:51', 1385000.00, 1400000.00, 15000.00, NULL, NULL, NULL, 'Lunas', '2026-06-07 06:21:51'),
(9, 'TRX-DUMMY-5579', 1, 'Pelanggan Demo', NULL, '2026-06-08 02:21:51', 990000.00, 1000000.00, 10000.00, NULL, NULL, NULL, 'Lunas', '2026-06-08 02:21:51'),
(10, 'TRX-DUMMY-5966', 1, 'Pelanggan Demo', NULL, '2026-06-05 04:21:51', 339500.00, 350000.00, 10500.00, NULL, NULL, NULL, 'Lunas', '2026-06-05 04:21:51'),
(11, 'TRX-DUMMY-1108', 1, 'Pelanggan Demo', NULL, '2026-06-10 01:21:51', 339500.00, 350000.00, 10500.00, NULL, NULL, NULL, 'Lunas', '2026-06-10 01:21:51'),
(12, 'TRX-DUMMY-9629', 1, 'Pelanggan Demo', NULL, '2026-06-08 06:21:51', 1601000.00, 1650000.00, 49000.00, NULL, NULL, NULL, 'Lunas', '2026-06-08 06:21:51'),
(13, 'TRX-DUMMY-1817', 1, 'Pelanggan Demo', NULL, '2026-06-10 05:21:51', 816000.00, 850000.00, 34000.00, NULL, NULL, NULL, 'Lunas', '2026-06-10 05:21:51'),
(14, 'TRX-DUMMY-7811', 1, 'Pelanggan Demo', NULL, '2026-06-04 23:21:51', 136000.00, 150000.00, 14000.00, NULL, NULL, NULL, 'Lunas', '2026-06-04 23:21:51'),
(15, 'TRX-DUMMY-3497', 1, 'Pelanggan Demo', NULL, '2026-06-04 06:21:51', 1242000.00, 1250000.00, 8000.00, NULL, NULL, NULL, 'Lunas', '2026-06-04 06:21:51'),
(16, 'TRX-DUMMY-1814', 1, 'Pelanggan Demo', NULL, '2026-06-07 23:21:51', 264000.00, 300000.00, 36000.00, NULL, NULL, NULL, 'Lunas', '2026-06-07 23:21:51'),
(17, 'TRX-DUMMY-8130', 1, 'Pelanggan Demo', NULL, '2026-06-06 04:21:51', 94000.00, 100000.00, 6000.00, NULL, NULL, NULL, 'Lunas', '2026-06-06 04:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `sale_details`
--

CREATE TABLE `sale_details` (
  `id_detail` int(11) NOT NULL,
  `id_sale` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `harga_jual` decimal(12,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sale_details`
--

INSERT INTO `sale_details` (`id_detail`, `id_sale`, `id_product`, `qty`, `harga_jual`, `subtotal`) VALUES
(4, 3, 9, 3, 160000.00, 480000.00),
(5, 4, 9, 2, 160000.00, 320000.00),
(6, 4, 5, 3, 65000.00, 195000.00),
(7, 5, 10, 3, 50000.00, 150000.00),
(8, 5, 9, 8, 160000.00, 1280000.00),
(9, 6, 11, 5, 88000.00, 440000.00),
(10, 6, 3, 7, 52000.00, 364000.00),
(11, 6, 8, 7, 145000.00, 1015000.00),
(12, 7, 11, 7, 88000.00, 616000.00),
(13, 8, 9, 6, 160000.00, 960000.00),
(14, 8, 5, 5, 65000.00, 325000.00),
(15, 8, 10, 2, 50000.00, 100000.00),
(16, 9, 6, 5, 68000.00, 340000.00),
(17, 9, 5, 10, 65000.00, 650000.00),
(18, 10, 4, 7, 48500.00, 339500.00),
(19, 11, 4, 7, 48500.00, 339500.00),
(20, 12, 7, 7, 47000.00, 329000.00),
(21, 12, 11, 9, 88000.00, 792000.00),
(22, 12, 9, 3, 160000.00, 480000.00),
(23, 13, 8, 2, 145000.00, 290000.00),
(24, 13, 6, 2, 68000.00, 136000.00),
(25, 13, 5, 6, 65000.00, 390000.00),
(26, 14, 6, 2, 68000.00, 136000.00),
(27, 15, 11, 9, 88000.00, 792000.00),
(28, 15, 10, 9, 50000.00, 450000.00),
(29, 16, 11, 3, 88000.00, 264000.00),
(30, 17, 7, 2, 47000.00, 94000.00);

-- --------------------------------------------------------

--
-- Table structure for table `stok_log`
--

CREATE TABLE `stok_log` (
  `id_log` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `stok_sebelum` int(11) DEFAULT 0,
  `stok_sesudah` int(11) DEFAULT 0,
  `selisih` int(11) DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id_supplier` int(11) NOT NULL,
  `kode_supplier` varchar(50) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id_supplier`, `kode_supplier`, `nama_supplier`, `alamat`, `telp`, `status`, `created_at`, `updated_at`) VALUES
(2, 'SUP-2402', 'PT Roman Ceramics', 'Jl. Industri Keramik Raya No. 1, Jakarta', '021-1234567', 'aktif', '2026-06-09 15:21:50', NULL),
(3, 'SUP-8287', 'Mulia Ceramics', 'Kawasan Industri Cikarang Blok B', '021-9876543', 'aktif', '2026-06-09 15:21:50', NULL),
(4, 'SUP-2920', 'Platinum Ceramics', 'Jl. Raya Rungkut, Surabaya', '031-5556667', 'aktif', '2026-06-09 15:21:50', NULL),
(5, 'SUP-9109', 'Granito Tile', 'Jl. Jendral Sudirman Kav 21', '021-4443332', 'aktif', '2026-06-09 15:21:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'kasir',
  `status` varchar(20) NOT NULL DEFAULT 'aktif',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$IMoY2iUgekGyGNpxI8ngGeQ6WywjFT2xPH1Mo90RHvBk5BlSbeW5y', 'Administrator', 'admin', 'aktif', '2026-06-04 10:05:55', NULL),
(2, 'kasir1', '$2y$10$9wlu3/QAeaM64NcXTK87ZObc59N119XB1eNACYXbfYXzyF06OgvgG', 'Kasir Satu', 'kasir', 'aktif', '2026-06-04 10:05:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `harga_log`
--
ALTER TABLE `harga_log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id_purchase`),
  ADD UNIQUE KEY `no_faktur` (`no_faktur`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_purchase` (`id_purchase`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sale`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_sale` (`id_sale`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `stok_log`
--
ALTER TABLE `stok_log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_supplier`),
  ADD UNIQUE KEY `kode_supplier` (`kode_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `harga_log`
--
ALTER TABLE `harga_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id_purchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stok_log`
--
ALTER TABLE `stok_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `harga_log`
--
ALTER TABLE `harga_log`
  ADD CONSTRAINT `harga_log_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE SET NULL;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id_supplier`) ON DELETE SET NULL;

--
-- Constraints for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_ibfk_1` FOREIGN KEY (`id_purchase`) REFERENCES `purchases` (`id_purchase`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_details_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_ibfk_1` FOREIGN KEY (`id_sale`) REFERENCES `sales` (`id_sale`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_details_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);

--
-- Constraints for table `stok_log`
--
ALTER TABLE `stok_log`
  ADD CONSTRAINT `stok_log_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
