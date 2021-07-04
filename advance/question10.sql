-- オウンゴールの回数を表示する

select count(g.goal_time) from goals as g
where player_id is null;