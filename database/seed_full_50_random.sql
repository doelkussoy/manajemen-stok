-- Full seed: add suppliers, products, and 50 purchase transactions with varied prices
-- Run: mysql -u root -p db_ta < seed_full_50_random.sql

USE `db_ta`;

-- Add additional suppliers
INSERT INTO suppliers (kode_supplier, nama_supplier, alamat, telp)
VALUES
('SUP-002','CV. Sumber Bahan','Jl. Industri No.3','081200000002'),
('SUP-003','UD. Bahan Makmur','Jl. Sidodadi No.5','081200000003'),
('SUP-004','PT. Bumi Segar','Jl. Merdeka No.7','081200000004');

-- Add additional products (terser, variasi harga)
INSERT INTO categories (nama_kategori) VALUES ('Bahan Baku'), ('Kemasan');

INSERT INTO products (id_category, kode_produk, nama_produk, satuan, stok, harga_beli, harga_jual)
VALUES
(3, 'BB-0001', 'Tepung Terigu Premium', 'kg', 100, 12000.00, 18000.00),
(3, 'BB-0002', 'Gula Pasir Lokal', 'kg', 200, 9000.00, 13000.00),
(3, 'BB-0003', 'Minyak Goreng 1L', 'pcs', 150, 14000.00, 20000.00),
(4, 'KM-0001', 'Plastik Kemasan Kecil', 'pcs', 500, 150.00, 250.00),
(4, 'KM-0002', 'Kotak Kardus 30x30', 'pcs', 300, 2500.00, 4000.00),
(3, 'BB-0004', 'Bumbu Instan 100g', 'pcs', 400, 3000.00, 6000.00),
(3, 'BB-0005', 'Ragi Instan 11g', 'pcs', 250, 1500.00, 3000.00),
(3, 'BB-0006', 'Susu Bubuk 1kg', 'pcs', 80, 60000.00, 90000.00);

-- Ensure at least suppliers/products exist

-- Create 50 purchases across a date range with varied products and prices.
-- We'll create deterministic variety (no stored procedures) using explicit inserts.

-- For simplicity we use supplier ids 1..4 and user id 1

