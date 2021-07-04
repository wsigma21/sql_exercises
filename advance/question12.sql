-- 日本VSコロンビア戦（pairings.id = 103）でのコロンビアの得点のゴール時間を表示してください

select * from goals;

select * from players;

select goal_time 
from goals
where pairing_id = 103
and player_id in (
  select id
  from players 
  where country_id =
   (select id from countries where name = 'コロンビア'))
;

-- ans
-- pairing_id は１試合につき２国それぞれ持っている。この試合の日本はpairings.id = 39
select * from goals where pairing_id = 103;