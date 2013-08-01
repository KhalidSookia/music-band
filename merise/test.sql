INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Others', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Songs', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Albums', 1, NOW(), NOW());

INSERT INTO access(level, active3, created_at3, updated_at3) VALUES
('Main', 1 , NOW(), NOW()),
('Super', 1 , NOW(), NOW()),
('Admin', 1 , NOW(), NOW()),
('User', 1 , NOW(), NOW());


INSERT INTO languages(language, active4, created_at4, updated_at4) VALUES
('English', 1, NOW(), NOW()),
('Français', 1, NOW(), NOW()),
('Spanish', 1, NOW(), NOW());


INSERT INTO styles(style, active12, created_at11, updated_at11) VALUES
('Rap', 1,NOW(), NOW()),
('Rock', 1,NOW(), NOW());

select * from websites;
-- done twice
insert into websites(path, active8, created_at7, updated_at7) values
('http://www.site.com/', 1 , NOW(), NOW());
-- tests
update websites set active8 = 'qsd' where id_w = 1;
update websites set active8 = 0 where id_w = 1;
update websites set path = 'http://www.active.com' where id_w = 2;

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO individuals(id_c, id_a, id_ci, id_l, pseudo, surname, name, email, mobile, dob, verified, active, created_at, updated_at) VALUES
(76, 1, 647146, 2, 'Khalid95800', 'Sookia', 'Khalid', 'khalid_sookia@yahoo.com', '+33688059998', 1986-03-16, 1, 1,NOW(), NOW()),
(76, 2, 647145, 2, 'Noemie95', 'Sookia', 'Noemie', 'noemie.sookia@gmail.com', '+33688059998', 2000-01-01, 1, 1,NOW(), NOW()),
(76, 3, 647146, 2, 'Khalid747', 'Sookia', 'Khalid', 'khalid_sookia@hotmail.com', '+33688059998', 1900-12-12, 1, 1,NOW(), NOW()),
(76, 4, 647146, 2, 'ichien', 'Sookia', 'Khalid', 'khalid_sookia@yahoo', '+33688059998', 1986-03-16, 1, 0,NOW(), NOW()),
(76, 4, 647146, 2, 'ichien', 'Sookia', 'Khalid', 'khalid_sookia@yahoo.com', '+33688059998', 2015-01-01, 1, 1,NOW(), NOW());

UPDATE individuals SET verified = 0 WHERE id_i = 4;

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------


insert into passwords(id_i, salt, password, trials, active2, created_at2, updated_at2) VALUES
(1, 'salted', 'pass', 1, 0, NOW(), NOW()),
(2, 'salted', 'pass', 1, 1, NOW(), NOW()),
(3, 'salted', 'pass', 1, 1, NOW(), NOW()),
(4, 'salted', 'pass', 1, 1, NOW(), NOW()),
(5, 'salted', 'pass', 1, 1, NOW(), NOW()),

(1, 'salted', 'pass', 1, 1, NOW(), NOW());

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO i_w(id_w,id_i) VALUES
(1,1),
(2,3);

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO vats(id_w, vat, active16, created_at15, updated_at15) VALUES
(1, 20, 1,NOW(), NOW()),
(2, 19.6, 1,NOW(), NOW());

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------------


INSERT INTO c_l(id_c, id_l) VALUES
(76,2),
(235, 1);

-- -----------------------------------------------------------------------------------------------
-- ----------------------------insert songs-------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO products(id_cat, price, active11, created_at10, updated_at10) VALUES
(2, 10, 1,NOW(), NOW()),
(2, 1.5, 1, NOW(), NOW());


INSERT INTO songs(id_prod, title, length) VALUES
(1,'My Song', '00:03:56');
INSERT INTO songs(id_prod, title, length) VALUES
(2,'second song', '04:03:50');
UPDATE songs SET length = '04:03:54' WHERE id_prod = 2;

-- -----------------------------------------------------------------------------------------------
-- ----------------------------insert others------ -----------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO products(id_cat, price, active11, created_at10, updated_at10) VALUES
(1, 101, 1,NOW(), NOW()),
(1, 2.5, 1, NOW(), NOW());

INSERT INTO others(id_prod, name) VALUES
(4,'Others'),
(5,'Others for update');
update others set name = 'updated' where id_prod = 5;

-- -----------------------------------------------------------------------------------------------
-- ----------------------------insert albums-------------- -----------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO products(id_cat, price, active11, created_at10, updated_at10) VALUES
(3, 103, 1,NOW(), NOW()),
(3, 3.5, 1, NOW(), NOW());


INSERT INTO albums(id_prod, name_al, num_titles, length2) VALUES
(7,'Album', 15, '2:56:24'),
(8,'Test album', 1500, '10:56:08');
update albums set name_al = 'Album updated', num_titles = 10, length2 = '1:3:5' where id_prod = 8;

-- -----------------------------------------------------------------------------------------------
-- -------------------------------update products-----------------------------------------------
-- -----------------------------------------------------------------------------------------------

update products set price = 5.5 where id_prod = 2;

update products set price = 105.251 where id_prod = 8;

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------


INSERT INTO song_in_album(id_prod_so,id_prod_al) VALUES
(1,7),
(2,8);
UPDATE song_in_album SET id_prod_al = 8 WHERE id_prod_so = 2;
UPDATE song_in_album SET id_prod_al = 7 WHERE id_prod_so = 2;

-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO so_s(id_prod, id_s) VALUES
(1,1),
(2,2);

UPDATE so_s SET id_s = 1 WHERE id_s = 2;
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO al_s(id_prod, id_s) VALUES
(7,1),
(8,2);


-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------

INSERT INTO i_prod(id_prod, id_i) VALUES
(1, 3),
(2, 3),
(4, 3),
(5, 3),
(7, 3),
(8, 3);