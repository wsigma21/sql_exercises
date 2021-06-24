-- 全ての試合のキックオフ時間と対戦国の国名を表示してください。

select date_format(p.kickoff,'%Y-%m-%d %T') as 'kickoff', c1.name as 'my_country', c2.name as 'enemy_country'
from pairings p
join countries c1 on p.my_country_id = c1.id
join countries c2 on p.enemy_country_id = c2.id
; 