
-- added by me

DELIMITER $$
DROP TRIGGER IF EXISTS price_insert $$
CREATE TRIGGER price_insert BEFORE INSERT
ON products
FOR EACH ROW
BEGIN

INSERT INTO prices_history(id_prod, price) VALUES (NEW.id_prod, NEW.price);

END;
$$

DELIMITER $$
DROP TRIGGER IF EXISTS price_update $$
CREATE TRIGGER price_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN

INSERT INTO prices_history(id_prod, price) VALUES (NEW.id_prod, NEW.price);

END;
$$


INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Others', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Songs', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Albums', 1, NOW(), NOW());