-- 年齢ごとの選手数を表示してください。ただし、10歳毎に合算して表示してください。

select 
  case when timestampdiff(year, birth, '2014-06-13') between 10 and 19 then 10
  when timestampdiff(year, birth, '2014-06-13') between 20 and 29 then 20
  when timestampdiff(year, birth, '2014-06-13') between 30 and 39 then 30
  else 40 end as years,
  count(*)
from players
group by years; -- group by句に別名は使えないDBもあるので注意

-- 解答 一の位を切り捨て
select
  truncate(timestampdiff(year, birth, '2014-06-13'),-1) as age,
  count(*)
from players
group by age;

-- 別解 10で割って小数点以下切り捨て
select
  floor(timestampdiff(year, birth, '2014-06-13')/10) as age,
  count(*)
from players
group by age;