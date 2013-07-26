/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  26/07/2013 14:41:35                      */
/*==============================================================*/


drop table if exists access;

drop table if exists act;

drop table if exists actions;

drop table if exists album_created_by;

drop table if exists album_has_pic;

drop table if exists album_has_style;

drop table if exists album_has_vat;

drop table if exists album_purchased;

drop table if exists albums;

drop table if exists ambum_is_in_cat;

drop table if exists categories;

drop table if exists countries;

drop table if exists emails;

drop table if exists entered;

drop table if exists has_invoice;

drop table if exists has_pic;

drop table if exists individuals;

drop table if exists invoices;

drop table if exists languages;

drop table if exists messages;

drop table if exists passwords;

drop table if exists payments;

drop table if exists photos;

drop table if exists playlists;

drop table if exists posts;

drop table if exists prices;

drop table if exists product_has_pic;

drop table if exists product_has_vat;

drop table if exists product_is_in_cat;

drop table if exists product_purchased;

drop table if exists products;

drop table if exists purchases;

drop table if exists sell_by;

drop table if exists song_album;

drop table if exists song_created_by;

drop table if exists song_has_pic;

drop table if exists song_has_style;

drop table if exists song_has_vat;

drop table if exists song_is_in_cat;

drop table if exists song_purchased;

drop table if exists songs;

drop table if exists styles;

drop table if exists vats;

drop table if exists "write";

/*==============================================================*/
/* Table : access                                               */
/*==============================================================*/
create table access
(
   id_a                 numeric(8,0) not null,
   name                 varchar(50) not null,
   level                smallint not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_a)
);

/*==============================================================*/
/* Table : act                                                  */
/*==============================================================*/
create table act
(
   id_act               numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   primary key (id_act, id_i)
);

/*==============================================================*/
/* Table : actions                                              */
/*==============================================================*/
create table actions
(
   id_act               numeric(8,0) not null,
   type                 varchar(50) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_act)
);

/*==============================================================*/
/* Table : album_created_by                                     */
/*==============================================================*/
create table album_created_by
(
   id_i                 numeric(8,0) not null,
   id_al                numeric(8,0) not null,
   primary key (id_i, id_al)
);

/*==============================================================*/
/* Table : album_has_pic                                        */
/*==============================================================*/
create table album_has_pic
(
   id_al                numeric(8,0) not null,
   id_pic               numeric(8,0) not null,
   primary key (id_al, id_pic)
);

/*==============================================================*/
/* Table : album_has_style                                      */
/*==============================================================*/
create table album_has_style
(
   id_s                 numeric(8,0) not null,
   id_al                numeric(8,0) not null,
   primary key (id_s, id_al)
);

/*==============================================================*/
/* Table : album_has_vat                                        */
/*==============================================================*/
create table album_has_vat
(
   id_al                numeric(8,0) not null,
   id_v                 numeric(8,0) not null,
   primary key (id_al, id_v)
);

/*==============================================================*/
/* Table : album_purchased                                      */
/*==============================================================*/
create table album_purchased
(
   id_al                numeric(8,0) not null,
   id_pur               numeric(8,0) not null,
   primary key (id_al, id_pur)
);

/*==============================================================*/
/* Table : albums                                               */
/*==============================================================*/
create table albums
(
   id_al                numeric(8,0) not null,
   name_al              varchar(253) not null,
   num_titles           smallint not null,
   length               time not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_al)
);

/*==============================================================*/
/* Table : ambum_is_in_cat                                      */
/*==============================================================*/
create table ambum_is_in_cat
(
   id_al                numeric(8,0) not null,
   id_cat               numeric(8,0) not null,
   primary key (id_al, id_cat)
);

/*==============================================================*/
/* Table : categories                                           */
/*==============================================================*/
create table categories
(
   id_cat               numeric(8,0) not null,
   categorie            varchar(50) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_cat)
);

/*==============================================================*/
/* Table : countries                                            */
/*==============================================================*/
create table countries
(
   id_c                 numeric(8,0) not null,
   name_c               varchar(50) not null,
   code                 varchar(7) not null,
   active               bool not null,
   primary key (id_c)
);

