select GeoID, sum(Amount), avg(Amount), sum(boxes)
from sales
group by GeoID;
select G.Geo, sum(Amount), avg(Amount), sum(boxes)
from sales S
join geo g on S.GeoID = G.GeoID
group by G.Geo;
select pr.category, p.team, sum(boxes), sum(amount)
from sales as S
join people P on p.SPID = S.SPID
join products pr on pr.PID = S.PID
where p.team <> ''
group by pr.category, p.team
order by pr.category, p.team; 
select pr.product, sum(s.amount) as 'Total amount'
from sales S
join products pr on pr.PID = s.pid
group by pr.Product
order by 'Total amount' desc
limit 10; 