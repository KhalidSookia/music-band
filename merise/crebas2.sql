/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  30/07/2013 18:24:06                      */
/*==============================================================*/


drop table if exists access;

drop table if exists actions;

drop table if exists al_s;

drop table if exists albums;

drop table if exists c_l;

drop table if exists categories;

drop table if exists countries;

drop table if exists emails;

drop table if exists i_e;

drop table if exists i_pic;

drop table if exists i_prod;

drop table if exists i_r_m;

drop table if exists i_w;

drop table if exists individuals;

drop table if exists invoices;

drop table if exists languages;

drop table if exists messages;

drop table if exists others;

drop table if exists passwords;

drop table if exists payments;

drop table if exists photos;

drop table if exists playlists;

drop table if exists posts;

drop table if exists prices_history;

drop table if exists prod_pic;

drop table if exists prod_pla;

drop table if exists prod_pur;

drop table if exists prod_v;

drop table if exists products;

drop table if exists purchases;

drop table if exists so_s;

drop table if exists song_in_album;

drop table if exists songs;

drop table if exists styles;

drop table if exists vats;

drop table if exists websites;

/*==============================================================*/
/* Table : access                                               */
/*==============================================================*/
create table access
(
   id_a                 int not null auto_increment,
   level                varchar(50) not null,
   active3              bool not null,
   created_at3          timestamp not null,
   updated_at3          timestamp not null,
   primary key (id_a)
);

/*==============================================================*/
/* Table : actions                                              */
/*==============================================================*/
create table actions
(
   id_act               int not null auto_increment,
   id_i                 int not null,
   id_prod              int not null,
   type                 varchar(50) not null,
   active21             bool not null,
   created_at20         timestamp not null,
   updated_at20         timestamp not null,
   primary key (id_act)
);

/*==============================================================*/
/* Table : al_s                                                 */
/*==============================================================*/
create table al_s
(
   id_prod              int not null,
   id_s                 int not null,
   primary key (id_prod, id_s)
);

/*==============================================================*/
/* Table : albums                                               */
/*==============================================================*/
create table albums
(
   id_prod              int not null,
   name_al              varchar(253) not null,
   num_titles           smallint not null,
   length2              time not null,
   primary key (id_prod)
);

/*==============================================================*/
/* Table : c_l                                                  */
/*==============================================================*/
create table c_l
(
   id_c                 int not null,
   id_l                 int not null,
   primary key (id_c, id_l)
);

/*==============================================================*/
/* Table : categories                                           */
/*==============================================================*/
create table categories
(
   id_cat               int not null auto_increment,
   categorie            varchar(50) not null,
   active13             bool not null,
   created_at12         timestamp not null,
   updated_at12         timestamp not null,
   primary key (id_cat)
);

/*==============================================================*/
/* Table : countries                                            */
/*==============================================================*/
create table countries
(
   id_c                 int not null auto_increment,
   name_c               varchar(50) not null,
   code                 varchar(7) not null,
   active5              bool not null,
   primary key (id_c)
);

/*==============================================================*/
/* Table : emails                                               */
/*==============================================================*/
create table emails
(
   id_e                 int not null auto_increment,
   email2               varchar(253) not null,
   active7              bool not null,
   created_at6          timestamp not null,
   updated_at6          timestamp not null,
   primary key (id_e)
);

/*==============================================================*/
/* Table : i_e                                                  */
/*==============================================================*/
create table i_e
(
   id_e                 int not null,
   id_i                 int not null,
   primary key (id_e, id_i)
);

/*==============================================================*/
/* Table : i_pic                                                */
/*==============================================================*/
create table i_pic
(
   id_pic               int not null,
   id_i                 int not null,
   primary key (id_pic, id_i)
);

/*==============================================================*/
/* Table : i_prod                                               */
/*==============================================================*/
create table i_prod
(
   id_prod              int not null,
   id_i                 int not null,
   primary key (id_prod, id_i)
);

/*==============================================================*/
/* Table : i_r_m                                                */
/*==============================================================*/
create table i_r_m
(
   id_m                 int not null,
   id_i                 int not null,
   primary key (id_m, id_i)
);

/*==============================================================*/
/* Table : i_w                                                  */
/*==============================================================*/
create table i_w
(
   id_w                 int not null,
   id_i                 int not null,
   primary key (id_w, id_i)
);

/*==============================================================*/
/* Table : individuals                                          */
/*==============================================================*/
create table individuals
(
   id_i                 int not null auto_increment,
   id_c                 int not null,
   id_a                 int not null,
   id_l                 int not null,
   pseudo               varchar(253) not null,
   surname              varchar(25) not null,
   name                 varchar(50) not null,
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
   id_inv               int not null auto_increment,
   id_pay               int not null,
   tot                  decimal(10,4) not null,
   vat2                 decimal(10,4) not null,
   tot_vat              decimal(10,4) not null,
   active17             bool not null,
   created_at16         timestamp not null,
   updated_at16         timestamp not null,
   primary key (id_inv)
);

/*==============================================================*/
/* Table : languages                                            */
/*==============================================================*/
create table languages
(
   id_l                 int not null auto_increment,
   language             varchar(25) not null,
   active4              bool not null,
   created_at4          timestamp not null,
   updated_at4          timestamp not null,
   primary key (id_l)
);

