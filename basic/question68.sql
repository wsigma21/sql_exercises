-- 全選手の平均身長より低い選手をすべて抽出してください。表示する列は、背番号、ポジション、名前、身長としてください。
select uniform_num, position,name,height
from players
where height < (select avg(height) from players)
;