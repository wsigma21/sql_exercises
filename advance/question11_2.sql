-- 各グループごとの総得点数を表示して下さい。

select * from pairings;

select c.group_name, count(*) as goal_count from goals as g 
left outer join pairings as p on g.pairing_id = p.id
left outer join countries as c on p.my_country_id = c.id
where p.kickoff between '2014/06/13 00:00:00' and '2014/06/27 23:59:59'
group by c.group_name
;