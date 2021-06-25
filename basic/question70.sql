-- 1980年生まれと、1981年生まれの選手が何人いるか調べてください。ただし、日付関数は使用せず、UNION句を使用してください。

select date_format(birth, '%Y') as '誕生年', count(*) from players
where date_format(birth, '%Y') = 1980
UNION
select date_format(birth, '%Y') as '誕生年', count(*) from players
where date_format(birth, '%Y') = 1981
;

-- ans
select '1980' as '誕生年',count(id) from players
where birth between '1980-01-01' and '1980-12-31'
UNION
select '1981' as '誕生年',count(id) from players
where birth between '1981-01-01' and '1981-12-31'
;