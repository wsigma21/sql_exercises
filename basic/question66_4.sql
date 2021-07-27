-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名、所属クラブを表示してください。ただし、FROM句に副問合せを使用してください。

-- max(height)のままだと駄目。
select
  p1.position,
  p1.height,
  name,
  club
from players p1
join (
    select 
      position, 
      max(height) as max_height
    from players
    group by position) as p2 on p1.position = p2.position and p1.height = p2.max_height
;

-- 解答
select 
  p1.position,
  p1.height,
  name,
  club
from  (
    select 
      position, 
      max(height) as max_height
    from players
    group by position)  p2
left outer join players as p1 
on p1.height = p2.max_height and p1.position = p2.position;