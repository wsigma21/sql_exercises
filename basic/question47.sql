-- 全ての選手のポジションの1文字目（GKであればG、FWであればF）を出力してください。
-- SUBSTRING(str,pos,len)
select *, substring(position, 1, 1) from players;
