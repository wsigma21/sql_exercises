-- グループA以外に所属する国をすべて抽出してください。
-- ただし、「!=」や「<>」を使わずに、「NOT」を使用してください。
-- select * from countries
-- where group_name not in ("A");

-- ans 
select * from countries
where not group_name = ("A");