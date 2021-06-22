-- オウンゴール（player_idがNULL）以外の総ゴール数を表示してください。ただし、WHERE句は使用しないでください。
-- select count(player_id) from goals;

select count(*) from goals;