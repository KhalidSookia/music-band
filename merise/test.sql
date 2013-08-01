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