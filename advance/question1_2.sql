-- 各グループの中でFIFAランクが最も高い国と低い国のランキング番号を表示してください。

select group_name, max(ranking), min(ranking) from countries
group by group_name;