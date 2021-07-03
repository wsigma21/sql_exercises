-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。ただし、FROM句に副問合せを使用してください。

select p.position, m.max_height, name, club
from players as p
join
  (select
    position,
    max(height) as max_height
  from players
  group by position
  ) as m
on p.position = m.position and m.max_height = p.height;