-- PURCHASES (50 entries)
INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at) VALUES
('BMK-20260410-001',1,1,'PT. Contoh Supplier',0,'2026-04-10 08:30:00'),
('BMK-20260411-002',2,1,'CV. Sumber Bahan',0,'2026-04-11 09:10:00'),
('BMK-20260412-003',3,1,'UD. Bahan Makmur',0,'2026-04-12 10:05:00'),
('BMK-20260413-004',4,1,'PT. Bumi Segar',0,'2026-04-13 11:00:00'),
('BMK-20260414-005',1,1,'PT. Contoh Supplier',0,'2026-04-14 09:30:00'),
('BMK-20260415-006',2,1,'CV. Sumber Bahan',0,'2026-04-15 10:00:00'),
('BMK-20260416-007',3,1,'UD. Bahan Makmur',0,'2026-04-16 08:45:00'),
('BMK-20260417-008',4,1,'PT. Bumi Segar',0,'2026-04-17 14:20:00'),
('BMK-20260418-009',1,1,'PT. Contoh Supplier',0,'2026-04-18 09:00:00'),
('BMK-20260419-010',2,1,'CV. Sumber Bahan',0,'2026-04-19 09:30:00'),
('BMK-20260420-011',3,1,'UD. Bahan Makmur',0,'2026-04-20 10:20:00'),
('BMK-20260421-012',4,1,'PT. Bumi Segar',0,'2026-04-21 11:10:00'),
('BMK-20260422-013',1,1,'PT. Contoh Supplier',0,'2026-04-22 12:00:00'),
('BMK-20260423-014',2,1,'CV. Sumber Bahan',0,'2026-04-23 13:00:00'),
('BMK-20260424-015',3,1,'UD. Bahan Makmur',0,'2026-04-24 08:30:00'),
('BMK-20260425-016',4,1,'PT. Bumi Segar',0,'2026-04-25 09:30:00'),
('BMK-20260426-017',1,1,'PT. Contoh Supplier',0,'2026-04-26 10:30:00'),
('BMK-20260427-018',2,1,'CV. Sumber Bahan',0,'2026-04-27 11:30:00'),
('BMK-20260428-019',3,1,'UD. Bahan Makmur',0,'2026-04-28 12:30:00'),
('BMK-20260429-020',4,1,'PT. Bumi Segar',0,'2026-04-29 13:30:00'),
('BMK-20260430-021',1,1,'PT. Contoh Supplier',0,'2026-04-30 08:00:00'),
('BMK-20260501-022',2,1,'CV. Sumber Bahan',0,'2026-05-01 09:00:00'),
('BMK-20260502-023',3,1,'UD. Bahan Makmur',0,'2026-05-02 10:00:00'),
('BMK-20260503-024',4,1,'PT. Bumi Segar',0,'2026-05-03 11:00:00'),
('BMK-20260504-025',1,1,'PT. Contoh Supplier',0,'2026-05-04 12:00:00'),
('BMK-20260505-026',2,1,'CV. Sumber Bahan',0,'2026-05-05 08:15:00'),
('BMK-20260506-027',3,1,'UD. Bahan Makmur',0,'2026-05-06 09:40:00'),
('BMK-20260507-028',4,1,'PT. Bumi Segar',0,'2026-05-07 10:10:00'),
('BMK-20260508-029',1,1,'PT. Contoh Supplier',0,'2026-05-08 11:20:00'),
('BMK-20260509-030',2,1,'CV. Sumber Bahan',0,'2026-05-09 12:25:00'),
('BMK-20260510-031',3,1,'UD. Bahan Makmur',0,'2026-05-10 13:30:00'),
('BMK-20260511-032',4,1,'PT. Bumi Segar',0,'2026-05-11 14:00:00'),
('BMK-20260512-033',1,1,'PT. Contoh Supplier',0,'2026-05-12 09:00:00'),
('BMK-20260513-034',2,1,'CV. Sumber Bahan',0,'2026-05-13 10:30:00'),
('BMK-20260514-035',3,1,'UD. Bahan Makmur',0,'2026-05-14 11:45:00'),
('BMK-20260515-036',4,1,'PT. Bumi Segar',0,'2026-05-15 08:50:00'),
('BMK-20260516-037',1,1,'PT. Contoh Supplier',0,'2026-05-16 09:15:00'),
('BMK-20260517-038',2,1,'CV. Sumber Bahan',0,'2026-05-17 10:10:00'),
('BMK-20260518-039',3,1,'UD. Bahan Makmur',0,'2026-05-18 11:00:00'),
('BMK-20260519-040',4,1,'PT. Bumi Segar',0,'2026-05-19 12:00:00'),
('BMK-20260520-041',1,1,'PT. Contoh Supplier',0,'2026-05-20 09:40:00'),
('BMK-20260521-042',2,1,'CV. Sumber Bahan',0,'2026-05-21 10:20:00'),
('BMK-20260522-043',3,1,'UD. Bahan Makmur',0,'2026-05-22 11:10:00'),
('BMK-20260523-044',4,1,'PT. Bumi Segar',0,'2026-05-23 12:05:00'),
('BMK-20260524-045',1,1,'PT. Contoh Supplier',0,'2026-05-24 13:00:00'),
('BMK-20260525-046',2,1,'CV. Sumber Bahan',0,'2026-05-25 09:20:00'),
('BMK-20260526-047',3,1,'UD. Bahan Makmur',0,'2026-05-26 10:30:00'),
('BMK-20260527-048',4,1,'PT. Bumi Segar',0,'2026-05-27 11:40:00'),
('BMK-20260528-049',1,1,'PT. Contoh Supplier',0,'2026-05-28 12:50:00'),
('BMK-20260529-050',2,1,'CV. Sumber Bahan',0,'2026-05-29 08:30:00');

