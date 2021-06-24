-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。
-- ただし、FROM句に副問合せを使用してください。

-- select max_height.
-- from (select name, position, max(height) from players group by position) as max_height
-- ;

select m.position, m.max_height, p.name, p.club
from 
  (select position, max(height) as max_height from players group by position) as m
join players as p on (m.position = p.position and m.max_height = p.height);