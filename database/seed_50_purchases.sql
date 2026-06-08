-- Seed script: 50 sample purchases with details
-- Run this file against your `db_ta` database (phpMyAdmin or mysql CLI).

USE `db_ta`;

-- Supplier and product IDs used here assume the default seed in db_ta.sql:
-- supplier id 1 (PT. Contoh Supplier), products id 1 (Nasi Goreng, harga_beli 8000) and id 2 (Teh Manis, harga_beli 2000)

-- We'll insert 50 purchases dated 2026-04-17 .. 2026-06-05

SET @start_date = '2026-04-16';

-- Helper: truncate any existing temp purchases we may have added earlier with prefix 'BMK-2026'
-- (Uncomment to clean previous seeds if desired)
-- DELETE FROM purchases WHERE no_faktur LIKE 'BMK-2026%';

-- Insert 50 purchases and their details


-- Purchase 1..50

INSERT INTO purchases (no_faktur, id_supplier, id_user, nama_supplier_snapshot, total_bayar, created_at) VALUES
('BMK-20260417-001',1,1,'PT. Contoh Supplier',0,'2026-04-17 10:00:00'),
('BMK-20260418-002',1,2,'PT. Contoh Supplier',0,'2026-04-18 10:00:00'),
('BMK-20260419-003',1,1,'PT. Contoh Supplier',0,'2026-04-19 10:00:00'),
('BMK-20260420-004',1,2,'PT. Contoh Supplier',0,'2026-04-20 10:00:00'),
('BMK-20260421-005',1,1,'PT. Contoh Supplier',0,'2026-04-21 10:00:00'),
('BMK-20260422-006',1,2,'PT. Contoh Supplier',0,'2026-04-22 10:00:00'),
('BMK-20260423-007',1,1,'PT. Contoh Supplier',0,'2026-04-23 10:00:00'),
('BMK-20260424-008',1,2,'PT. Contoh Supplier',0,'2026-04-24 10:00:00'),
('BMK-20260425-009',1,1,'PT. Contoh Supplier',0,'2026-04-25 10:00:00'),
('BMK-20260426-010',1,2,'PT. Contoh Supplier',0,'2026-04-26 10:00:00'),
('BMK-20260427-011',1,1,'PT. Contoh Supplier',0,'2026-04-27 10:00:00'),
('BMK-20260428-012',1,2,'PT. Contoh Supplier',0,'2026-04-28 10:00:00'),
('BMK-20260429-013',1,1,'PT. Contoh Supplier',0,'2026-04-29 10:00:00'),
('BMK-20260430-014',1,2,'PT. Contoh Supplier',0,'2026-04-30 10:00:00'),
('BMK-20260501-015',1,1,'PT. Contoh Supplier',0,'2026-05-01 10:00:00'),
('BMK-20260502-016',1,2,'PT. Contoh Supplier',0,'2026-05-02 10:00:00'),
('BMK-20260503-017',1,1,'PT. Contoh Supplier',0,'2026-05-03 10:00:00'),
('BMK-20260504-018',1,2,'PT. Contoh Supplier',0,'2026-05-04 10:00:00'),
('BMK-20260505-019',1,1,'PT. Contoh Supplier',0,'2026-05-05 10:00:00'),
('BMK-20260506-020',1,2,'PT. Contoh Supplier',0,'2026-05-06 10:00:00'),
('BMK-20260507-021',1,1,'PT. Contoh Supplier',0,'2026-05-07 10:00:00'),
('BMK-20260508-022',1,2,'PT. Contoh Supplier',0,'2026-05-08 10:00:00'),
('BMK-20260509-023',1,1,'PT. Contoh Supplier',0,'2026-05-09 10:00:00'),
('BMK-20260510-024',1,2,'PT. Contoh Supplier',0,'2026-05-10 10:00:00'),
('BMK-20260511-025',1,1,'PT. Contoh Supplier',0,'2026-05-11 10:00:00'),
('BMK-20260512-026',1,2,'PT. Contoh Supplier',0,'2026-05-12 10:00:00'),
('BMK-20260513-027',1,1,'PT. Contoh Supplier',0,'2026-05-13 10:00:00'),
('BMK-20260514-028',1,2,'PT. Contoh Supplier',0,'2026-05-14 10:00:00'),
('BMK-20260515-029',1,1,'PT. Contoh Supplier',0,'2026-05-15 10:00:00'),
('BMK-20260516-030',1,2,'PT. Contoh Supplier',0,'2026-05-16 10:00:00'),
('BMK-20260517-031',1,1,'PT. Contoh Supplier',0,'2026-05-17 10:00:00'),
('BMK-20260518-032',1,2,'PT. Contoh Supplier',0,'2026-05-18 10:00:00'),
('BMK-20260519-033',1,1,'PT. Contoh Supplier',0,'2026-05-19 10:00:00'),
('BMK-20260520-034',1,2,'PT. Contoh Supplier',0,'2026-05-20 10:00:00'),
('BMK-20260521-035',1,1,'PT. Contoh Supplier',0,'2026-05-21 10:00:00'),
('BMK-20260522-036',1,2,'PT. Contoh Supplier',0,'2026-05-22 10:00:00'),
('BMK-20260523-037',1,1,'PT. Contoh Supplier',0,'2026-05-23 10:00:00'),
('BMK-20260524-038',1,2,'PT. Contoh Supplier',0,'2026-05-24 10:00:00'),
('BMK-20260525-039',1,1,'PT. Contoh Supplier',0,'2026-05-25 10:00:00'),
('BMK-20260526-040',1,2,'PT. Contoh Supplier',0,'2026-05-26 10:00:00'),
('BMK-20260527-041',1,1,'PT. Contoh Supplier',0,'2026-05-27 10:00:00'),
('BMK-20260528-042',1,2,'PT. Contoh Supplier',0,'2026-05-28 10:00:00'),
('BMK-20260529-043',1,1,'PT. Contoh Supplier',0,'2026-05-29 10:00:00'),
('BMK-20260530-044',1,2,'PT. Contoh Supplier',0,'2026-05-30 10:00:00'),
('BMK-20260531-045',1,1,'PT. Contoh Supplier',0,'2026-05-31 10:00:00'),
('BMK-20260601-046',1,2,'PT. Contoh Supplier',0,'2026-06-01 10:00:00'),
('BMK-20260602-047',1,1,'PT. Contoh Supplier',0,'2026-06-02 10:00:00'),
('BMK-20260603-048',1,2,'PT. Contoh Supplier',0,'2026-06-03 10:00:00'),
('BMK-20260604-049',1,1,'PT. Contoh Supplier',0,'2026-06-04 10:00:00'),
('BMK-20260605-050',1,2,'PT. Contoh Supplier',0,'2026-06-05 10:00:00');

