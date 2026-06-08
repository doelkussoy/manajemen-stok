-- Seed file: 50 sample purchases + details
-- Run this against your db_ta database (e.g. via phpMyAdmin or mysql CLI)

SET @supplier_id = 1; -- existing sample supplier
SET @user_id = 1;     -- admin user

-- Prices for products: product 1 => 8000, product 2 => 2000

START TRANSACTION;

-- Generated 50 purchases across dates (2026-04-17 .. 2026-06-05)

-- NOTE: This file expects tables: purchases, purchase_details, products

-- Purchase 1
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260417-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 160000.00, '2026-04-17 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 20, 8000.00, 160000.00);
UPDATE products SET stok = stok + 20 WHERE id_product = 1;

-- Purchase 2
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260418-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 40000.00, '2026-04-18 10:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 20, 2000.00, 40000.00);
UPDATE products SET stok = stok + 20 WHERE id_product = 2;

-- Purchase 3
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260419-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 48000.00, '2026-04-19 11:15:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 6, 8000.00, 48000.00);
UPDATE products SET stok = stok + 6 WHERE id_product = 1;

-- Purchase 4
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260420-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 30000.00, '2026-04-20 09:45:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 15, 2000.00, 30000.00);
UPDATE products SET stok = stok + 15 WHERE id_product = 2;

-- Purchase 5
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260421-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 240000.00, '2026-04-21 08:50:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 30, 8000.00, 240000.00);
UPDATE products SET stok = stok + 30 WHERE id_product = 1;

-- Purchase 6
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260422-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 10000.00, '2026-04-22 14:10:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 5, 2000.00, 10000.00);
UPDATE products SET stok = stok + 5 WHERE id_product = 2;

-- Purchase 7
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260423-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 64000.00, '2026-04-23 13:05:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 8, 8000.00, 64000.00);
UPDATE products SET stok = stok + 8 WHERE id_product = 1;

-- Purchase 8
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260424-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 18000.00, '2026-04-24 12:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 9, 2000.00, 18000.00);
UPDATE products SET stok = stok + 9 WHERE id_product = 2;

-- Purchase 9
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260425-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 88000.00, '2026-04-25 09:20:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 11, 8000.00, 88000.00);
UPDATE products SET stok = stok + 11 WHERE id_product = 1;

-- Purchase 10
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260426-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 50000.00, '2026-04-26 10:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 25, 2000.00, 50000.00);
UPDATE products SET stok = stok + 25 WHERE id_product = 2;

-- Purchase 11
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260427-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 96000.00, '2026-04-27 11:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 12, 8000.00, 96000.00);
UPDATE products SET stok = stok + 12 WHERE id_product = 1;

-- Purchase 12
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260428-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 22000.00, '2026-04-28 09:10:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 11, 2000.00, 22000.00);
UPDATE products SET stok = stok + 11 WHERE id_product = 2;

-- Purchase 13
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260429-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 40000.00, '2026-04-29 15:20:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 5, 8000.00, 40000.00);
UPDATE products SET stok = stok + 5 WHERE id_product = 1;

-- Purchase 14
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260430-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 140000.00, '2026-04-30 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 17, 8000.00, 136000.00), (@pid, 2, 2, 2000.00, 4000.00);
UPDATE products SET stok = stok + 17 WHERE id_product = 1;
UPDATE products SET stok = stok + 2 WHERE id_product = 2;

-- Purchase 15
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260501-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 60000.00, '2026-05-01 10:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 30, 2000.00, 60000.00);
UPDATE products SET stok = stok + 30 WHERE id_product = 2;

-- Purchase 16
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260502-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 72000.00, '2026-05-02 09:15:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 9, 8000.00, 72000.00);
UPDATE products SET stok = stok + 9 WHERE id_product = 1;

-- Purchase 17
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260503-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 26000.00, '2026-05-03 11:45:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 13, 2000.00, 26000.00);
UPDATE products SET stok = stok + 13 WHERE id_product = 2;

-- Purchase 18
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260504-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 160000.00, '2026-05-04 08:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 20, 8000.00, 160000.00);
UPDATE products SET stok = stok + 20 WHERE id_product = 1;

-- Purchase 19
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260505-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 10000.00, '2026-05-05 10:10:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 5, 2000.00, 10000.00);
UPDATE products SET stok = stok + 5 WHERE id_product = 2;

-- Purchase 20
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260506-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 320000.00, '2026-05-06 12:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 40, 8000.00, 320000.00);
UPDATE products SET stok = stok + 40 WHERE id_product = 1;

-- Purchase 21
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260507-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 22000.00, '2026-05-07 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 11, 2000.00, 22000.00);
UPDATE products SET stok = stok + 11 WHERE id_product = 2;

-- Purchase 22
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260508-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 48000.00, '2026-05-08 10:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 6, 8000.00, 48000.00);
UPDATE products SET stok = stok + 6 WHERE id_product = 1;

-- Purchase 23
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260509-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 90000.00, '2026-05-09 14:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 45, 2000.00, 90000.00);
UPDATE products SET stok = stok + 45 WHERE id_product = 2;

-- Purchase 24
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260510-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 56000.00, '2026-05-10 09:20:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 7, 8000.00, 56000.00);
UPDATE products SET stok = stok + 7 WHERE id_product = 1;

