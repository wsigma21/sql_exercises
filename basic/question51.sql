-- 全てのゴール情報を出力してください。
-- ただし、オウンゴール（player_idがNULLのデータ）はIFNULL関数を使用してplayer_idを「9999」と表示してください。

select
id,
pairing_id,
case when player_id is null then 9999 else player_id end as "player_id",
goal_time
from goals
;