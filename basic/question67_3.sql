-- 各ポジションごと（GK、FWなど）に最も身長と、その選手名を表示してください。ただし、SELECT句に副問合せを使用してください。

-- SELECT句内のサブクエリは原則１行しか返しちゃいけないはず。。
select
  position,
  (select
    position, 
    max(height) as max_height
  from players
  group by position
  where m.max_height = p.height and m.position = p.position) as m, 
  name
from player p

-- サブクエリ内では名前の方を取ってくる！！
-- ans
select p.position, max(p.height) as max_height,
  (
  select
    n.name
  from players as n
  where max(p.height) = n.height and p.position = n.position
  ) as player_name
from players as p
group by position;

-- 仮に同じポジション・同じ最大身長の選手がいた場合、サブクエリが２行以上返すのでエラーになる。
-- 複数行のデータを返される恐れがある場合は、FROM句でのサブクエリの方が良い。