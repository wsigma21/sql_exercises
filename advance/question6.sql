-- すべての選手を対象として選手ごとの得点ランキングを表示してください。（SELECT句で副問合せを使うこと）

select * from goals;

select
  (select name from players p where p.id = g.player_id) as name,
  count(*)
from goals g
where player_id is not null
group by name
order by count(*) desc
;

-- 「すべての選手を対象として」！
-- ans
select
  p.name,
  p.position,
  p.club,
  (select count(id) from goals g where g.player_id = p.id) as goal_cnt
from players p
order by goal_cnt desc;
