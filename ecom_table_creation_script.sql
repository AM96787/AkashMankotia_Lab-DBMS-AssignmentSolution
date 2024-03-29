-- Ecommerce Site Database Schema

create schema if not exists ecom;

use ecom;

-- Supplier Table

create table if not exists supplier(
	                                SUPP_ID     int primary key,
                                    SUPP_NAME   varchar(50),
	                                SUPP_CITY   varchar(50),
	                                SUPP_PHONE  varchar(10)
                                   );

-- Customer Table

create table if not exists customer (
	                                 CUS_ID      int not null,
	                                 CUS_NAME    varchar(20) null default null,
	                                 CUS_PHONE   varchar(10),
	                                 CUS_CITY    varchar(30) ,
	                                 CUS_GENDER  char,
	                                 primary key (CUS_ID)
	                                 );

-- Category Table

create table if not exists category (
                                     CAT_ID      int not null,
	                                 CAT_NAME    varchar(20) null default null,
	                                 primary key (CAT_ID)
	                                 );

-- Product Table

create table if not exists product (
                                    PRO_ID      int not null,
                                    PRO_NAME    varchar(20) null default null,
                                    PRO_DESC    varchar(60) null default null,
                                    CAT_ID      int not null,
                                    primary key (PRO_ID),
                                    foreign key (CAT_ID) references category(CAT_ID)
                                    );

-- ProductDetails Table

 create table if not exists product_details (
                                             PROD_ID     int not null,
                                             PRO_ID      int not null,
                                             SUPP_ID     int not null,
                                             PROD_PRICE  int not null,
                                             primary key (PROD_ID),
                                             foreign key (PRO_ID) references product(PRO_ID),
                                             foreign key (SUPP_ID) references supplier(SUPP_ID)
                                             );

-- Order Table

create table if not exists `order` (
                                  ORD_ID      int not null,
                                  ORD_AMOUNT  int not null,
                                  ORD_DATE    date,
                                  CUS_ID      int not null,
                                  PROD_ID     int not null,
                                  primary key (ORD_ID),
                                  foreign key (CUS_ID) references customer(CUS_ID),
                                  foreign key (PROD_ID) references product_details(PROD_ID)
);

-- Rating Table 

create table if not exists rating (
                                   RAT_ID int not null,
                                   CUS_ID int not null,
                                   SUPP_ID int not null,
                                   RAT_RATSTARS int not null,
                                   primary key (RAT_ID),
                                   foreign key (SUPP_ID) references supplier(SUPP_ID),
                                   foreign key (CUS_ID) references customer(CUS_ID)
                                   );