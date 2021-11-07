/* Insert Script */

-- Supplier Table

insert into ecom.supplier values(1,"Rajesh Retails","Delhi",'1234567890');
insert into ecom.supplier values(2,"Appario Ltd.","Mumbai",'2589631470');
insert into ecom.supplier values(3,"Knome products","Banglore",'9785462315');
insert into ecom.supplier values(4,"Bansal Retails","Kochi",'8975463285');
insert into ecom.supplier values(5,"Mittal Ltd.","Lucknow",'7898456532');

-- Customer Table

insert into ecom.customer values(1,"AAKASH",'9999999999',"DELHI",'M');
insert into ecom.customer values(2,"AMAN",'9785463215',"NOIDA",'M');
insert into ecom.customer values(3,"NEHA",'9999999999',"MUMBAI",'F');
insert into ecom.customer values(4,"MEGHA",'9994562399',"KOLKATA",'F');
insert into ecom.customer values(5,"PULKIT",'7895999999',"LUCKNOW",'M');

-- Category Table

insert into ecom.category values(1,"BOOKS");
insert into ecom.category values(2,"GAMES");
insert into ecom.category values(3,"GROCERIES");
insert into ecom.category values(4,"ELECTRONICS");
insert into ecom.category values(5,"CLOTHES");

-- Product Table

insert into ecom.product values(1,"GTA V","DFJDJFDJFDJFDJFJF",2);
insert into ecom.product values(2,"TSHIRT","DFDFJDFJDKFD",5);
insert into ecom.product values(3,"ROG LAPTOP","DFNTTNTNTERND",4);
insert into ecom.product values(4,"OATS","REURENTBTOTH",3);
insert into ecom.product values(5,"HARRY POTTER","NBEMCTHTJTH",1);

-- Product Details Table

insert into ecom.product_details values(1,1,2,1500);
insert into ecom.product_details values(2,3,5,30000);
insert into ecom.product_details values(3,5,1,3000);
insert into ecom.product_details values(4,2,3,2500);
insert into ecom.product_details values(5,4,1,1000);

-- Order Table

insert into ecom.order values (50,2000,"2021-10-06",2,1);
insert into ecom.order values(20,1500,"2021-10-12",3,5);
insert into ecom.order values(25,30500,"2021-09-16",5,2);
insert into ecom.order values(26,2000,"2021-10-05",1,1);
insert into ecom.order values(30,3500,"2021-08-16",4,3);

-- Rating Table

insert into ecom.rating values(1,2,2,4);
insert into ecom.rating values(2,3,4,3);
insert into ecom.rating values(3,5,1,5);
insert into ecom.rating values(4,1,3,2);
insert into ecom.rating values(5,4,5,4);