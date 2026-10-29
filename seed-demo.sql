-- seed-demo.sql — 30 demo products across 6 categories (no images — they show the placeholder).
-- Taiwanese fork: illustrative sample prices are in TWD minor units, with
-- currency stamped on each INSERT (no existing product is ever rewritten).
-- Prices are demo estimates, not live USD/TWD FX conversions.
-- Local dev demo data (separate from seed.sql). Re-runnable: every insert is
-- guarded so a second run is a no-op. Add product images later in Admin → Products.
--   wrangler d1 execute minshop-db --local --file=./seed-demo.sql

-- ── Categories ───────────────────────────────────────────────────────────────
INSERT INTO categories (name, slug) SELECT 'Apparel','apparel'         WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='apparel');
INSERT INTO categories (name, slug) SELECT 'Kitchen','kitchen'         WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='kitchen');
INSERT INTO categories (name, slug) SELECT 'Outdoors','outdoors'       WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='outdoors');
INSERT INTO categories (name, slug) SELECT 'Electronics','electronics' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='electronics');
INSERT INTO categories (name, slug) SELECT 'Home & Living','home'      WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='home');
INSERT INTO categories (name, slug) SELECT 'Stationery','stationery'   WHERE NOT EXISTS (SELECT 1 FROM categories WHERE slug='stationery');

-- ── Products (no images — Admin → Products can add them) ────────────────────
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Merino Wool Beanie','merino-wool-beanie','A soft, warm merino wool beanie that holds its shape.',96000,60,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='merino-wool-beanie');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Canvas Tote Bag','canvas-tote-bag','Heavyweight cotton canvas tote with reinforced straps.',72000,120,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='canvas-tote-bag');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Organic Cotton Tee','organic-cotton-tee','A breathable organic cotton t-shirt with a relaxed fit.',84000,90,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='organic-cotton-tee');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Linen Button-Up Shirt','linen-button-up-shirt','Lightweight linen shirt for warm days.',204000,40,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='linen-button-up-shirt');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Wool Crew Socks (3-Pack)','wool-crew-socks','Cushioned merino crew socks, three pairs.',66000,150,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='wool-crew-socks');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Cast Iron Skillet','cast-iron-skillet','Pre-seasoned 10-inch cast iron skillet.',135000,35,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='cast-iron-skillet');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Ceramic Pour-Over Coffee Set','pour-over-coffee-set','Ceramic dripper and carafe for pour-over coffee.',162000,25,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='pour-over-coffee-set');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Acacia Wood Cutting Board','acacia-cutting-board','End-grain acacia board that''s kind to knives.',114000,50,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='acacia-cutting-board');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Stainless Steel French Press','stainless-french-press','Double-wall steel French press, keeps coffee hot.',126000,30,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='stainless-french-press');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Matte Black Flatware Set','matte-flatware-set','16-piece matte black stainless flatware set.',228000,20,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='matte-flatware-set');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Insulated Water Bottle','insulated-water-bottle','Vacuum-insulated bottle: cold 24h, hot 12h.',102000,100,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='insulated-water-bottle');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Packable Down Jacket','packable-down-jacket','Ultralight down jacket that packs into its pocket.',387000,28,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='packable-down-jacket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Trail Daypack 20L','trail-daypack','20-liter daypack with a hydration sleeve.',267000,22,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='trail-daypack');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Enamel Camp Mug','enamel-camp-mug','Classic speckled enamel mug for the trail.',48000,200,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='enamel-camp-mug');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Merino Hiking Socks','merino-hiking-socks','Cushioned merino hiking socks, blister-resistant.',78000,80,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='merino-hiking-socks');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Wireless Earbuds','wireless-earbuds','True wireless earbuds with a charging case.',297000,45,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='wireless-earbuds');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Bamboo Wireless Charger','bamboo-wireless-charger','Qi wireless charging pad with a bamboo top.',117000,60,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='bamboo-wireless-charger');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Mechanical Keyboard','mechanical-keyboard','Compact 75% mechanical keyboard, hot-swappable.',357000,18,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='mechanical-keyboard');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Portable Bluetooth Speaker','bluetooth-speaker','Pocket Bluetooth speaker, water-resistant.',237000,33,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='bluetooth-speaker');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'USB-C Desk Hub','usb-c-desk-hub','7-in-1 USB-C hub for laptops.',147000,40,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='usb-c-desk-hub');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Linen Throw Blanket','linen-throw-blanket','Stonewashed linen throw for the sofa.',216000,30,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='linen-throw-blanket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Ceramic Table Lamp','ceramic-table-lamp','Hand-glazed ceramic lamp with a linen shade.',264000,15,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='ceramic-table-lamp');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Scented Soy Candle','soy-candle','Hand-poured soy candle, cedar and amber.',72000,110,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='soy-candle');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Woven Seagrass Basket','seagrass-basket','Handwoven seagrass storage basket.',132000,25,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='seagrass-basket');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Stoneware Plant Pot','stoneware-plant-pot','Matte stoneware planter with drainage.',87000,70,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='stoneware-plant-pot');

INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Leather Bound Notebook','leather-notebook','Full-grain leather notebook, refillable.',84000,90,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='leather-notebook');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Brass Fountain Pen','brass-fountain-pen','Solid brass fountain pen with a fine nib.',174000,35,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='brass-fountain-pen');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Recycled Sticky Notes Set','sticky-notes-set','Recycled paper sticky notes, six pads.',36000,200,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='sticky-notes-set');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Walnut Desk Organizer','walnut-desk-organizer','Walnut organizer for pens and clips.',156000,24,'twd'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE slug='walnut-desk-organizer');
INSERT INTO products (name, slug, description, price_cents, stock, currency)
SELECT 'Linen Hardcover Journal','linen-hardcover-journal','Linen-wrapped hardcover journal, dotted pages.',102000,65,'twd'
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
