-- 	ワールドカップ開催当時（2014-06-13）の年齢をプレイヤー毎に表示する。

select
  date_format(birth, '%Y-%m-%d') as birth, 
  timestampdiff(YEAR,birth,'2014-06-13') as age,
  name,
  position
from players
order by age desc;