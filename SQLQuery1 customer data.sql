create database customerdata 
select * from [dbo].[customer data project]

....Question 1...
select region , count(distinct customerid) as total_customers 
FROM  [dbo].[customer data project]
Group by region;

.....Question 2..
select top 1subscriptiontype,
count(distinct customerid) as total_customers
from [dbo].[customer data project]
Group by subscriptiontype
order by total_customers desc;

....Question 3
select customerid
from [dbo].[customer data project]
where datediff(month, subscriptionstart, subscriptionend) <=6;

.....question 4..
select AVG(DATEDIFF(day,subscriptionstart,subscriptionend)) as 
avg_subscription_duration
from [dbo].[customer data project]

....question 5
select customerid 
from[dbo].[customer data project]
where datediff(month, subscriptionstart,
subscriptionend) > 12;

....question 6
select subscriptiontype,
sum (revenue) as total_revenue 
from [dbo].[customer data project]
Group by subscriptiontype;

...question 7
select top 3 region, 
count(*) as subscriptionend_count 
from [dbo].[customer data project]
where subscriptionend is null 
Group by region
order by subscriptionend_count desc;