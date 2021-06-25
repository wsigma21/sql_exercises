-- 以下のSQLで各選手のゴール数をカウントしています。
-- このSQLではplayer_idがNULLになってしまっているところは0と出力されています。
-- COALESCE関数を使って、この部分も正常にカウントさせれるように変更してください。

-- before
-- SELECT player_id, COUNT(player_id)
-- FROM goals
-- GROUP BY player_id;

SELECT player_id, COUNT(coalesce(player_id, 0))
FROM goals
GROUP BY player_id;