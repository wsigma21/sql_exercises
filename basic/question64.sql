-- 全てのゴール時間と得点を上げたプレイヤー名を表示してください。
-- オウンゴールは表示しないでください。
-- ただし、結合は使わずに副問合せを用いてください。

select g.id, g.goal_time, (select p.name from players p where g.player_id = p.id) as 'player_name'
from goals as g
where g.player_id is not null;