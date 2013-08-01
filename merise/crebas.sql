DROP SCHEMA IF EXISTS band;
CREATE SCHEMA IF NOT EXISTS band;
USE band;


/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* DATE de création :  01/08/2013 03:37:24                      */
/*==============================================================*/


DROP TABLE IF EXISTS access;

DROP TABLE IF EXISTS actions;

DROP TABLE IF EXISTS al_s;

DROP TABLE IF EXISTS albums;

DROP TABLE IF EXISTS c_l;

DROP TABLE IF EXISTS categories;

DROP TABLE IF EXISTS cities;

DROP TABLE IF EXISTS city_in_country;

DROP TABLE IF EXISTS countries;

DROP TABLE IF EXISTS emails;

DROP TABLE IF EXISTS i_e;

DROP TABLE IF EXISTS i_pic;

DROP TABLE IF EXISTS i_prod;

DROP TABLE IF EXISTS i_r_m;

DROP TABLE IF EXISTS i_w;

DROP TABLE IF EXISTS individuals;

DROP TABLE IF EXISTS invoices;

DROP TABLE IF EXISTS languages;

DROP TABLE IF EXISTS messages;

DROP TABLE IF EXISTS others;

DROP TABLE IF EXISTS passwords;

DROP TABLE IF EXISTS payments;

DROP TABLE IF EXISTS photos;

DROP TABLE IF EXISTS playlists;

DROP TABLE IF EXISTS posts;

DROP TABLE IF EXISTS prices_history;

DROP TABLE IF EXISTS prod_pic;

DROP TABLE IF EXISTS prod_pla;

DROP TABLE IF EXISTS prod_pur;

DROP TABLE IF EXISTS prod_v;

DROP TABLE IF EXISTS products;

DROP TABLE IF EXISTS purchases;

DROP TABLE IF EXISTS so_s;

DROP TABLE IF EXISTS song_in_album;

DROP TABLE IF EXISTS songs;

DROP TABLE IF EXISTS styles;

DROP TABLE IF EXISTS vats;

DROP TABLE IF EXISTS websites;

/*==============================================================*/
/* TABLE : access                                               */
/*==============================================================*/
CREATE TABLE access
(
   id_a                 INT NOT NULL AUTO_INCREMENT,
   level                VARCHAR(50) NOT NULL,
   active3              BOOL NOT NULL,
   created_at3          TIMESTAMP NOT NULL,
   updated_at3          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_a)
);

/*==============================================================*/
/* TABLE : actions                                              */
/*==============================================================*/
CREATE TABLE actions
(
   id_act               INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   id_prod              INT NOT NULL,
   type                 VARCHAR(50) NOT NULL,
   active21             BOOL NOT NULL,
   created_at20         TIMESTAMP NOT NULL,
   updated_at20         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_act)
);

/*==============================================================*/
/* TABLE : al_s                                                 */
/*==============================================================*/
CREATE TABLE al_s
(
   id_prod              INT NOT NULL,
   id_s                 INT NOT NULL,
   PRIMARY KEY (id_prod, id_s)
);

/*==============================================================*/
/* TABLE : albums                                               */
/*==============================================================*/
CREATE TABLE albums
(
   id_prod              INT NOT NULL,
   name_al              VARCHAR(253) NOT NULL,
   num_titles           SMALLINT NOT NULL,
   length2              TIME NOT NULL,
   PRIMARY KEY (id_prod)
);

/*==============================================================*/
/* TABLE : c_l                                                  */
/*==============================================================*/
CREATE TABLE c_l
(
   id_c                 INT NOT NULL,
   id_l                 INT NOT NULL,
   PRIMARY KEY (id_c, id_l)
);

/*==============================================================*/
/* TABLE : categories                                           */
/*==============================================================*/
CREATE TABLE categories
(
   id_cat               INT NOT NULL AUTO_INCREMENT,
   categorie            VARCHAR(50) NOT NULL,
   active13             BOOL NOT NULL,
   created_at12         TIMESTAMP NOT NULL,
   updated_at12         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_cat)
);

/*==============================================================*/
/* TABLE : cities                                               */
/*==============================================================*/
CREATE TABLE cities
(
   id_ci                INT NOT NULL AUTO_INCREMENT,
   c_iso2               CHAR(2) NOT NULL,
   ci_name              VARCHAR(100) NOT NULL,
   PRIMARY KEY (id_ci)
);

