-- 全ての試合のゴール時間と選手名を表示してください。右側外部結合を使用してオウンゴール（player_idがNULL）も表示してください。

select g.goal_time, p.uniform_num, p.position, p.name
from players p
right outer join goals g on g.player_id = p.id
;