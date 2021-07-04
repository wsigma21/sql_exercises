-- 日本VSコロンビア戦の勝敗を表示して下さい。

select * from pairings where id in (39,103);

select * from goals where pairing_id in (39,103);

select
  mc.name,
  count(g.goal_time)
from goals g
join pairings pa on g.pairing_id = pa.id
left outer join countries mc on pa.my_country_id = mc.id
left outer join countries ec on pa.enemy_country_id = ec.id
where pa.id in (39,103)
group by mc.id, mc.name
;

-- ans
select
  c.name,
  count(g.goal_time)
from goals g
left outer join pairings p on p.id = g.pairing_id
left outer join countries c on p.my_country_id = c.id
where p.id = 39 or p.id = 103
group by c.name
;