/*==============================================================*/
/* TABLE : city_in_country                                      */
/*==============================================================*/
CREATE TABLE city_in_country
(
   id_ci                INT NOT NULL,
   id_c                 INT NOT NULL,
   PRIMARY KEY (id_ci, id_c)
);

/*==============================================================*/
/* TABLE : countries                                            */
/*==============================================================*/
CREATE TABLE countries
(
   id_c                 INT NOT NULL AUTO_INCREMENT,
   iso2                 CHAR(2) NOT NULL,
   short_name           VARCHAR(50) NOT NULL,
   long_name            VARCHAR(50) NOT NULL,
   iso3                 CHAR(3) NOT NULL,
   numcode              CHAR(3) NOT NULL,
   un_member            VARCHAR(6) NOT NULL,
   calling_code         VARCHAR(5) NOT NULL,
   cctld                VARCHAR(4) NOT NULL,
   code                 VARCHAR(7) NOT NULL,
   active               BOOL NOT NULL,
   created_at           TIMESTAMP NOT NULL,
   updated_at           TIMESTAMP NOT NULL,
   PRIMARY KEY (id_c)
);

/*==============================================================*/
/* TABLE : emails                                               */
/*==============================================================*/
CREATE TABLE emails
(
   id_e                 INT NOT NULL AUTO_INCREMENT,
   email2               VARCHAR(253) NOT NULL,
   active7              BOOL NOT NULL,
   created_at6          TIMESTAMP NOT NULL,
   updated_at6          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_e)
);

/*==============================================================*/
/* TABLE : i_e                                                  */
/*==============================================================*/
CREATE TABLE i_e
(
   id_e                 INT NOT NULL,
   id_i                 INT NOT NULL,
   PRIMARY KEY (id_e, id_i)
);

/*==============================================================*/
/* TABLE : i_pic                                                */
/*==============================================================*/
CREATE TABLE i_pic
(
   id_pic               INT NOT NULL,
   id_i                 INT NOT NULL,
   PRIMARY KEY (id_pic, id_i)
);

/*==============================================================*/
/* TABLE : i_prod                                               */
/*==============================================================*/
CREATE TABLE i_prod
(
   id_prod              INT NOT NULL,
   id_i                 INT NOT NULL,
   PRIMARY KEY (id_prod, id_i)
);

/*==============================================================*/
/* TABLE : i_r_m                                                */
/*==============================================================*/
CREATE TABLE i_r_m
(
   id_m                 INT NOT NULL,
   id_i                 INT NOT NULL,
   PRIMARY KEY (id_m, id_i)
);

/*==============================================================*/
/* TABLE : i_w                                                  */
/*==============================================================*/
CREATE TABLE i_w
(
   id_w                 INT NOT NULL,
   id_i                 INT NOT NULL,
   PRIMARY KEY (id_w, id_i)
);

/*==============================================================*/
/* TABLE : individuals                                          */
/*==============================================================*/
CREATE TABLE individuals
(
   id_i                 INT NOT NULL AUTO_INCREMENT,
   id_c                 INT NOT NULL,
   id_a                 INT NOT NULL,
   id_ci                INT NOT NULL,
   id_l                 INT NOT NULL,
   pseudo               VARCHAR(253) NOT NULL,
   surname              VARCHAR(25) NOT NULL,
   name                 VARCHAR(50) NOT NULL,
   email                VARCHAR(253) NOT NULL,
   mobile               VARCHAR(25),
   dob                  DATE,
   verified             BOOL NOT NULL,
   active               BOOL NOT NULL,
   created_at           TIMESTAMP NOT NULL,
   updated_at           TIMESTAMP NOT NULL,
   PRIMARY KEY (id_i)
);

/*==============================================================*/
/* TABLE : invoices                                             */
/*==============================================================*/
CREATE TABLE invoices
(
   id_inv               INT NOT NULL AUTO_INCREMENT,
   id_pay               INT NOT NULL,
   tot                  DECIMAL(10,4) NOT NULL,
   vat2                 DECIMAL(10,4) NOT NULL,
   tot_vat              DECIMAL(10,4) NOT NULL,
   active17             BOOL NOT NULL,
   created_at16         TIMESTAMP NOT NULL,
   updated_at16         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_inv)
);

