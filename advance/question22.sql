-- 以下の条件でSQLを作成し、抽出された結果をもとにどんなことが分析できるか考えてみてください。
-- ・5歳単位、ポジションでグループ化
-- ・選手数、平均身長、平均体重を表示
-- ・順序は年齢、ポジション

select
  floor(timestampdiff(year,birth, '2014-06-13') / 5) * 5 as age,
  position,
  count(*) as player_count,
  avg(height),
  avg(weight)
from players
group by age, position
order by age;