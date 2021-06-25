-- 各グループの最上位と最下位を表示し、その差が50より大きいグループを抽出してください。
select group_name, max(ranking),min(ranking)
from countries
group by group_name
having max(ranking) - min(ranking) > 50;