-- Purchase 25
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260511-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 30000.00, '2026-05-11 11:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 15, 2000.00, 30000.00);
UPDATE products SET stok = stok + 15 WHERE id_product = 2;

-- Purchase 26
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260512-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 128000.00, '2026-05-12 08:40:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 16, 8000.00, 128000.00);
UPDATE products SET stok = stok + 16 WHERE id_product = 1;

-- Purchase 27
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260513-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 22000.00, '2026-05-13 13:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 11, 2000.00, 22000.00);
UPDATE products SET stok = stok + 11 WHERE id_product = 2;

-- Purchase 28
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260514-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 80000.00, '2026-05-14 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 10, 8000.00, 80000.00);
UPDATE products SET stok = stok + 10 WHERE id_product = 1;

-- Purchase 29
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260515-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 42000.00, '2026-05-15 10:15:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 21, 2000.00, 42000.00);
UPDATE products SET stok = stok + 21 WHERE id_product = 2;

-- Purchase 30
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260516-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 72000.00, '2026-05-16 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 9, 8000.00, 72000.00);
UPDATE products SET stok = stok + 9 WHERE id_product = 1;

-- Purchase 31
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260517-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 26000.00, '2026-05-17 08:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 13, 2000.00, 26000.00);
UPDATE products SET stok = stok + 13 WHERE id_product = 2;

-- Purchase 32
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260518-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 104000.00, '2026-05-18 11:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 13, 8000.00, 104000.00);
UPDATE products SET stok = stok + 13 WHERE id_product = 1;

-- Purchase 33
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260519-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 60000.00, '2026-05-19 09:10:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 30, 2000.00, 60000.00);
UPDATE products SET stok = stok + 30 WHERE id_product = 2;

-- Purchase 34
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260520-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 32000.00, '2026-05-20 10:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 4, 8000.00, 32000.00);
UPDATE products SET stok = stok + 4 WHERE id_product = 1;

-- Purchase 35
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260521-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 48000.00, '2026-05-21 12:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 24, 2000.00, 48000.00);
UPDATE products SET stok = stok + 24 WHERE id_product = 2;

-- Purchase 36
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260522-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 160000.00, '2026-05-22 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 20, 8000.00, 160000.00);
UPDATE products SET stok = stok + 20 WHERE id_product = 1;

-- Purchase 37
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260523-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 20000.00, '2026-05-23 14:20:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 10, 2000.00, 20000.00);
UPDATE products SET stok = stok + 10 WHERE id_product = 2;

-- Purchase 38
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260524-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 72000.00, '2026-05-24 09:50:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 9, 8000.00, 72000.00);
UPDATE products SET stok = stok + 9 WHERE id_product = 1;

-- Purchase 39
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260525-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 26000.00, '2026-05-25 11:15:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 13, 2000.00, 26000.00);
UPDATE products SET stok = stok + 13 WHERE id_product = 2;

-- Purchase 40
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260526-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 136000.00, '2026-05-26 08:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 17, 8000.00, 136000.00);
UPDATE products SET stok = stok + 17 WHERE id_product = 1;

-- Purchase 41
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260527-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 44000.00, '2026-05-27 10:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 22, 2000.00, 44000.00);
UPDATE products SET stok = stok + 22 WHERE id_product = 2;

-- Purchase 42
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260528-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 56000.00, '2026-05-28 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 7, 8000.00, 56000.00);
UPDATE products SET stok = stok + 7 WHERE id_product = 1;

-- Purchase 43
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260529-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 90000.00, '2026-05-29 12:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 45, 2000.00, 90000.00);
UPDATE products SET stok = stok + 45 WHERE id_product = 2;

-- Purchase 44
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260530-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 240000.00, '2026-05-30 09:45:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 30, 8000.00, 240000.00);
UPDATE products SET stok = stok + 30 WHERE id_product = 1;

-- Purchase 45
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260531-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 18000.00, '2026-05-31 10:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 9, 2000.00, 18000.00);
UPDATE products SET stok = stok + 9 WHERE id_product = 2;

-- Purchase 46
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260601-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 160000.00, '2026-06-01 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 20, 8000.00, 160000.00);
UPDATE products SET stok = stok + 20 WHERE id_product = 1;

-- Purchase 47
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260602-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 50000.00, '2026-06-02 11:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 25, 2000.00, 50000.00);
UPDATE products SET stok = stok + 25 WHERE id_product = 2;

-- Purchase 48
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260603-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 88000.00, '2026-06-03 09:30:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 11, 8000.00, 88000.00);
UPDATE products SET stok = stok + 11 WHERE id_product = 1;

-- Purchase 49
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260604-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 42000.00, '2026-06-04 10:20:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 2, 21, 2000.00, 42000.00);
UPDATE products SET stok = stok + 21 WHERE id_product = 2;

-- Purchase 50
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at)
VALUES ('BMK-20260605-001', @supplier_id, @user_id, 'PT. Contoh Supplier', 100000.00, '2026-06-05 09:00:00');
SET @pid = LAST_INSERT_ID();
INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES (@pid, 1, 12, 8000.00, 96000.00), (@pid, 2, 2, 2000.00, 4000.00);
UPDATE products SET stok = stok + 12 WHERE id_product = 1;
UPDATE products SET stok = stok + 2 WHERE id_product = 2;

COMMIT;

-- End of seed file
