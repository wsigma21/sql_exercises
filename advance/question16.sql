-- グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。自国のゴール数は副問合せを用いて表示してください。
-- ゴール数がゼロの場合も表示してください。問15の副問合せを用いたSQLにカラムを付けくわえる形で作成してください

select * from pairings;
select * from countries;
select * from goals;

select
  date_format(pa.kickoff, '%Y-%d-%m') as disp_kickoff,
  mc.name as 'my_country',
  ec.name as 'enemy_country',
  mc.ranking as 'my_ranking',
  ec.ranking as 'enemy_ranking',
  (select count(g.id) from goals g where pa.id = g.pairing_id) as 'my_goals',
  (select count(g2.id) from goals g2 where g2.pairing_id = 
    (select id from pairings pa2 where pa2.kickoff = pa.kickoff and pa2.my_country_id = pa.enemy_country_id)
  ) as 'enemy_goals'
from pairings pa
left outer join countries mc on pa.my_country_id = mc.id
left outer join countries ec on pa.enemy_country_id = ec.id
where mc.group_name = 'C' and ec.group_name = 'C'
order by pa.kickoff, mc.ranking;

-- 解答
select
  date_format(pa.kickoff, '%Y-%d-%m') as disp_kickoff,
  mc.name as 'my_country',
  ec.name as 'enemy_country',
  mc.ranking as 'my_ranking',
  ec.ranking as 'enemy_ranking',
  (select count(g.id) from goals g where pa.id = g.pairing_id) as 'my_goals',
  (select count(g2.id) from goals g2
    left outer join pairings pa2 on pa2.id = g2.pairing_id
    where pa2.my_country_id = pa.enemy_country_id and pa2.enemy_country_id = pa.my_country_id
  ) as 'enemy_goals'
from pairings pa
left outer join countries mc on pa.my_country_id = mc.id
left outer join countries ec on pa.enemy_country_id = ec.id
where mc.group_name = 'C' and ec.group_name = 'C'
order by pa.kickoff, mc.ranking;