-- 	各ポジションごとの総得点を表示してください。
select
  p.position,
  count(g.id) as goal_cnt
from goals g
left outer join players p on g.player_id = p.id
where g.player_id is not null
group by p.position
order by goal_cnt desc
;

-- ans
select
  p.position,
  count(g.id) as goal_cnt
from players p
left outer join goals g on g.player_id = p.id
group by p.position
order by goal_cnt desc
;
