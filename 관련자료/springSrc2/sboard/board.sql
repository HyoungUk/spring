update board1 set readcount= 50 where num=235;
select * from board1 order by num desc;
update board1 set ref=num where num=257;
create table replyBoard (
	rno number primary key,
	bno number not null references board1(num),
	replytext varchar2(500) not null,
	replyer varchar2(50) not null,
	regdate date not null,
	updatedate date not null,
	del char(1)
);
alter table replyBoard add(del char(1));
update replyBoard set del='n';
insert into REPLYBOARD values(1,260,'대박','나야',sysdate,sysdate);
insert into REPLYBOARD values(2,260,'테스트','길동',sysdate,sysdate);