-- 全ての試合のゴール時間と選手名、国名を表示してください。また、オウンゴール（player_idがNULL）も表示してください。

select c.name as 'country_name', g.goal_time, p.position, p.name as 'player_name'
from goals g
left outer join players p on g.player_id = p.id
left outer join countries c on p.country_id = c.id
;