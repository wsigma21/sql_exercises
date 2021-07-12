-- すべての選手を対象として選手ごとの得点ランキングを表示してください。（SELECT句で副問合せを使うこと）

select
  name,
  (select count(*) from goals as g where g.player_id = p.id group by player_id) as goal_cnt
from players as p
order by goal_cnt desc
;