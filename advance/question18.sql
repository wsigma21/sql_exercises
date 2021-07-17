-- ブラジル（my_country_id = 1）対クロアチア（enemy_country_id = 4）戦のキックオフ時間（現地時間）を表示してください。

select 
  date_format(kickoff, '%Y-%m-%d %H-%i-%s') as kickoff,
  -- date_sub(kickoff, INTERVAL 12 HOUR) as kickoff_jp
  date_format(date_sub(kickoff, INTERVAL 12 HOUR), '%Y-%m-%d %H-%i-%s') as kickoff_jp
from pairings
where my_country_id = 1 and enemy_country_id = 4;