/*==============================================================*/
/* TABLE : languages                                            */
/*==============================================================*/
CREATE TABLE languages
(
   id_l                 INT NOT NULL AUTO_INCREMENT,
   language             VARCHAR(25) NOT NULL,
   active4              BOOL NOT NULL,
   created_at4          TIMESTAMP NOT NULL,
   updated_at4          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_l)
);

/*==============================================================*/
/* TABLE : messages                                             */
/*==============================================================*/
CREATE TABLE messages
(
   id_m                 INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   subject              VARCHAR(253) NOT NULL,
   message              TEXT NOT NULL,
   active6              BOOL NOT NULL,
   created_at5          TIMESTAMP NOT NULL,
   updated_at5          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_m)
);

/*==============================================================*/
/* TABLE : others                                               */
/*==============================================================*/
CREATE TABLE others
(
   id_prod              INT NOT NULL,
   name                 VARCHAR(50) NOT NULL,
   PRIMARY KEY (id_prod)
);

/*==============================================================*/
/* TABLE : passwords                                            */
/*==============================================================*/
CREATE TABLE passwords
(
   id_p                 INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   salt                 VARCHAR(25) NOT NULL,
   password             VARCHAR(50) NOT NULL,
   trials               SMALLINT NOT NULL,
   active2              BOOL NOT NULL,
   created_at2          TIMESTAMP NOT NULL,
   updated_at2          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_p)
);

/*==============================================================*/
/* TABLE : payments                                             */
/*==============================================================*/
CREATE TABLE payments
(
   id_pay               INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   method               VARCHAR(50) NOT NULL,
   validity             DATE NOT NULL,
   active19             BOOL NOT NULL,
   created_at18         TIMESTAMP NOT NULL,
   updated_at18         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pay)
);

/*==============================================================*/
/* TABLE : photos                                               */
/*==============================================================*/
CREATE TABLE photos
(
   id_pic               INT NOT NULL AUTO_INCREMENT,
   name_pic             VARCHAR(250) NOT NULL,
   ext                  VARCHAR(5) NOT NULL,
   main                 BOOL NOT NULL,
   path2                VARCHAR(250) NOT NULL,
   active14             BOOL NOT NULL,
   created_at13         TIMESTAMP NOT NULL,
   updated_at13         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pic)
);

/*==============================================================*/
/* TABLE : playlists                                            */
/*==============================================================*/
CREATE TABLE playlists
(
   id_pla               INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   position             SMALLINT NOT NULL,
   active20             BOOL NOT NULL,
   created_at19         TIMESTAMP NOT NULL,
   updated_at19         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pla)
);

/*==============================================================*/
/* TABLE : posts                                                */
/*==============================================================*/
CREATE TABLE posts
(
   id_pos               INT NOT NULL AUTO_INCREMENT,
   id_prod              INT NOT NULL,
   id_i                 INT NOT NULL,
   post                 TEXT NOT NULL,
   active22             BOOL NOT NULL,
   created_at21         TIMESTAMP NOT NULL,
   updated_at21         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pos)
);

/*==============================================================*/
/* TABLE : prices_history                                       */
/*==============================================================*/
CREATE TABLE prices_history
(
   id_pr                INT NOT NULL AUTO_INCREMENT,
   id_prod              INT NOT NULL,
   price                DECIMAL(10,4) NOT NULL,
   active15             BOOL NOT NULL,
   created_at14         TIMESTAMP NOT NULL,
   updated_at14         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pr)
);

/*==============================================================*/
/* TABLE : prod_pic                                             */
/*==============================================================*/
CREATE TABLE prod_pic
(
   id_prod              INT NOT NULL,
   id_pic               INT NOT NULL,
   PRIMARY KEY (id_prod, id_pic)
);

/*==============================================================*/
/* TABLE : prod_pla                                             */
/*==============================================================*/
CREATE TABLE prod_pla
(
   id_prod              INT NOT NULL,
   id_pla               INT NOT NULL,
   PRIMARY KEY (id_prod, id_pla)
);

/*==============================================================*/
/* TABLE : prod_pur                                             */
/*==============================================================*/
CREATE TABLE prod_pur
(
   id_pur               INT NOT NULL,
   id_prod              INT NOT NULL,
   PRIMARY KEY (id_pur, id_prod)
);

