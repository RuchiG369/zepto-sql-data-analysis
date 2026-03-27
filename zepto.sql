drop table if exists zepto;

create table zepto(
sku_id serial primary key,
category varchar(120),
name varchar(150), 
mrp numeric(8,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellingPrice numeric(8,2),
weightInGms integer,
outOfStock boolean,
quantity integer
);
-- data exploration
--count of rows 
select count(*)from zepto;

--sample data
select*from zepto limit 10;

--null values 
select*from zepto 
where name is null
or 
category is null
or
mrp is null
or 
discountPercent is null
or 
availableQuantity is null
or 
discountedSellingPrice is null
or 
weightInGms is null
or 
outOfStock is null
or 
quantity is null;

--different product categories 
select distinct category
from zepto
order by category;

-- product in stock vs out of stock
select outOfStock,count(sku_id)
from zepto
group by outOfStock;

--product names present multiple times 
select name , count (sku_id) as "number of SKUs"
from zepto 
group by name 
having count (sku_id)>1
order by count (sku_id)desc;

-- data cleaning 
--products with price=0
select*from zepto
where mrp =0 or discountedSellingPrice=0;

delete from zepto 
where mrp=0;

--convert paise to rupees
update zepto 
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100;

select mrp,discountedSellingPrice from zepto 

Q1. Find the top 10 best-value products based on discount percentage.
select distinct name,mrp,discountPercent 
from zepto
order by discountPercent desc
limit 10;


Q2. Which products have a high MRP and are out of stock?
select distinct name,mrp
from zepto 
where outOfStock =TRUE and mrp>300
order by mrp desc;


Q3. Calculate estimated revenue for each category.
select category,
sum(discountedSellingPrice*availableQuantity)as total_revenue
 from zepto
 group by category
 order by total_revenue; 


Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name,mrp,discountPercent 
from zepto 
where mrp>500 and discountPercent<10
order by mrp desc,discountPercent desc;

Q5. Identify the top 5 categories with the highest average discount percentage.
select category,
round (avg(discountPercent),2)as avg_discount 
from zepto
group by category
order by avg_discount desc
limit 5;

Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name,weightInGms,discountedSellingPrice,
round(discountedSellingPrice/weightInGms,2)as price_per_gram
from zepto
where weightInGms >=100
order by price_per_gram;

Q7. Group products into categories such as Low, Medium, and Bulk.
select distinct name,weightInGms,
case when weightInGms <1000 then'low'
     when weightInGms <5000 then 'medium'
else 'bulk'
end as  weight_category
from zepto;

Q8. What is the total inventory weight per category?
select category,
sum(weightInGms* availableQuantity)as total_weight
from zepto
group by category
order by total_weight;