/*==============================================================*/
/* Table : messages                                             */
/*==============================================================*/
create table messages
(
   id_m                 int not null auto_increment,
   id_i                 int not null,
   subject              varchar(253) not null,
   message              text not null,
   active6              bool not null,
   created_at5          timestamp not null,
   updated_at5          timestamp not null,
   primary key (id_m)
);

/*==============================================================*/
/* Table : others                                               */
/*==============================================================*/
create table others
(
   id_prod              int not null,
   name                 varchar(50) not null,
   primary key (id_prod)
);

/*==============================================================*/
/* Table : passwords                                            */
/*==============================================================*/
create table passwords
(
   id_p                 int not null auto_increment,
   id_i                 int not null,
   salt                 varchar(25) not null,
   password             varchar(50) not null,
   trials               smallint not null,
   active2              bool not null,
   created_at2          timestamp not null,
   updated_at2          timestamp not null,
   primary key (id_p)
);

/*==============================================================*/
/* Table : payments                                             */
/*==============================================================*/
create table payments
(
   id_pay               int not null auto_increment,
   id_i                 int not null,
   method               varchar(50) not null,
   validity             date not null,
   active19             bool not null,
   created_at18         timestamp not null,
   updated_at18         timestamp not null,
   primary key (id_pay)
);

/*==============================================================*/
/* Table : photos                                               */
/*==============================================================*/
create table photos
(
   id_pic               int not null auto_increment,
   name_pic             varchar(250) not null,
   ext                  varchar(5) not null,
   main                 bool not null,
   path2                varchar(250) not null,
   active14             bool not null,
   created_at13         timestamp not null,
   updated_at13         timestamp not null,
   primary key (id_pic)
);

/*==============================================================*/
/* Table : playlists                                            */
/*==============================================================*/
create table playlists
(
   id_pla               int not null auto_increment,
   id_i                 int not null,
   position             smallint not null,
   active20             bool not null,
   created_at19         timestamp not null,
   updated_at19         timestamp not null,
   primary key (id_pla)
);

/*==============================================================*/
/* Table : posts                                                */
/*==============================================================*/
create table posts
(
   id_pos               int not null auto_increment,
   id_prod              int not null,
   id_i                 int not null,
   post                 text not null,
   active22             bool not null,
   created_at21         timestamp not null,
   updated_at21         timestamp not null,
   primary key (id_pos)
);

/*==============================================================*/
/* Table : prices_history                                       */
/*==============================================================*/
create table prices_history
(
   id_pr                int not null auto_increment,
   id_prod              int not null,
   price                decimal(10,4) not null,
   active15             bool not null,
   created_at14         timestamp not null,
   updated_at14         timestamp not null,
   primary key (id_pr)
);

/*==============================================================*/
/* Table : prod_pic                                             */
/*==============================================================*/
create table prod_pic
(
   id_prod              int not null,
   id_pic               int not null,
   primary key (id_prod, id_pic)
);

/*==============================================================*/
/* Table : prod_pla                                             */
/*==============================================================*/
create table prod_pla
(
   id_prod              int not null,
   id_pla               int not null,
   primary key (id_prod, id_pla)
);

/*==============================================================*/
/* Table : prod_pur                                             */
/*==============================================================*/
create table prod_pur
(
   id_pur               int not null,
   id_prod              int not null,
   primary key (id_pur, id_prod)
);

/*==============================================================*/
/* Table : prod_v                                               */
/*==============================================================*/
create table prod_v
(
   id_prod              int not null,
   id_v                 int not null,
   primary key (id_prod, id_v)
);

/*==============================================================*/
/* Table : products                                             */
/*==============================================================*/
create table products
(
   id_prod              int not null auto_increment,
   id_cat               int not null,
   price                decimal(10,4) not null,
   active11             bool not null,
   created_at10         timestamp not null,
   updated_at10         timestamp not null,
   primary key (id_prod)
);

/*==============================================================*/
/* Table : purchases                                            */
/*==============================================================*/
create table purchases
(
   id_pur               int not null auto_increment,
   id_i                 int not null,
   id_inv               int not null,
   id_v                 int not null,
   id_pr                int not null,
   qty                  numeric(100,0) not null,
   active18             bool not null,
   created_at17         timestamp not null,
   updated_at17         timestamp not null,
   primary key (id_pur)
);

/*==============================================================*/
/* Table : so_s                                                 */
/*==============================================================*/
create table so_s
(
   id_prod              int not null,
   id_s                 int not null,
   primary key (id_prod, id_s)
);

/*==============================================================*/
/* Table : song_in_album                                        */
/*==============================================================*/
create table song_in_album
(
   id_prod_so           int not null,
   id_prod_al           int not null,
   primary key (id_prod_so, id_prod_al)
);

/*==============================================================*/
/* Table : songs                                                */
/*==============================================================*/
create table songs
(
   id_prod              int not null,
   title                varchar(253) not null,
   length               time not null,
   primary key (id_prod)
);

