-- 全ての\ゴールの国名と選手名、得点時間を表示してください。オウンゴール（player_idがNULL）は表示しないでください。
-- select t3.name as '対戦国A', t5.name as '対戦国Aの選手名', t4.name as '対戦国B', t6.name as '対戦国Bの選手名', t2.goal_time as '特典時間'
-- from pairings t1
-- join goals t2 on t1.id = t2.pairing_id
-- join countries t3 on t1.my_country_id = t3.id
-- join countries t4 on t1.enemy_country_id = t4.id
-- join players t5 on t3.id = t5.country_id
-- join players t6 on t4.id = t6.country_id
-- where t2.player_id is not null
-- limit 30
-- ;

-- select t2.name as 'country_name',  t3.name as 'player_name', t4.goal_time
-- from pairings t1
-- join countries t2 on t1.my_country_id = t2.id
-- join players t3 on t2.id = t3.country_id
-- join goals t4 on t1.id = t4.pairing_id
-- ;

select c.name as 'country_name', p.name as 'player_name', g.goal_time
from goals g 
join players p on g.player_id = p.id
join countries c on p.country_id = c.id
where g.player_id is not null;