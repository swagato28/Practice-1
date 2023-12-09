show tables;
desc sales;
select * from sales;
select SaleDate, Amount, Customers, Boxes from sales;
select SaleDate, Amount, Boxes, Amount / Boxes from sales;
select SaleDate, Amount, Boxes, Amount / Boxes 'Amount epr box' from sales;
select * from sales
where amount > 10000
order by amount desc;
select * from sales
where GeoId='G1'
order by PID, Amount desc;
select * from sales
where SaleDate>= '2022-01-01' and Amount> 10000;
select SaleDate, Amount from sales
where Amount> 10000 and year(SaleDate) = 2022
order by amount desc;
select * from sales
where boxes >0 and boxes <=50;
select * from sales
where boxes between 0 and 50;
select 	SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from sales
where weekday(SaleDate) = 4;
select * from people
where team = 'Delice' or 'Juices';
select * from people
where team in ('Delish', 'Juices');
select * from people
where salesperson like 'D%';
select * from people
where salesperson like 'B%';
select SaleDate, Amount,
	   case 	when amount < 1000 then 'Under 1K'
				when amount < 5000 then 'Under 5K'
				when amount <10000 then 'Under 10K'
			else '10K or more'
	   end as 'Amount category'
from sales;
