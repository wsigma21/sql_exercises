-- オウンゴールとなったゴールを抽出してください。
-- goalsテーブルのplayer_idカラムにNULLが格納されているデータがオウンゴールを表しています。

-- select * from goals;

select * from goals
where player_id is null;
