-- 全ゴールキーパーの平均身長、平均体重を表示してください

select avg(height), avg(weight)
from players
where position = 'GK';