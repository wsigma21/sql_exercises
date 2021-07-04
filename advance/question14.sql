-- 	グループCの各対戦毎にゴール数を表示してください。
-- ゴール数がゼロの場合も表示してください。副問合せは使わずに、外部結合だけを使用して下さい。

select * from pairings;

select * from goals;

select
  date_format(pa.kickoff,'%Y-%m-%d') as disp_kickoff,
  mc.name as 'my_country',
  ec.name as 'enemy_country',
  mc.ranking as 'my_ranking',
  ec.ranking as 'enemy_ranking',
  count(g.goal_time) as my_goals
from pairings pa
left outer join goals g on pa.id = g.pairing_id
left outer join countries mc on pa.my_country_id = mc.id
left outer join countries ec on pa.enemy_country_id = ec.id
where mc.group_name = 'C'
and kickoff between '2014-06-13 00:00:00' and '2014-06-27 23:59:59'
group by date_format(pa.kickoff,'%Y-%m-%d'),
  mc.name,
  ec.name,
  mc.ranking,
  ec.ranking
order by pa.kickoff, mc.ranking
;

-- 解説では、グループリーグだけに絞るために、where句にec.group_name = 'C'としているが、
-- 決勝リーグで同グループリーグの国が争う可能性もあるし、日付で絞った方が確実だと思われる