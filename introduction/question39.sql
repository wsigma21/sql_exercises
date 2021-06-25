-- 2014 FIFAワールドカップ開催時（2014年6月12日）に35歳以上だった選手をDATE_ADD関数を使用して抽出してください。

select name 
from players
where date_add(birth,interval 35 year) <= '2014-06-12';