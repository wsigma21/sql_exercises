--  すべての選手を対象として選手ごとの得点ランキングを表示してください。（SELECT句で副問合せを使うこと）
select
  p.name,
  count(g.id) as goal_cnt
from players p
left outer join goals g on p.id = g.player_id
group by p.id, p.name
order by goal_cnt desc
;