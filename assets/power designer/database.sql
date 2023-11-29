/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     27-Nov-23 4:30:51 PM                         */
/*==============================================================*/


drop table if exists ARTIST;

drop table if exists EVENTS;

/*==============================================================*/
/* Table: ARTIST                                                */
/*==============================================================*/
create table ARTIST
(
   idCardArtist         char(10) not null,
   firstNameArtist      char(30) not null,
   lastNameArtist       char(30) not null,
   passwordArtist       char(16) not null,
   primary key (idCardArtist)
);

/*==============================================================*/
/* Table: EVENTS                                                */
/*==============================================================*/
create table EVENTS
(
   idEvent              int not null auto_increment,
   idCardArtist         char(10) not null,
   titleEvent           char(50) not null,
   descritptionEvent    char(150) not null,
   dateEvent            datetime not null,
   primary key (idEvent)
);

alter table EVENTS add constraint FK_make foreign key (idCardArtist)
      references ARTIST (idCardArtist) on delete restrict on update restrict;

