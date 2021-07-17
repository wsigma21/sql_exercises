-- 年齢ごとの選手数を表示してください。ただし、5歳毎に合算して表示してください

select 
  case when timestampdiff(year, birth, '2014-06-13') between 15 and 19 then 15
  when timestampdiff(year, birth, '2014-06-13') between 20 and 24 then 20
  when timestampdiff(year, birth, '2014-06-13') between 25 and 29 then 25
  when timestampdiff(year, birth, '2014-06-13') between 30 and 34 then 30
  when timestampdiff(year, birth, '2014-06-13') between 35 and 39 then 35
  when timestampdiff(year, birth, '2014-06-13') between 40 and 44 then 40
  when timestampdiff(year, birth, '2014-06-13') between 45 and 49 then 45
  else null end as years,
  count(*)
from players
group by years; -- group by句に別名は使えないDBもあるので注意

select 
  timestampdiff(year, birth, '2014-06-13'),
  floor(timestampdiff(year, birth, '2014-06-13') / 5) * 5 as age
from players;-- group by句に別名は使えないDBもあるので注意


select 
  floor(timestampdiff(year, birth, '2014-06-13') / 5) * 5 as age,
  count(*)
from players
group by age;-- group by句に別名は使えないDBもあるので注意