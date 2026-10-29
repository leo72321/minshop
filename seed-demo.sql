-- seed-demo.sql — 30 demo products across 6 categories (no images — they show the placeholder).
-- Taiwanese fork: demo names/descriptions are in Traditional Chinese;
-- illustrative sample prices are in TWD minor units, with
-- currency stamped on each INSERT (no existing product is ever rewritten).
-- Prices are demo estimates, not live USD/TWD FX conversions.
-- Local dev demo data (separate from seed.sql). Re-runnable: every insert is
-- guarded so a second run is a no-op. Add product images later in Admin → Products.
--   wrangler d1 execute minshop-db --local --file=./seed-demo.sql

-- ── Categories ───────────────────────────────────────────────────────────────
INSERT INTO categories (name, slug) SELECT '服飾配件','apparel'         WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='apparel');
INSERT INTO categories (name, slug) SELECT '廚房用品','kitchen'         WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='kitchen');
INSERT INTO categories (name, slug) SELECT '戶外露營','outdoors'       WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='outdoors');
INSERT INTO categories (name, slug) SELECT '3C 電子','electronics' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='electronics');
INSERT INTO categories (name, slug) SELECT '居家生活','home'      WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='home');
INSERT INTO categories (name, slug) SELECT '文具用品','stationery'   WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='stationery');

-- ── Products (no images — Admin → Products can add them) ────────────────────
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '美麗諾羊毛毛帽','merino-wool-beanie','柔軟保暖的美麗諾羊毛毛帽，戴久也不容易變形。',96000,60,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='merino-wool-beanie');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '厚磅帆布托特包','canvas-tote-bag','厚磅棉帆布製成，提把加強縫製，適合日常使用。',72000,120,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='canvas-tote-bag');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '有機棉短袖 T 恤','organic-cotton-tee','透氣舒適的有機棉短袖，版型寬鬆好搭配。',84000,90,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='organic-cotton-tee');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '亞麻長袖襯衫','linen-button-up-shirt','輕盈透氣的亞麻襯衫，適合溫暖天氣穿著。',204000,40,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='linen-button-up-shirt');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '美麗諾羊毛長襪（三雙組）','wool-crew-socks','柔軟有緩衝的羊毛長襪，一組三雙。',66000,150,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='wool-crew-socks');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '鑄鐵平底鍋','cast-iron-skillet','10 吋鑄鐵平底鍋，出廠前已完成基本開鍋處理。',135000,35,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='cast-iron-skillet');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '陶瓷手沖咖啡組','pour-over-coffee-set','陶瓷濾杯搭配分享壺，適合在家沖煮手沖咖啡。',162000,25,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='pour-over-coffee-set');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '相思木砧板','acacia-cutting-board','相思木端面砧板，質地耐用且對刀刃友善。',114000,50,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='acacia-cutting-board');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '雙層不鏽鋼法式濾壓壺','stainless-french-press','雙層不鏽鋼壺身，沖泡咖啡時有助保溫。',126000,30,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='stainless-french-press');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '霧黑不鏽鋼餐具組','matte-flatware-set','16 件式霧黑不鏽鋼餐具組，風格簡約。',228000,20,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='matte-flatware-set');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '真空保溫水壺','insulated-water-bottle','真空隔熱設計，標示可保冷 24 小時、保溫 12 小時。',102000,100,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='insulated-water-bottle');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '輕量可收納羽絨外套','packable-down-jacket','輕量羽絨外套，可折疊收進隨身收納袋。',387000,28,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='packable-down-jacket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '20L 健行背包','trail-daypack','20 公升輕量背包，設有水袋收納空間。',267000,22,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='trail-daypack');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '琺瑯露營杯','enamel-camp-mug','經典斑點琺瑯杯，適合戶外露營使用。',48000,200,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='enamel-camp-mug');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '美麗諾羊毛健行襪','merino-hiking-socks','緩衝設計的美麗諾羊毛健行襪，減少長時間行走的不適。',78000,80,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='merino-hiking-socks');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '真無線藍牙耳機','wireless-earbuds','附充電盒的真無線藍牙耳機。',297000,45,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='wireless-earbuds');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '竹紋無線充電盤','bamboo-wireless-charger','竹紋外觀的 Qi 無線充電盤，適合放在桌面。',117000,60,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='bamboo-wireless-charger');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '75% 機械式鍵盤','mechanical-keyboard','75% 精簡配置，支援熱插拔軸體的機械式鍵盤。',357000,18,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='mechanical-keyboard');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '攜帶式藍牙喇叭','bluetooth-speaker','小巧防潑水的藍牙喇叭，方便隨身攜帶。',237000,33,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='bluetooth-speaker');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'USB-C 七合一擴充器','usb-c-desk-hub','適用於筆電的 USB-C 七合一連接埠擴充器。',147000,40,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='usb-c-desk-hub');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '亞麻沙發毯','linen-throw-blanket','經過水洗處理的亞麻毯，適合搭配沙發使用。',216000,30,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='linen-throw-blanket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '陶瓷桌燈','ceramic-table-lamp','手工上釉陶瓷燈座，搭配亞麻質感燈罩。',264000,15,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='ceramic-table-lamp');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '大豆香氛蠟燭','soy-candle','手工灌製的大豆蠟蠟燭，帶有雪松與琥珀香調。',72000,110,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='soy-candle');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '海草編織收納籃','seagrass-basket','以海草手工編織而成的居家收納籃。',132000,25,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='seagrass-basket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '霧面陶製花盆','stoneware-plant-pot','霧面陶製花盆，底部設有排水孔。',87000,70,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='stoneware-plant-pot');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '真皮可替換內頁筆記本','leather-notebook','全粒面真皮封面，內頁可補充替換。',84000,90,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='leather-notebook');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '黃銅細尖鋼筆','brass-fountain-pen','實心黃銅筆身，搭配細字筆尖。',174000,35,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='brass-fountain-pen');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '再生紙便利貼組','sticky-notes-set','再生紙製便利貼，一組六本。',36000,200,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='sticky-notes-set');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '胡桃木桌面收納盒','walnut-desk-organizer','胡桃木製桌面收納盒，可放置筆與迴紋針。',156000,24,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='walnut-desk-organizer');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT '亞麻布精裝手帳','linen-hardcover-journal','亞麻布封面精裝筆記本，內頁採點陣格式。',102000,65,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='linen-hardcover-journal');