/*==============================================================*/
/* Table : emails                                               */
/*==============================================================*/
create table emails
(
   id_e                 numeric(8,0) not null,
   email                varchar(253) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_e)
);

/*==============================================================*/
/* Table : entered                                              */
/*==============================================================*/
create table entered
(
   id_e                 numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   primary key (id_e, id_i)
);

/*==============================================================*/
/* Table : has_invoice                                          */
/*==============================================================*/
create table has_invoice
(
   id_i                 numeric(8,0) not null,
   id_inv               numeric(8,0) not null,
   primary key (id_i, id_inv)
);

/*==============================================================*/
/* Table : has_pic                                              */
/*==============================================================*/
create table has_pic
(
   id_pic               numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   primary key (id_pic, id_i)
);

/*==============================================================*/
/* Table : individuals                                          */
/*==============================================================*/
create table individuals
(
   id_i                 numeric(8,0) not null,
   id_a                 numeric(8,0) not null,
   id_l                 numeric(8,0) not null,
   id_c                 numeric(8,0) not null,
   pseudo               varchar(253) not null,
   name                 varchar(50) not null,
   surname              varchar(25) not null,
   email                varchar(253) not null,
   mobile               varchar(25),
   dob                  date,
   verified             bool not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_i)
);

/*==============================================================*/
/* Table : invoices                                             */
/*==============================================================*/
create table invoices
(
   id_inv               numeric(8,0) not null,
   id_pay               numeric(8,0) not null,
   tot                  decimal(10,4) not null,
   vat                  decimal(10,4) not null,
   tot_vat              decimal(10,4) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_inv)
);

/*==============================================================*/
/* Table : languages                                            */
/*==============================================================*/
create table languages
(
   id_l                 numeric(8,0) not null,
   language             varchar(25) not null,
   primary key (id_l)
);

/*==============================================================*/
/* Table : messages                                             */
/*==============================================================*/
create table messages
(
   id_m                 numeric(8,0) not null,
   to                   varchar(253) not null,
   subject              varchar(253) not null,
   message              text not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_m)
);

/*==============================================================*/
/* Table : passwords                                            */
/*==============================================================*/
create table passwords
(
   id_p                 numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   salt                 varchar(25) not null,
   password             varchar(50) not null,
   trials               smallint not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_p)
);

/*==============================================================*/
/* Table : payments                                             */
/*==============================================================*/
create table payments
(
   id_pay               numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   method               varchar(50) not null,
   validity             date not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pay)
);

/*==============================================================*/
/* Table : photos                                               */
/*==============================================================*/
create table photos
(
   id_pic               numeric(8,0) not null,
   name_pic             varchar(250) not null,
   ext                  varchar(5) not null,
   path                 varchar(250) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pic)
);

/*==============================================================*/
/* Table : playlists                                            */
/*==============================================================*/
create table playlists
(
   id_pla               numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   name                 varchar(50) not null,
   position             smallint not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pla)
);

/*==============================================================*/
/* Table : posts                                                */
/*==============================================================*/
create table posts
(
   id_pos               numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   post                 text not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pos)
);

/*==============================================================*/
/* Table : prices                                               */
/*==============================================================*/
create table prices
(
   id_pr                numeric(8,0) not null,
   id_so                numeric(8,0) not null,
   id_al                numeric(8,0) not null,
   id_prod              numeric(8,0) not null,
   price                decimal(10,4) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pr)
);

/*==============================================================*/
/* Table : product_has_pic                                      */
/*==============================================================*/
create table product_has_pic
(
   id_prod              numeric(8,0) not null,
   id_pic               numeric(8,0) not null,
   primary key (id_prod, id_pic)
);

/*==============================================================*/
/* Table : product_has_vat                                      */
/*==============================================================*/
create table product_has_vat
(
   id_prod              numeric(8,0) not null,
   id_v                 numeric(8,0) not null,
   primary key (id_prod, id_v)
);

/*==============================================================*/
/* Table : product_is_in_cat                                    */
/*==============================================================*/
create table product_is_in_cat
(
   id_prod              numeric(8,0) not null,
   id_cat               numeric(8,0) not null,
   primary key (id_prod, id_cat)
);

