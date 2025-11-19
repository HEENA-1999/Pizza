select * from pizza;
select cast(sum(total_price) as decimal(10,2)) as total_revenue from pizza;
select  cast(((cast(sum(total_price) as decimal(10,2))) / count(distinct(order_id))) as decimal(10,2) ) as avg_order_value from pizza;

select sum(quantity) as total_pizza_sold from pizza;
select count(distinct(order_id)) as total_order from pizza;

select cast((sum(quantity) / count(distinct(order_id))) as decimal(5,2)) as avg_pizza_per_order from pizza;

select  dayname(STR_TO_DATE(order_date, '%d-%m-%Y')) AS day_name, count(distinct(order_id)) as total_order from pizza group by dayname(STR_TO_DATE(order_date, '%d-%m-%Y')) 
order by count(distinct(order_id));

select  monthname(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month_name, count(distinct(order_id)) as total_order
from pizza group by monthname(STR_TO_DATE(order_date, '%d-%m-%Y')) order by count(distinct(order_id));
 
select  pizza_category, cast(sum(total_price) as decimal(10,2)) as cate_vise_sales, round((cast(sum(total_price) as decimal(10,2))*100/
(select cast(sum(total_price) as decimal(10,2)) as total_revenue from pizza)),2) as sales_per_pizza_cate
from pizza group by pizza_category; 

select  pizza_size, cast(sum(total_price) as decimal(10,2)) as pizza_size_sales, round((cast(sum(total_price) as decimal(10,2))*100/
(select cast(sum(total_price) as decimal(10,2)) as total_revenue from pizza)),2) as sales_per_size from pizza group by pizza_size; 

select  sum(quantity), pizza_category from pizza group by pizza_category;

select pizza_name, cast(sum(total_price) as decimal(10,2)) as total_revenue from pizza group by pizza_name order by  total_revenue desc limit 5;

select pizza_name, cast(sum(total_price) as decimal(10,2)) as total_revenue from pizza group by pizza_name order by  total_revenue  limit 5;

select pizza_name, count(distinct(order_id)) as total_order from pizza group by pizza_name order by  total_order desc limit 5;

select   pizza_name, count(distinct(order_id)) as total_order from pizza group by pizza_name order by  total_order limit 5;

select pizza_name, sum(quantity) as total_pizza_sold from pizza group by pizza_name order by total_pizza_sold desc limit 5;

select pizza_name, sum(quantity) as total_pizza_sold from pizza group by pizza_name order by total_pizza_sold limit 5;






























