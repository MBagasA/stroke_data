create table customer
(
	customer_id Int not null primary key ,
	order_date DATE,
	order_time TIME,
	age INT,
	gender VARCHAR(50)
);

create table product
(
	product_id Int not null primary key,
	Item_Purchased VARCHAR(50),
	Category VARCHAR(50),
	Size VARCHAR(50),
	Colour VARCHAR(50),
	Season VARCHAR(50)
);

create table Payment
(
	payment_id Int not null primary key,
	Purchase_Amount NUMERIC,
	Discount NUMERIC,
	Rating DECIMAL,
	Shipping_type VARCHAR(512),
	Promo_code VARCHAR(512),
	Payment_method VARCHAR(512)
);

insert into customer (customer_id,order_date,order_time,age,gender)
values
	(01,'2024-02-28','02:28:43',59,'Male'),
	(02,'2024-02-27','02:26:43',58,'Female'),
	(03,'2024-02-26','02:24:43',57,'Male'),
	(04,'2024-02-25','02:22:43',56,'Female'),
	(05,'2024-02-24','02:20:43',55,'Male'),
	
	(06,'2024-02-29','02:27:43',54,'Female'),
	(07,'2024-02-28','02:26:43',53,'Male'),
	(08,'2024-02-27','02:25:43',52,'Female'),
	(09,'2024-02-26','02:24:43',51,'Male'),
	(10,'2024-02-25','02:23:43',50,'Female'),
	
	(11,'2024-02-25','01:18:43',49,'Male'),
	(12,'2024-02-24','01:16:43',48,'Female'),
	(13,'2024-02-23','01:14:43',47,'Male'),
	(14,'2024-02-22','01:12:43',46,'Female'),
	(15,'2024-02-21','01:10:43',45,'Male'),
	
	(16,'2024-02-20','01:18:43',44,'Female'),
	(17,'2024-02-19','01:16:43',43,'Male'),
	(18,'2024-02-18','01:14:43',42,'Female'),
	(19,'2024-02-17','01:12:43',41,'Male'),
	(20,'2024-02-16','01:10:43',40,'Female'),
	
	(21,'2024-02-15','01:18:43',39,'Male'),
	(22,'2024-02-14','01:16:43',38,'Female'),
	(23,'2024-02-13','01:14:43',37,'Male'),
	(24,'2024-02-12','01:12:43',36,'Female'),
	(25,'2024-02-11','01:10:43',35,'Male'),
	
	(26,'2024-02-10','01:18:43',29,'Female'),
	(27,'2024-02-09','01:16:43',28,'Male'),
	(28,'2024-02-08','01:14:43',27,'Female'),
	(29,'2024-02-07','01:12:43',26,'Male'),
	(30,'2024-02-06','01:10:43',25,'Female');
	
select avg(age) as "rata rata umur" from consumer
select min (age) as "minimal umur" from consumer