/*==============================================================*/
/* TABLE : prod_v                                               */
/*==============================================================*/
CREATE TABLE prod_v
(
   id_prod              INT NOT NULL,
   id_v                 INT NOT NULL,
   PRIMARY KEY (id_prod, id_v)
);

/*==============================================================*/
/* TABLE : products                                             */
/*==============================================================*/
CREATE TABLE products
(
   id_prod              INT NOT NULL AUTO_INCREMENT,
   id_cat               INT NOT NULL,
   price                DECIMAL(10,4) NOT NULL,
   active11             BOOL NOT NULL,
   created_at10         TIMESTAMP NOT NULL,
   updated_at10         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_prod)
);

/*==============================================================*/
/* TABLE : purchases                                            */
/*==============================================================*/
CREATE TABLE purchases
(
   id_pur               INT NOT NULL AUTO_INCREMENT,
   id_i                 INT NOT NULL,
   id_inv               INT NOT NULL,
   id_v                 INT NOT NULL,
   id_pr                INT NOT NULL,
   qty                  NUMERIC(10,0) NOT NULL,
   active18             BOOL NOT NULL,
   created_at17         TIMESTAMP NOT NULL,
   updated_at17         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_pur)
);

/*==============================================================*/
/* TABLE : so_s                                                 */
/*==============================================================*/
CREATE TABLE so_s
(
   id_prod              INT NOT NULL,
   id_s                 INT NOT NULL,
   PRIMARY KEY (id_prod, id_s)
);

/*==============================================================*/
/* TABLE : song_in_album                                        */
/*==============================================================*/
CREATE TABLE song_in_album
(
   id_prod_so           INT NOT NULL,
   id_prod_al           INT NOT NULL,
   PRIMARY KEY (id_prod_so, id_prod_al)
);

/*==============================================================*/
/* TABLE : songs                                                */
/*==============================================================*/
CREATE TABLE songs
(
   id_prod              INT NOT NULL,
   title                VARCHAR(253) NOT NULL,
   length               TIME NOT NULL,
   PRIMARY KEY (id_prod)
);

/*==============================================================*/
/* TABLE : styles                                               */
/*==============================================================*/
CREATE TABLE styles
(
   id_s                 INT NOT NULL AUTO_INCREMENT,
   style                VARCHAR(50) NOT NULL,
   active12             BOOL NOT NULL,
   created_at11         TIMESTAMP NOT NULL,
   updated_at11         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_s)
);

/*==============================================================*/
/* TABLE : vats                                                 */
/*==============================================================*/
CREATE TABLE vats
(
   id_v                 INT NOT NULL AUTO_INCREMENT,
   id_w                 INT NOT NULL,
   vat                  DECIMAL(10,4) NOT NULL,
   active16             BOOL NOT NULL,
   created_at15         TIMESTAMP NOT NULL,
   updated_at15         TIMESTAMP NOT NULL,
   PRIMARY KEY (id_v)
);

/*==============================================================*/
/* TABLE : websites                                             */
/*==============================================================*/
CREATE TABLE websites
(
   id_w                 INT NOT NULL AUTO_INCREMENT,
   path                 VARCHAR(250) NOT NULL,
   active8              BOOL NOT NULL,
   created_at7          TIMESTAMP NOT NULL,
   updated_at7          TIMESTAMP NOT NULL,
   PRIMARY KEY (id_w)
);

