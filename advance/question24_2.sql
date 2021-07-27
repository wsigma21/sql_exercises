-- 身長の高い選手6位～20位を抽出し、以下の項目を表示してください。
-- ・名前
-- ・身長
-- ・体重

select name, height, weight from players
order by height desc
limit 5, 15;