-- ── Product ↔ category links ─────────────────────────────────────────────────
INSERT INTO product_categories (product_id, category_id)
SELECT p.id, c.id FROM products p JOIN categories c
WHERE c.slug = CASE p.slug
  WHEN 'merino-wool-beanie' THEN 'apparel'   WHEN 'canvas-tote-bag' THEN 'apparel'
  WHEN 'organic-cotton-tee' THEN 'apparel'   WHEN 'linen-button-up-shirt' THEN 'apparel'
  WHEN 'wool-crew-socks' THEN 'apparel'
  WHEN 'cast-iron-skillet' THEN 'kitchen'    WHEN 'pour-over-coffee-set' THEN 'kitchen'
  WHEN 'acacia-cutting-board' THEN 'kitchen' WHEN 'stainless-french-press' THEN 'kitchen'
  WHEN 'matte-flatware-set' THEN 'kitchen'
  WHEN 'insulated-water-bottle' THEN 'outdoors' WHEN 'packable-down-jacket' THEN 'outdoors'
  WHEN 'trail-daypack' THEN 'outdoors'       WHEN 'enamel-camp-mug' THEN 'outdoors'
  WHEN 'merino-hiking-socks' THEN 'outdoors'
  WHEN 'wireless-earbuds' THEN 'electronics' WHEN 'bamboo-wireless-charger' THEN 'electronics'
  WHEN 'mechanical-keyboard' THEN 'electronics' WHEN 'bluetooth-speaker' THEN 'electronics'
  WHEN 'usb-c-desk-hub' THEN 'electronics'
  WHEN 'linen-throw-blanket' THEN 'home'     WHEN 'ceramic-table-lamp' THEN 'home'
  WHEN 'soy-candle' THEN 'home'              WHEN 'seagrass-basket' THEN 'home'
  WHEN 'stoneware-plant-pot' THEN 'home'
  WHEN 'leather-notebook' THEN 'stationery'  WHEN 'brass-fountain-pen' THEN 'stationery'
  WHEN 'sticky-notes-set' THEN 'stationery'  WHEN 'walnut-desk-organizer' THEN 'stationery'
  WHEN 'linen-hardcover-journal' THEN 'stationery'
END
AND NOT EXISTS (SELECT 1 FROM product_categories pc WHERE pc.product_id = p.id AND pc.category_id = c.id);

-- Fixture normalization: give every seeded row a valid public_id so the
-- public serializers (which refuse to emit rows without one) work out of the
-- box. Hex chars are a subset of the Crockford base32 alphabet, so
-- 10 hex chars is a valid token. Real production data is backfilled by
-- scripts/backfill-public-ids.mjs with the Web Crypto generator instead.
UPDATE products         SET public_id = 'prod_' || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE product_variants SET public_id = 'var_'  || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE product_extras   SET public_id = 'xtra_' || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE categories       SET public_id = 'cat_'  || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE pages            SET public_id = 'page_' || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE media            SET public_id = 'med_'  || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE product_images   SET public_id = 'pimg_' || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
UPDATE menu_items       SET public_id = 'nav_'  || lower(substr(hex(randomblob(10)),1,10)) WHERE public_id IS NULL;
