-- 各グループごとの総得点数を表示して下さい。

select * from pairings;

select * from goals;

select * from countries;

select
  c.group_name,
  count(g.id)
from pairings pa
join countries c on pa.my_country_id = c.id
join goals g on pa.id = g.pairing_id
where kickoff between '2014-06-13' and '2014-06-27'
group by c.group_name
;


-- ans 時刻も入れる
select
  c.group_name,
  count(g.id)
from pairings pa
join countries c on pa.my_country_id = c.id
join goals g on pa.id = g.pairing_id
where kickoff between '2014-06-13 00:00:00' and '2014-06-27 23:59:59'
group by c.group_name
;