-- Now insert purchase details with variety. We will mix products 1..10 (existing + added)

-- Map of product ids used in this project (verify with SELECT id_product,nama_produk FROM products; if different adjust)
-- We'll insert one or two detail rows per purchase to mix single-item and multi-item purchases

INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260410-001'), 1, 10, 8000.00, 80000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260411-002'), 3, 5, 12000.00, 60000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260412-003'), 4, 8, 9000.00, 72000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260413-004'), 5, 12, 14000.00, 168000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260414-005'), 6, 50, 150.00, 7500.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260415-006'), 7, 20, 2500.00, 50000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260416-007'), 8, 3, 3000.00, 9000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260417-008'), 9, 100, 150.00, 15000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260418-009'), 10, 2, 60000.00, 120000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260419-010'), 1, 5, 8200.00, 41000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260420-011'), 2, 30, 2000.00, 60000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260421-012'), 3, 7, 11800.00, 82600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260422-013'), 4, 6, 9500.00, 57000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260423-014'), 5, 20, 13800.00, 276000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260424-015'), 6, 200, 160.00, 32000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260425-016'), 7, 15, 2600.00, 39000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260426-017'), 8, 4, 3100.00, 12400.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260427-018'), 9, 120, 155.00, 18600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260428-019'), 10, 1, 61000.00, 61000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260429-020'), 1, 9, 8000.00, 72000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260430-021'), 2, 18, 1950.00, 35100.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260501-022'), 3, 11, 12100.00, 133100.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260502-023'), 4, 7, 9200.00, 64400.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260503-024'), 5, 25, 13500.00, 337500.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260504-025'), 6, 80, 170.00, 13600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260505-026'), 7, 9, 2550.00, 22950.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260506-027'), 8, 2, 64000.00, 128000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260507-028'), 9, 60, 145.00, 8700.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260508-029'), 10, 3, 60500.00, 181500.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260509-030'), 1, 7, 8100.00, 56700.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260510-031'), 2, 14, 2050.00, 28700.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260511-032'), 3, 6, 11900.00, 71400.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260512-033'), 4, 10, 9300.00, 93000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260513-034'), 5, 30, 13700.00, 411000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260514-035'), 6, 120, 180.00, 21600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260515-036'), 7, 11, 2700.00, 29700.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260516-037'), 8, 1, 62000.00, 62000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260517-038'), 9, 80, 160.00, 12800.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260518-039'), 10, 4, 59000.00, 236000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260519-040'), 1, 20, 8000.00, 160000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260520-041'), 2, 22, 1980.00, 43560.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260521-042'), 3, 15, 12200.00, 183000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260522-043'), 4, 9, 9400.00, 84600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260523-044'), 5, 16, 13900.00, 222400.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260524-045'), 6, 40, 165.00, 6600.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260525-046'), 7, 13, 2600.00, 33800.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260526-047'), 8, 5, 61000.00, 305000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260527-048'), 9, 30, 150.00, 4500.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260528-049'), 10, 6, 60000.00, 360000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260529-050'), 1, 18, 8000.00, 144000.00);

-- Recalculate totals
UPDATE purchases p SET p.total_bayar = (
  SELECT COALESCE(SUM(pd.subtotal),0) FROM purchase_details pd WHERE pd.id_purchase = p.id_purchase
) WHERE p.no_faktur LIKE 'BMK-2026%';

-- Update product stock
UPDATE products prod SET prod.stok = prod.stok + (
  SELECT COALESCE(SUM(pd.qty),0) FROM purchase_details pd WHERE pd.id_product = prod.id_product
);

SELECT 'Seed full (suppliers+products+50 purchases) applied' AS msg;
