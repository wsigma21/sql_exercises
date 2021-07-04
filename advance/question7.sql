-- すべての選手を対象として選手ごとの得点ランキングを表示してください。（テーブル結合を使うこと）

select
  p.name,
  count(g.player_id)
from goals g
join players p on g.player_id = p.id
group by p.name
order by count(g.player_id) desc;

-- 「すべての選手を対象として」！
select
  p.name,
  p.position,
  p.club,
  count(g.id) as goal_cnt
from players p
left outer join goals g on p.id = g.player_id;

select
  p.name,
  p.position,
  p.club,
  count(g.id) as goal_cnt
from players p
left outer join goals g on p.id = g.player_id
group by p.id, p.name,p.position,p.club
order by goal_cnt desc;