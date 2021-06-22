-- 各グループの中でFIFAランクが最も高い国と低い国のランキング番号を表示してください。
select group_name as "グループ", min(ranking) as "ランキング最上位", max(ranking) as "ランキング最下位"
from countries
group by group_name;

