-- 各国の平均身長を高い方から順に表示してください。ただし、FROM句はplayersテーブルとして、テーブル結合を使わず副問合せを用いてください。

select (select name from countries where countries.id = players.country_id) as name, avg(height) 
from players
group by country_id
order by avg(height) desc;