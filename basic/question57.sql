-- CグループのFIFAランクの合計値を表示してください。

select sum(ranking) from countries
where group_name = 'C';