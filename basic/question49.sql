-- 全選手の誕生日を「2017年04月30日」のフォーマットで出力してください。
select name, date_format(birth, '%Y年%m月%d日') as birthday from players;