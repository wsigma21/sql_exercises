-- AグループのFIFAランク最上位を表示してください。

-- 冗長かなあ
select min(ranking) from countries
group by group_name
having group_name = 'A';

-- ans
select min(ranking) from countries
where group_name = 'A';