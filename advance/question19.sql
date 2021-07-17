-- 年齢ごとの選手数を表示してください。

select 
  timestampdiff(year, birth, '2014-06-13') as age,
  count(*)
from players
group by timestampdiff(year, birth, '2014-06-13'); -- group by句に別名は使えない