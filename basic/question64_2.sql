-- 全てのゴール時間と得点を上げたプレイヤー名を表示してください。オウンゴールは表示しないでください。ただし、結合は使わずに副問合せを用いてください。

select g.id, g.goal_time, (select p.name from players p where p.id = g.player_id)
from goals g
where player_id is not null
;