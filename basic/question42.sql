-- 選手名とポジションを以下の形式で出力してください。
-- シングルクォートに注意してください。
-- 「ジュリオセザール選手のポジションは’GK’です」
select concat(name, "選手のポジションは\'", position, "\'です")
from players;