-- 身長の高い選手ベスト5を抽出し、以下の項目を表示してください。

select name, height, weight from players
order by height desc
limit 5;