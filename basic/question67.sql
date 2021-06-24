-- 	各ポジションごと（GK、FWなど）に最も身長と、その選手名を表示してください。
-- ただし、SELECT句に副問合せを使用してください。

-- select 
--   (select 
--     position,
--     max(height)
--   from players as m
--   where m.max(height) = p.height and m.position = p.position 
--   group by position), 
--   p.name
-- from players as p
-- ;

-- ans
select p1.position, max(p1.height) as 'max_height',
  (
  select p2.name
  from players as p2
  where max(p1.height) = p2.height and p1.position = p2.position
  ) as getname
from players as p1
group by p1.position
;