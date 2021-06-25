-- 身長が195㎝より大きいか、体重が95kgより大きい選手を抽出してください。
-- ただし、以下の画像のように、どちらの条件にも合致する場合には2件分のデータとして抽出してください。また、結果はidの昇順としてください。

select id, position,name,height,weight
from players
where height > 195
union all -- 重複を排除しない
select id, position,name,height,weight
from players
where weight > 95
order by id
;