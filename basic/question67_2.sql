-- 	各ポジションごと（GK、FWなど）に最も身長と、その選手名を表示してください。ただし、SELECT句に副問合せを使用してください。
-- select position, height, name,
-- (select position, max(height) as "max_height" from players p where p.position = o.position and max_height = o.height group by position)
-- from players as o
-- ;

-- ans
select p1.position, max(p1.height) as max_height,
  (select 
    p2.name
  from players p2
  where max(p1.height) = p2.height and p1.position = p2.position) as name
from players p1
group by p1.position
;