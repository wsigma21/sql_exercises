-- 全てのゴール時間と得点を上げたプレイヤー名を表示してください。
-- オウンゴールは表示しないでください。ただし、副問合せは使わずに、結合を用いてください。

select g.id,g.goal_time, p.name
from goals g
join players p on g.player_id = p.id
where g.player_id is not null
;