--	tabel type clothes
insert into product (product_id,item_purchased,category,size,colour,season)
values 
	(1,  'Blouse',   'clothing', 'Large',         'Gray',      'Spring'),
	(2,  'Sweater',  'Clothing', 'Large',         'Maroon',    'Summer'),
	(3,  'Jeans',    'Clothing', 'Small',         'Maroon',    'Summer'),
	(4,  'Sandals',  'Footwear', 'Medium',        'Maroon',    'Summer'),
	(5,  'Blouse',   'Clothing', 'Medium',        'Blue',      'Spring'),
	(6, 'Sneakers',  'Footwear', 'Extra large',   'Black',     'Summer'),
	(7,  'Shirt',    'Clothing', 'Small',         'Gray',      'Fall'),
	(8,  'Shorts',   'Clothing', 'Large',         'Pink',      'Summer'),
	(9,  'Dress',    'Clothing', 'Large',         'White',     'Summer'),
	(10, 'Pants',    'Clothing', 'Extra Large',   'Blue',      'Summer'),
	(11, 'Jacket',   'Clothing', 'Extra Large',   'White',	   'Winter'),
	(12, 'Sweater',  'Clothing', 'Medium',        'Blue',      'Summer'),
	
	(13,  'Pants',    'clothing', 'Large',         'Blue',      'Spring'),
	(14,  'Jeans',    'Clothing', 'Extra Large',   'Maroon',    'Summer'),
	(15,  'Shirt',    'Clothing', 'Small',         'Black',     'Summer'),
	(16,  'Blouse',   'Clothing', 'Medium',        'Maroon',    'Spring'),
	(17,  'Blouse',   'Clothing', 'Medium',        'Blue',      'Spring'),
	(18,  'Sneakers', 'Footwear', 'Extra large',   'Black',     'Summer'),
	(19,  'Shirt',    'Clothing', 'Small',         'Gray',      'Fall'),
	(20,  'Shorts',   'Clothing', 'Large',         'Pink',      'Summer'),
	(21,  'Dress',    'Clothing', 'Large',         'White',     'Summer'),
	(22,  'Sneakers', 'Footwear', 'Extra Large',   'Blue',     'Summer'),
	(23,  'Jacket',   'Clothing', 'Extra Large',   'White',    'Winter'),
	(24,  'Sweater',  'Clothing', 'Medium',        'Blue',      'Summer'),	
		
	(25,  'Dress',    'Clothing', 'Large',         'White',     'Summer'),
	(26,  'Sneakers', 'Footwear', 'Extra Large',   'Blue',     'Summer'),
	(27,  'Jacket',   'Clothing', 'Extra Large',   'White',    'Winter'),
	(28,  'Sneakers', 'Footwear', 'Medium',        'Blue',     'Summer'),			
	(29,  'Sandals',  'Footwear', 'Large',         'White',     'Summer'),
	(30,  'Sneakers', 'Footwear', 'Extra Large',   'Blue',     'Summer');

INSERT INTO payment (payment_id, purchase_amount, discount, rating, shipping_type, promo_code, payment_method)
VALUES
    (1, 53000, 0.20, 4.8, 'Express',  'Yes',    'E-Wallet'),
    (2, 60000, 0.25, 4.7, 'Next Day', 'Yes',    'Bank Transfer'),
    (3, 55000, 0.15, 4.8, 'Same Day', 'No',     'Debit Card'),
    (4, 65000, 0.25, 4.6, 'Express',  'No',     'E-Wallet'),
    (5, 70000, 0.20, 4.5, 'Express',  'No',     'Debit Card'),
    (6, 55000, 0.20, 4.5, 'Express',  'Yes',    'E-Wallet'),
    (7, 70000, 0.25, 4.8, 'Next Day', 'Yes',    'Bank Transfer'),
    (8, 65000, 0.15, 4.7, 'Same Day', 'No',     'Debit Card'),
    (9, 85000, 0.25, 4.6, 'Express',  'No',     'Debit Card'),
    (10,40000, 0.20, 4.5, 'Express',  'No',     'Credit Card'),
    (11,40000, 0.20, 4.6, 'Express',  'Yes',    'Bank Transfer'),
    (12,50000, 0.25, 4.8, 'Next Day', 'Yes',    'Debit Card'),
    (13,55000, 0.15, 4.9, 'Same Day', 'No',     'Credit Card'),
    (14,60000, 0.25, 4.4, 'Express',  'No',     'E-Wallet'),
    (15,70000, 0.20, 4.5, 'Express',  'No',     'Debit Card'),
    (16,52000, 0.20, 4.8, 'Express',  'Yes',    'E-Wallet'),
    (17,40000, 0.25, 4.7, 'Next Day', 'Yes',    'Bank Transfer'),
    (18,75000, 0.15, 4.8, 'Same Day', 'No',     'Debit Card'),
    (19,35000, 0.25, 4.6, 'Express',  'No',     'E-Wallet'),
    (20,70000, 0.20, 4.5, 'Express',  'No',     'Debit Card'),
    (21,150000,0.30, 4.6, 'Express',  'Yes',    'Bank Transfer'),
    (22,240000,0.15, 4.8, 'Next Day', 'Yes',    'E-Wallet'),
    (23,250000,0.25, 4.7, 'Same Day', 'No',     'Debit Card'),
    (24,250000,0.20, 4.5, 'Express',  'No',     'Bank Transfer'),
    (25,90000, 0.30, 4.9, 'Express',  'No',     'Debit Card'),
    (26,250000,0.30, 4.7, 'Express',  'Yes',    'Bank Transfer'),
    (27,250000,0.15, 4.5, 'Next Day', 'Yes',    'E-Wallet'),
    (28,200000,0.25, 4.8, 'Same Day', 'No',     'Debit Card'),
    (29,100000,0.20, 4.0, 'Express',  'No',     'Bank Transfer'),
    (30,240000,0.30, 4.0, 'Express',  'No',     'Debit Card');


    --Looking for gender male with medium size
	select customer_id,gender,product_id,size from customer
	inner join product on product_id = customer_id
	where gender ='Male'and size ='Medium';

	--looking colou white and gender male
	select customer_id, product_id, colour,gender from customer 
	inner join product on product_id = customer_id 
	where colour ='White' and gender ='Male';
	
	--Looking gender female and purchase amount more than 90000
	select customer_id, product_id,payment_id,gender,purchase_amount from customer
	inner join product on product_id = customer_id
	inner join payment on payment_id= customer_id
	where gender ='Female'and purchase_amount  > 90000;
	
	--Looking most expensive and gender Male and colour white
	select customer_id, product_id, payment_id, gender, colour, purchase_amount from customer 
	inner join product on product_id = customer_id 
	inner join payment on payment_id = customer_id
	where gender ='Male' and colour ='White'
	order by purchase_amount desc
	limit 1;
	
	--Purchased more than 50000 and gender Female and youngest age
	select customer_id, product_id, payment_id,gender,age,purchase_amount from customer 
	inner join product on product_id = customer_id 
	inner join payment on payment_id = customer_id 
	where purchase_amount >50000 and gender = 'Female'
	order by age asc
	limit 1;
	
	--looking for payment by debit card and female gender and the most expensive
	select customer_id, gender,purchase_amount, payment_method from customer
	inner join product on product_id = customer_id
	inner join payment on payment_id = customer_id 
	where payment_method ='Debit Card' and gender ='Female'
	order by purchase_amount desc ;
	
	
	--looking customer male and high rating
	select customer_id,gender,rating from customer 
	inner join product on product_id = customer_id 
	inner join payment on payment_id = product_id
	where gender ='Male'
	order by rating desc;
	
	--looking highest rating wih gender female
	select customer_id, gender, purchase_amount, item_purchased, max(rating)as highest_rating from customer 
	inner join product on product_id = customer_id 
	inner join payment on payment_id = product_id
	where gender = 'Female'
	group by customer_id , gender,purchase_amount, item_purchased
	order by highest_rating desc;
	
	
