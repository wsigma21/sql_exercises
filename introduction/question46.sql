-- 副問い合わせを使って全体の平均身長と各ポジションの平均身長を抽出する。
-- select (select position,avg(height) from players group by position)

-- ans
-- 2列目はavg(height)でないと各ポジションの平均身長にならないよね？
select position,avg(height), (select avg(height) from players) as avg_height
from players
group by position
;