-- Insert details for each purchase. We'll alternate products and quantities deterministically.

-- For purchases where idx % 3 == 0, insert both products; otherwise insert single product (1 or 2 alternating)

-- We'll compute qtys deterministically to avoid RAND() usage.

-- Helper function in script: not needed, we'll write explicit inserts.

-- Loop-like explicit inserts:

INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260417-001'), 1, 8, 8000.00, 8 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260418-002'), 2, 5, 2000.00, 5 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260419-003'), 1, 15, 8000.00, 15 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260420-004'), 2, 11, 2000.00, 11 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260421-005'), 1, 2, 8000.00, 2 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260422-006'), 2, 7, 2000.00, 7 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260423-007'), 1, 10, 8000.00, 10 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260424-008'), 2, 3, 2000.00, 3 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260425-009'), 1, 14, 8000.00, 14 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260426-010'), 2, 9, 2000.00, 9 * 2000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260427-011'), 1, 1, 8000.00, 1 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260428-012'), 2, 12, 2000.00, 12 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260429-013'), 1, 6, 8000.00, 6 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260430-014'), 2, 4, 2000.00, 4 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260501-015'), 1, 17, 8000.00, 17 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260502-016'), 2, 2, 2000.00, 2 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260503-017'), 1, 13, 8000.00, 13 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260504-018'), 2, 6, 2000.00, 6 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260505-019'), 1, 19, 8000.00, 19 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260506-020'), 2, 8, 2000.00, 8 * 2000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260507-021'), 1, 5, 8000.00, 5 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260508-022'), 2, 10, 2000.00, 10 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260509-023'), 1, 16, 8000.00, 16 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260510-024'), 2, 1, 2000.00, 1 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260511-025'), 1, 3, 8000.00, 3 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260512-026'), 2, 14, 2000.00, 14 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260513-027'), 1, 7, 8000.00, 7 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260514-028'), 2, 13, 2000.00, 13 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260515-029'), 1, 11, 8000.00, 11 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260516-030'), 2, 15, 2000.00, 15 * 2000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260517-031'), 1, 9, 8000.00, 9 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260518-032'), 2, 18, 2000.00, 18 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260519-033'), 1, 4, 8000.00, 4 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260520-034'), 2, 16, 2000.00, 16 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260521-035'), 1, 12, 8000.00, 12 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260522-036'), 2, 9, 2000.00, 9 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260523-037'), 1, 2, 8000.00, 2 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260524-038'), 2, 7, 2000.00, 7 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260525-039'), 1, 14, 8000.00, 14 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260526-040'), 2, 5, 2000.00, 5 * 2000.00),

