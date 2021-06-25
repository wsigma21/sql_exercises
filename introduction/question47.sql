-- ANYを使った複数行副問い合わせで日本よりランキングが上の国を表示する。（使用するテーブル:countries）

-- my answer
select * from countries
where ranking < (select ranking from countries where name = '日本')
order by ranking;

-- any
select * from countries
where ranking < any(select ranking from countries where name = '日本' )
;