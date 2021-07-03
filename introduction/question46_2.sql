-- 副問い合わせを使って全体の平均身長と各ポジションの平均身長を抽出する。

select position, avg(height),
  (select avg(height) from players) as avg_all
from players
group by position;