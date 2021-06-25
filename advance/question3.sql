-- 各国の平均身長を高い方から順に表示してください。ただし、FROM句はcountriesテーブルとしてください。

select c.name, avg(p.height)
from countries c
join players p on c.id = p.country_id
group by p.country_id, c.name -- c.nameも必要！！
order by avg(p.height) desc
;