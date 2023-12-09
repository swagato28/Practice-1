select * from sales;
select * from people;
select S.SaleDate, S.Amount
from sales as S;
select S.SaleDate, S.Amount, P.Salesperson, S.SPID, P.SPID
from sales as S
join people P on P.PID = S.PID;

select S.SaleDate, S.Amount, P.Salesperson, PR.Product, P.Team
from sales as S
join people P on P.SPID = S.SPID
join products PR on PR.PID = S.PID
join geo G on G.GeoID = S.GeoID
where S.Amount < 500
and P.Team = '';