/*==============================================================*/
/* Table : product_purchased                                    */
/*==============================================================*/
create table product_purchased
(
   id_prod              numeric(8,0) not null,
   id_pur               numeric(8,0) not null,
   primary key (id_prod, id_pur)
);

/*==============================================================*/
/* Table : products                                             */
/*==============================================================*/
create table products
(
   id_prod              numeric(8,0) not null,
   name_p               varchar(50) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_prod)
);

/*==============================================================*/
/* Table : purchases                                            */
/*==============================================================*/
create table purchases
(
   id_pur               numeric(8,0) not null,
   id_pr                numeric(8,0) not null,
   id_v                 numeric(8,0) not null,
   id_inv               numeric(8,0) not null,
   qty                  numeric(100,0) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_pur)
);

/*==============================================================*/
/* Table : sell_by                                              */
/*==============================================================*/
create table sell_by
(
   id_i                 numeric(8,0) not null,
   id_prod              numeric(8,0) not null,
   primary key (id_i, id_prod)
);

/*==============================================================*/
/* Table : song_album                                           */
/*==============================================================*/
create table song_album
(
   id_so                numeric(8,0) not null,
   id_al                numeric(8,0) not null,
   primary key (id_so, id_al)
);

/*==============================================================*/
/* Table : song_created_by                                      */
/*==============================================================*/
create table song_created_by
(
   id_i                 numeric(8,0) not null,
   id_so                numeric(8,0) not null,
   primary key (id_i, id_so)
);

/*==============================================================*/
/* Table : song_has_pic                                         */
/*==============================================================*/
create table song_has_pic
(
   id_so                numeric(8,0) not null,
   id_pic               numeric(8,0) not null,
   primary key (id_so, id_pic)
);

/*==============================================================*/
/* Table : song_has_style                                       */
/*==============================================================*/
create table song_has_style
(
   id_s                 numeric(8,0) not null,
   id_so                numeric(8,0) not null,
   primary key (id_s, id_so)
);

/*==============================================================*/
/* Table : song_has_vat                                         */
/*==============================================================*/
create table song_has_vat
(
   id_so                numeric(8,0) not null,
   id_v                 numeric(8,0) not null,
   primary key (id_so, id_v)
);

/*==============================================================*/
/* Table : song_is_in_cat                                       */
/*==============================================================*/
create table song_is_in_cat
(
   id_so                numeric(8,0) not null,
   id_cat               numeric(8,0) not null,
   primary key (id_so, id_cat)
);

/*==============================================================*/
/* Table : song_purchased                                       */
/*==============================================================*/
create table song_purchased
(
   id_so                numeric(8,0) not null,
   id_pur               numeric(8,0) not null,
   primary key (id_so, id_pur)
);

/*==============================================================*/
/* Table : songs                                                */
/*==============================================================*/
create table songs
(
   id_so                numeric(8,0) not null,
   title                varchar(253) not null,
   length               time not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_so)
);

/*==============================================================*/
/* Table : styles                                               */
/*==============================================================*/
create table styles
(
   id_s                 numeric(8,0) not null,
   style                varchar(50) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_s)
);

/*==============================================================*/
/* Table : vats                                                 */
/*==============================================================*/
create table vats
(
   id_v                 numeric(8,0) not null,
   vat                  decimal(10,4) not null,
   active               bool not null,
   created_at           timestamp not null,
   updated_at           timestamp not null,
   primary key (id_v)
);

/*==============================================================*/
/* Table : "write"                                              */
/*==============================================================*/
create table "write"
(
   id_m                 numeric(8,0) not null,
   id_i                 numeric(8,0) not null,
   primary key (id_m, id_i)
);

alter table act add constraint fk_act foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table act add constraint fk_act2 foreign key (id_act)
      references actions (id_act) on delete restrict on update restrict;

alter table album_created_by add constraint fk_album_created_by foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table album_created_by add constraint fk_album_created_by2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table album_has_pic add constraint fk_album_has_pic foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table album_has_pic add constraint fk_album_has_pic2 foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table album_has_style add constraint fk_album_has_style foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table album_has_style add constraint fk_album_has_style2 foreign key (id_s)
      references styles (id_s) on delete restrict on update restrict;

