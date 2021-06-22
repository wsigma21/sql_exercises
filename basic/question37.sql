-- 全選手の中でBMI値が20台の選手を抽出してください。
-- BMIは以下の式で求めることができます。
-- weight / POW(height / 100, 2)

select *, weight / POW(height / 100, 2) as "BMI"
from players
where 20 <= weight / POW(height / 100, 2) and weight / POW(height / 100, 2) < 21;