-- 全てのゴール情報を出力してください。
-- ただし、オウンゴール（player_idがNULLのデータ）はIFNULL関数を使用してplayer_idを「9999」と表示してください。
select id, pairing_id, ifnull(player_id, '9999'), goal_time from goals;