alter table album_has_vat add constraint fk_album_has_vat foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table album_has_vat add constraint fk_album_has_vat2 foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table album_purchased add constraint fk_album_purchased foreign key (id_pur)
      references purchases (id_pur) on delete restrict on update restrict;

alter table album_purchased add constraint fk_album_purchased2 foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table ambum_is_in_cat add constraint fk_ambum_is_in_cat foreign key (id_cat)
      references categories (id_cat) on delete restrict on update restrict;

alter table ambum_is_in_cat add constraint fk_ambum_is_in_cat2 foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table entered add constraint fk_entered foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table entered add constraint fk_entered2 foreign key (id_e)
      references emails (id_e) on delete restrict on update restrict;

alter table has_invoice add constraint fk_has_invoice foreign key (id_inv)
      references invoices (id_inv) on delete restrict on update restrict;

alter table has_invoice add constraint fk_has_invoice2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table has_pic add constraint fk_has_pic foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table has_pic add constraint fk_has_pic2 foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table individuals add constraint fk_has_access foreign key (id_a)
      references access (id_a) on delete restrict on update restrict;

alter table individuals add constraint fk_lives foreign key (id_c)
      references countries (id_c) on delete restrict on update restrict;

alter table individuals add constraint fk_speaks foreign key (id_l)
      references languages (id_l) on delete restrict on update restrict;

alter table invoices add constraint fk_pays foreign key (id_pay)
      references payments (id_pay) on delete restrict on update restrict;

alter table passwords add constraint fk_has_password foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table payments add constraint fk_payment_method foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table playlists add constraint fk_has_playlist foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table posts add constraint fk_posts foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table prices add constraint fk_album_costs foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table prices add constraint fk_product_costs foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prices add constraint fk_song_costs foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table product_has_pic add constraint fk_product_has_pic foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table product_has_pic add constraint fk_product_has_pic2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table product_has_vat add constraint fk_product_has_vat foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table product_has_vat add constraint fk_product_has_vat2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table product_is_in_cat add constraint fk_product_is_in_cat foreign key (id_cat)
      references categories (id_cat) on delete restrict on update restrict;

alter table product_is_in_cat add constraint fk_product_is_in_cat2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table product_purchased add constraint fk_product_purchased foreign key (id_pur)
      references purchases (id_pur) on delete restrict on update restrict;

alter table product_purchased add constraint fk_product_purchased2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table purchases add constraint fk_purchase_cost foreign key (id_pr)
      references prices (id_pr) on delete restrict on update restrict;

alter table purchases add constraint fk_purchase_vat foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table purchases add constraint fk_pur_inv foreign key (id_inv)
      references invoices (id_inv) on delete restrict on update restrict;

alter table sell_by add constraint fk_sell_by foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table sell_by add constraint fk_sell_by2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table song_album add constraint fk_song_album foreign key (id_al)
      references albums (id_al) on delete restrict on update restrict;

alter table song_album add constraint fk_song_album2 foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_created_by add constraint fk_song_created_by foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_created_by add constraint fk_song_created_by2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table song_has_pic add constraint fk_song_has_pic foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table song_has_pic add constraint fk_song_has_pic2 foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_has_style add constraint fk_song_has_style foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_has_style add constraint fk_song_has_style2 foreign key (id_s)
      references styles (id_s) on delete restrict on update restrict;

alter table song_has_vat add constraint fk_song_has_vat foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table song_has_vat add constraint fk_song_has_vat2 foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_is_in_cat add constraint fk_song_is_in_cat foreign key (id_cat)
      references categories (id_cat) on delete restrict on update restrict;

alter table song_is_in_cat add constraint fk_song_is_in_cat2 foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table song_purchased add constraint fk_song_purchased foreign key (id_pur)
      references purchases (id_pur) on delete restrict on update restrict;

alter table song_purchased add constraint fk_song_purchased2 foreign key (id_so)
      references songs (id_so) on delete restrict on update restrict;

alter table "write" add constraint fk_write foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table "write" add constraint fk_write2 foreign key (id_m)
      references messages (id_m) on delete restrict on update restrict;

