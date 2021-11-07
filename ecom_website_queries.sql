 -- Solution 3
 
  select count(cust.cus_id) cust_count,cust.cus_gender 
    from ecom.Customer cust
   inner join  ecom.order ord
      on cust.cus_id = ord.cus_id
   where ord.ord_amount >=3000
   group by cust.cus_gender;

 -- Solution 4
 
  select pro.PRO_NAME, ord.*
    from ecom.order ord
   inner join ecom.product_details prod
	  on ord.prod_id = prod.prod_id
   inner join ecom.product pro 
      on pro.pro_id = prod.pro_id
   where ord.CUS_ID = 2 ;
  
  -- Solution 5:
  
  select sup.supp_id,sup.supp_name,sup.supp_city,sup.supp_phone,count(prod.prod_id) total_products
    from ecom.Supplier sup
   inner join ecom.product_details prod
      on sup.SUPP_ID = prod.supp_id
   inner join ecom.product pro
      on pro.pro_id = prod.pro_id   
   group by sup.supp_id, sup.supp_name,sup.supp_city,sup.supp_phone
  having count(prod.prod_id) > 1;
 
 -- Solution 6:
 
 select cat.cat_name 
   from ecom.Category cat
        inner join ecom.product pro
           on cat.cat_id = pro.cat_id
		inner join ecom.product_details prod
           on pro.pro_id = prod.pro_id
  where prod.PROD_ID in (select prod_id 
                           from ecom.order
                          where ord_amount = (select min(ord_amount) 
                                                from ecom.order)
						);
 
-- Solution 7:

  select pro.pro_id,pro.pro_name, ord.ord_date
    from ecom.order ord
   inner join ecom.product_details prod
      on ord.prod_id = prod.prod_id
   inner join ecom.product pro
      on pro.pro_id = prod.pro_id
   where ord.ord_date > "2021-10-05"
   order by pro_id;
    
-- Solution 8:

  select sup.supp_id,sup.supp_name,rate.rat_ratstars,cust.cus_name 
    from (select * 
          from ecom.rating
         order by rat_ratstars desc limit 3) rate
   inner join ecom.Supplier sup
      on rate.supp_id = sup.supp_id
   inner join ecom.Customer cust
      on rate.cus_id = cust.cus_id; 
  
-- Solution 9:
-- 1# 
  select * 
    from ecom.Customer cust
   where cus_name like 'A%' or  cus_name like '%A';
  
 -- 2# Shows better explain plan result
  select * 
    from ecom.Customer cust
   where cus_name like 'A%'
  union all
  select * 
    from ecom.Customer cust
   where cus_name like '%A';

-- Solution 10
  
  select sum(ord.ord_amount) "Total Ordered Amount" 
    from ecom.order ord
   inner join ecom.Customer cust
      on cust.cus_id = ord.cus_id
   where cust.cus_gender = 'M';
 
-- Solution 11:
 
  select CUST.* 
    from ecom.Customer cust
    left outer join ecom.order ord
      on cust.cus_id = ord.cus_id;