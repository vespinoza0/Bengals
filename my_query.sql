SELECT 
sum(case when Player = 'boyd' then "Yards" else 0 end) as "Boyd Yards",
sum(case when Player = 'higgins' then "Yards" else 0 end) as "Higgins Yards",
sum(case when Player = 'chase' then "Yards" else 0 end) as "Chase Yards",
(select concat(sum(case when "Result"='Win' then 1 else 0 end), '-',
	sum(case when "Result"='Loss' then 1 else 0 end)) as "Win/Loss"
	from (select distinct("Week"), "Result" from victor_espinoza) as foo)
from victor_espinoza