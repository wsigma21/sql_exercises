-- 全てのゴール時間と得点を上げたプレイヤー名を表示してください。オウンゴールは表示しないでください。ただし、結合は使わずに副問合せを用いてください。

select id, 
  (select name from players as p where p.id = g.player_id) as player_name, 
  goal_time
from goals as g
where g.player_id is not null
;

-- SELECT句にSELECT句を記述する場合の副問い合わせでは、返す行数は必ず１行になるようにする