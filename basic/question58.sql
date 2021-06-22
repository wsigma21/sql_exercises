-- 全ての選手の所属国と名前、背番号を表示してください。

select t1.name as "country_name", t2.name as "player_name", t2.uniform_num
from countries as t1
join players as t2 on t1.id = t2.country_id
;