((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260527-041'), 1, 6, 8000.00, 6 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260528-042'), 2, 11, 2000.00, 11 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260529-043'), 1, 17, 8000.00, 17 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260530-044'), 2, 3, 2000.00, 3 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260531-045'), 1, 13, 8000.00, 13 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260601-046'), 2, 8, 2000.00, 8 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260602-047'), 1, 10, 8000.00, 10 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260603-048'), 2, 12, 2000.00, 12 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260604-049'), 1, 4, 8000.00, 4 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260605-050'), 2, 15, 2000.00, 15 * 2000.00);

-- For entries where idx % 3 == 0, also add the other product to create multiple-item purchases

INSERT INTO purchase_details (id_purchase, id_product, qty, purchase_price, subtotal) VALUES
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260419-003'), 2, 4, 2000.00, 4 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260422-006'), 1, 6, 8000.00, 6 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260425-009'), 2, 2, 2000.00, 2 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260428-012'), 1, 3, 8000.00, 3 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260501-015'), 2, 5, 2000.00, 5 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260504-018'), 1, 2, 8000.00, 2 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260507-021'), 2, 3, 2000.00, 3 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260510-024'), 1, 4, 8000.00, 4 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260513-027'), 2, 6, 2000.00, 6 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260516-030'), 1, 1, 8000.00, 1 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260519-033'), 2, 5, 2000.00, 5 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260522-036'), 1, 2, 8000.00, 2 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260525-039'), 2, 3, 2000.00, 3 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260528-042'), 1, 5, 8000.00, 5 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260531-045'), 2, 2, 2000.00, 2 * 2000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260603-048'), 1, 3, 8000.00, 3 * 8000.00),
((SELECT id_purchase FROM purchases WHERE no_faktur='BMK-20260605-050'), 1, 4, 8000.00, 4 * 8000.00);

-- Recalculate total_bayar for all new BMK-2026 purchases
UPDATE purchases p
SET p.total_bayar = (
  SELECT COALESCE(SUM(pd.subtotal),0) FROM purchase_details pd WHERE pd.id_purchase = p.id_purchase
)
WHERE p.no_faktur LIKE 'BMK-2026%';

-- Update product stock based on inserted details
UPDATE products prod
SET prod.stok = prod.stok + (
  SELECT COALESCE(SUM(pd.qty),0) FROM purchase_details pd WHERE pd.id_product = prod.id_product
);

-- Done
SELECT 'Seed complete' AS msg;
