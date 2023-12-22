select title, b.board_id, reply_id, r.writer_id, r.contents, 
date_format(r.created_date, '%Y-%m-%d') as created_date
from used_goods_reply r inner join used_goods_board b
on date_format(b.created_date,'%Y-%m') = '2022-10' and b.board_id = r.board_id
order by r.created_date, b.title