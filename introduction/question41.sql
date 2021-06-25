-- 2014年ワールドカップ開催時の世界ランキング1位の国には”王者”、
-- 2位～9位の国には”強豪”、それ以外の国には”チャレンジャー”というふうに分類を行ってください。

select ranking, name, 
case 
when ranking = 1 then '王者'
when ranking between 2 and 9 then '強豪'
else 'チャレンジャー'
end as 'category'
from countries
order by ranking;