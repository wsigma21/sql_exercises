-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。ただし、FROM句に副問合せを使用してください。

-- select position,max(height)
-- from players
-- group by position;

-- select p1.position, p1.max(height), p1.name, p1.club 
-- from players p1
-- join (
--       select
--         position,
--         max(height)
--       from players p2
--       group by position
--       ) as p2 
-- on p1.position = p2.position, p1.max(height) = p2.max(height);

-- ans
select p1.position, p2.max_height, p1.name, p1.club 
from players p1
right outer join (
      select
        position,
        max(height) as max_height
      from players p2
      group by position
      ) as p2 
on p1.position = p2.position and p1.height = p2.max_height;
