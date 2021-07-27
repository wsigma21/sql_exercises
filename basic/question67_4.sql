-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。ただし、SELECT句に副問合せを使用してください。

select 
  position, 
  (select 
    max(height) as max_height 
  from players
  group by position 
  where p1.position = p2.position and p2.max_height = p1.height) as p2,
  name, 
  club 
from players as p1
group by position
;

-- 解答
select
  p1.position,
  max(p1.height) as max_height,
  (
    select p2.name
    from players as p2
    where max(p1.height) = p2.height and p1.position = p2.position
  ) as name
from players p1
group by p1.position;