--	looking highest price with gender male in 2024
	select customer_id, order_date,gender, max (purchase_amount)as Highest_price from customer
	inner join product on product_id = customer_id
	inner join payment on payment_id = product_id
	where gender ='Male'
	group by customer_id, order_date, gender
	order by highest_price desc
	limit 3;
	
	--looking oldest age with item_purchased sneakers
	select customer_id, max(age)as oldest_age, item_purchased,purchase_amount from customer
	inner join product on product_id = customer_id
	inner join payment on payment_id = product_id
	where item_purchased ='Sneakers'
	group by customer_id, item_purchased,purchase_amount
	order by oldest_age desc;
	
	--update product name 
	update product 
	set item_purchased =
	case product_id 
		when 8 then 'dress'
		when 20 then 'Jacket'
	end 
	where product_id in(8,20);
	
	--looking minimal purchase,age between 30 and 50 and gender male
	select customer_id,age,gender,item_purchased, min(purchase_amount)as low_price from customer 
	inner join product on product_id = customer_id 
	inner join payment on payment_id = product_id
	where age between 30 and 50 and gender = 'Male'
	group by customer_id,age,gender,item_purchased
	order by low_price
	limit 3;
	
    -- update Date 
    update customer
	set order_date = case customer_id 
		when 03 then cast ('2024-01-23'as date)
		when 04 then cast ('2024-01-24'as date)
		when 06 then cast ('2024-01-24'as date)
		when 07 then cast ('2024-01-26'as date)
		when 08 then cast ('2024-01-27'as date)
		when 11 then cast ('2024-01-28'as date)
		when 12 then cast ('2024-01-29'as date)
	end 
	where customer_id in(03,04,06,07,08,11,12);
      
   	--looking high price and gender male in month january
   	select customer_id,gender,order_date,item_purchased,max (purchase_amount)as high_price
   	from customer 
   	inner join product on product_id = customer_id
   	inner join payment on payment_id = product_id
   	where gender ='Male' and extract (month from order_date)= 01
    group by customer_id,gender,order_date,item_purchased
    order by high_price desc;
    
    
    
