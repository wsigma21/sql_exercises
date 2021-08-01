-- 年齢ごとの選手数を表示してください。ただし、5歳毎に合算して表示してください。
select
  FlOOR(TIMESTAMPDIFF(YEAR, birth, '2014-06-13') / 5) * 5 AS age,
  count(*) as player_count
from players
group by age;