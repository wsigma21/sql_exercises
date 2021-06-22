-- 出場国の国名が長い物から順に表示
select * from countries
order by length(name) desc;