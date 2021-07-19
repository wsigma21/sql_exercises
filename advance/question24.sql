-- 身長の高い選手6位～20位を抽出し、以下の項目を表示してください。

select name, height, weight from players
where id not in (select id from (select id from players order by height desc limit 5) as tmp)
order by height desc
limit 20
;

-- 解答
select name, height, weight from players
order by height desc
limit 5, 15 -- 6位から15個のデータを取得（6+15-1=20位まで）
;

-- SELECT col_name1 [, col_name2 ...] FROM table_name
-- LIMIT [offset,] row_count 
-- offeset+1番目から、row_count個分のデータを取得