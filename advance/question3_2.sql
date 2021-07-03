-- 各国の平均身長を高い方から順に表示してください。ただし、FROM句はcountriesテーブルとしてください。

select c.id, c.name, avg(height) as avg_height
from countries as c
join players as p on c.id = p.country_id
group by c.id, c.name
order by avg_height desc;

-- group byにはidを使用する。
-- 表示用にselect句にnameを書いているので、group by句にも書く。