/*==============================================================*/
/* Table : styles                                               */
/*==============================================================*/
create table styles
(
   id_s                 int not null auto_increment,
   style                varchar(50) not null,
   active12             bool not null,
   created_at11         timestamp not null,
   updated_at11         timestamp not null,
   primary key (id_s)
);

/*==============================================================*/
/* Table : vats                                                 */
/*==============================================================*/
create table vats
(
   id_v                 int not null auto_increment,
   id_w                 int not null,
   vat                  decimal(10,4) not null,
   active16             bool not null,
   created_at15         timestamp not null,
   updated_at15         timestamp not null,
   primary key (id_v)
);

/*==============================================================*/
/* Table : websites                                             */
/*==============================================================*/
create table websites
(
   id_w                 int not null auto_increment,
   path                 varchar(250) not null,
   active8              bool not null,
   created_at7          timestamp not null,
   updated_at7          timestamp not null,
   primary key (id_w)
);

alter table actions add constraint fk_act_prod foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table actions add constraint fk_i_act foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table al_s add constraint fk_al_s foreign key (id_prod)
      references albums (id_prod) on delete restrict on update restrict;

alter table al_s add constraint fk_al_s2 foreign key (id_s)
      references styles (id_s) on delete restrict on update restrict;

alter table albums add constraint fk_heritage_2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table c_l add constraint fk_c_l foreign key (id_c)
      references countries (id_c) on delete restrict on update restrict;

alter table c_l add constraint fk_c_l2 foreign key (id_l)
      references languages (id_l) on delete restrict on update restrict;

alter table i_e add constraint fk_i_e foreign key (id_e)
      references emails (id_e) on delete restrict on update restrict;

alter table i_e add constraint fk_i_e2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table i_pic add constraint fk_i_pic foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table i_pic add constraint fk_i_pic2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table i_prod add constraint fk_i_prod foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table i_prod add constraint fk_i_prod2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table i_r_m add constraint fk_i_r_m foreign key (id_m)
      references messages (id_m) on delete restrict on update restrict;

alter table i_r_m add constraint fk_i_r_m2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table i_w add constraint fk_i_w foreign key (id_w)
      references websites (id_w) on delete restrict on update restrict;

alter table i_w add constraint fk_i_w2 foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table individuals add constraint fk_i_a foreign key (id_a)
      references access (id_a) on delete restrict on update restrict;

alter table individuals add constraint fk_i_c foreign key (id_c)
      references countries (id_c) on delete restrict on update restrict;

alter table individuals add constraint fk_i_l foreign key (id_l)
      references languages (id_l) on delete restrict on update restrict;

alter table invoices add constraint fk_pay_pur foreign key (id_pay)
      references payments (id_pay) on delete restrict on update restrict;

alter table messages add constraint fk_i_s_m foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table others add constraint fk_heritage_3 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table passwords add constraint fk_i_p foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table payments add constraint fk_i_pay foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table playlists add constraint fk_i_pla foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table posts add constraint fk_i_pos foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table posts add constraint fk_pos_prod foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prices_history add constraint fk_pr_history foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prod_pic add constraint fk_prod_pic foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prod_pic add constraint fk_prod_pic2 foreign key (id_pic)
      references photos (id_pic) on delete restrict on update restrict;

alter table prod_pla add constraint fk_prod_pla foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prod_pla add constraint fk_prod_pla2 foreign key (id_pla)
      references playlists (id_pla) on delete restrict on update restrict;

alter table prod_pur add constraint fk_prod_pur foreign key (id_pur)
      references purchases (id_pur) on delete restrict on update restrict;

alter table prod_pur add constraint fk_prod_pur2 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prod_v add constraint fk_prod_v foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table prod_v add constraint fk_prod_v2 foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table products add constraint fk_prod_cat foreign key (id_cat)
      references categories (id_cat) on delete restrict on update restrict;

alter table purchases add constraint fk_i_pur foreign key (id_i)
      references individuals (id_i) on delete restrict on update restrict;

alter table purchases add constraint fk_pur_pr foreign key (id_pr)
      references prices_history (id_pr) on delete restrict on update restrict;

alter table purchases add constraint fk_pur_v foreign key (id_v)
      references vats (id_v) on delete restrict on update restrict;

alter table purchases add constraint fk_pu_inv foreign key (id_inv)
      references invoices (id_inv) on delete restrict on update restrict;

alter table so_s add constraint fk_so_s foreign key (id_prod)
      references songs (id_prod) on delete restrict on update restrict;

alter table so_s add constraint fk_so_s2 foreign key (id_s)
      references styles (id_s) on delete restrict on update restrict;

alter table song_in_album add constraint fk_song_in_album foreign key (id_prod_so)
      references songs (id_prod) on delete restrict on update restrict;

alter table song_in_album add constraint fk_song_in_album2 foreign key (id_prod_al)
      references albums (id_prod) on delete restrict on update restrict;

alter table songs add constraint fk_heritage_1 foreign key (id_prod)
      references products (id_prod) on delete restrict on update restrict;

alter table vats add constraint fk_w_v foreign key (id_w)
      references websites (id_w) on delete restrict on update restrict;

