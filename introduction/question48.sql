-- 表副問い合わせを使ってグループAのランキング合計を表示する。（使用するテーブル:countries）

-- my answer
select sum(ranking)
from countries
where group_name = 'A'
;

-- use subquery
select sum
from (select sum(ranking) as sum from countries where group_name = 'A') as ranking_data
;