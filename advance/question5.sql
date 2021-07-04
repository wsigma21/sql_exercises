-- キックオフ日時と対戦国の国名をキックオフ日時の早いものから順に表示してください。

select * from pairings;

-- サブクエリ使用
select 
  (select name from countries mc where mc.id = p.my_country_id) as '国名A',
  (select name from countries ec where ec.id = p.enemy_country_id) as '国名B', 
   date_format(kickoff,"%Y-%m-%d %H-%i-%s") as time
from pairings p
order by kickoff
;

-- 結合使用
select
  mc.name as '国名A',
  ec.name as '国名B',
  date_format(kickoff,"%Y-%m-%d %H-%i-%s") as time
from pairings p
join countries mc on p.my_country_id = mc.id
join countries ec on p.enemy_country_id = ec.id
order by kickoff
;
