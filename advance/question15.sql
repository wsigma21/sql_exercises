-- グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。自国のゴール数は副問合せを用いて表示してください。

select
  date_format(pa.kickoff, '%Y-%d-%m') as disp_kickoff,
  mc.name as 'my_country',
  ec.name as 'enemy_country',
  mc.ranking as 'my_ranking',
  ec.ranking as 'enemy_ranking',
  (select count(g.id) from goals g where pa.id = g.pairing_id) as goals
from pairings pa
left outer join countries mc on pa.my_country_id = mc.id
left outer join countries ec on pa.enemy_country_id = ec.id
where mc.group_name = 'C' and ec.group_name = 'C'
order by pa.kickoff, mc.ranking;