ALTER TABLE actions add CONSTRAINT FK_act_prod FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE actions add CONSTRAINT FK_i_act FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE al_s add CONSTRAINT FK_al_s FOREIGN KEY (id_prod)
      REFERENCES albums (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE al_s add CONSTRAINT FK_al_s2 FOREIGN KEY (id_s)
      REFERENCES styles (id_s) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE albums add CONSTRAINT FK_heritage_2 FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE c_l add CONSTRAINT FK_c_l FOREIGN KEY (id_c)
      REFERENCES countries (id_c) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE c_l add CONSTRAINT FK_c_l2 FOREIGN KEY (id_l)
      REFERENCES languages (id_l) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE city_in_country add CONSTRAINT FK_city_in_country FOREIGN KEY (id_ci)
      REFERENCES cities (id_ci) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE city_in_country add CONSTRAINT FK_city_in_country2 FOREIGN KEY (id_c)
      REFERENCES countries (id_c) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_e add CONSTRAINT FK_i_e FOREIGN KEY (id_e)
      REFERENCES emails (id_e) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_e add CONSTRAINT FK_i_e2 FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_pic add CONSTRAINT FK_i_pic FOREIGN KEY (id_pic)
      REFERENCES photos (id_pic) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_pic add CONSTRAINT FK_i_pic2 FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_prod add CONSTRAINT FK_i_prod FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_prod add CONSTRAINT FK_i_prod2 FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_r_m add CONSTRAINT FK_i_r_m FOREIGN KEY (id_m)
      REFERENCES messages (id_m) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_r_m add CONSTRAINT FK_i_r_m2 FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_w add CONSTRAINT FK_i_w FOREIGN KEY (id_w)
      REFERENCES websites (id_w) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE i_w add CONSTRAINT FK_i_w2 FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE individuals add CONSTRAINT FK_i_a FOREIGN KEY (id_a)
      REFERENCES access (id_a) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE individuals add CONSTRAINT FK_i_c FOREIGN KEY (id_c)
      REFERENCES countries (id_c) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE individuals add CONSTRAINT FK_i_ci FOREIGN KEY (id_ci)
      REFERENCES cities (id_ci) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE individuals add CONSTRAINT FK_i_l FOREIGN KEY (id_l)
      REFERENCES languages (id_l) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE invoices add CONSTRAINT FK_pay_pur FOREIGN KEY (id_pay)
      REFERENCES payments (id_pay) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE messages add CONSTRAINT FK_i_s_m FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE others add CONSTRAINT FK_heritage_3 FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE passwords add CONSTRAINT FK_i_p FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE payments add CONSTRAINT FK_i_pay FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE playlists add CONSTRAINT FK_i_pla FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE posts add CONSTRAINT FK_i_pos FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE posts add CONSTRAINT FK_pos_prod FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prices_history add CONSTRAINT FK_pr_history FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pic add CONSTRAINT FK_prod_pic FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pic add CONSTRAINT FK_prod_pic2 FOREIGN KEY (id_pic)
      REFERENCES photos (id_pic) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pla add CONSTRAINT FK_prod_pla FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pla add CONSTRAINT FK_prod_pla2 FOREIGN KEY (id_pla)
      REFERENCES playlists (id_pla) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pur add CONSTRAINT FK_prod_pur FOREIGN KEY (id_pur)
      REFERENCES purchases (id_pur) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_pur add CONSTRAINT FK_prod_pur2 FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_v add CONSTRAINT FK_prod_v FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE prod_v add CONSTRAINT FK_prod_v2 FOREIGN KEY (id_v)
      REFERENCES vats (id_v) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE products add CONSTRAINT FK_prod_cat FOREIGN KEY (id_cat)
      REFERENCES categories (id_cat) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchases add CONSTRAINT FK_i_pur FOREIGN KEY (id_i)
      REFERENCES individuals (id_i) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchases add CONSTRAINT FK_pur_pr FOREIGN KEY (id_pr)
      REFERENCES prices_history (id_pr) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchases add CONSTRAINT FK_pur_v FOREIGN KEY (id_v)
      REFERENCES vats (id_v) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE purchases add CONSTRAINT FK_pu_inv FOREIGN KEY (id_inv)
      REFERENCES invoices (id_inv) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE so_s add CONSTRAINT FK_so_s FOREIGN KEY (id_prod)
      REFERENCES songs (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE so_s add CONSTRAINT FK_so_s2 FOREIGN KEY (id_s)
      REFERENCES styles (id_s) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE song_in_album add CONSTRAINT FK_song_in_album FOREIGN KEY (id_prod_so)
      REFERENCES songs (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE song_in_album add CONSTRAINT FK_song_in_album2 FOREIGN KEY (id_prod_al)
      REFERENCES albums (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE songs add CONSTRAINT FK_heritage_1 FOREIGN KEY (id_prod)
      REFERENCES products (id_prod) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE vats add CONSTRAINT FK_w_v FOREIGN KEY (id_w)
      REFERENCES websites (id_w) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- added by me



INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Others', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Songs', 1, NOW(), NOW());

INSERT INTO categories(categorie, active13, CREATEd_at12, updated_at12) VALUES
('Albums', 1, NOW(), NOW());

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
