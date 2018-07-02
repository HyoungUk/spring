-------id = together
-------password = together

----------------------mb_num(sequence)---------------------
create sequence mb_num_seq nomaxvalue;
drop sequence mb_num_seq;
-------------------------개인회원-----------------------------
create table member(
	mb_num int primary key,
	id varchar2(20),
	password varchar2(20),
	nick_name varchar2(20),
	name varchar2(20),
	tel varchar2(15),
	addr varchar2(150),
	gender varchar2(5),
	inside int,
	outside int,
	birth date,
	email varchar2(60),
	acountCr date,
	del char(1),
	manager char(1),
	host char(1)
)

select * from member;
delete from member where mb_num=23;
drop table member;
select * from tab;
update member set manager='y' where mb_num=2;
select nvl(max(t_num), 0) + 1 num from tboard;

----------------------host(sequence)--------------------
create sequence host_num_seq nomaxvalue;
drop sequence host_num_seq;
-------------------------host----------------------------
create table host(
	host_num int primary key,
	mb_num int,
	host_name varchar2(20),
	acountCr date,
	del char(1),
	FOREIGN KEY (mb_num) REFERENCES member(mb_num)
)

select * from host;
delete from host where host_num='44';
drop table host; 

-----------------------prg(sequence)----------------------
create sequence prg_seq nomaxvalue;
drop sequence prg_seq;
-----------------------프로그램------------------------
create table pgm
(
	num int primary key,
	host_num int,
	prgtype Varchar2(5),
	name varchar2(20),
	sidename varchar2(30),
	price int,
	place varchar2(60),
	content varchar(800),
	maximum int,
	period_start date,
	period_end date,
	start_date date,
	end_date date,
	make_date date,
	update_date date,
	wall_paper_url varchar2(120),
	wall_paper_name varchar2(60),
	FOREIGN KEY (host_num) REFERENCES host(host_num)
);

select * from pgm;
alter table pgm add update_date date
alter table pgm drop column update_date
drop table pgm; 

-----------------------프로그램 신청(sequence)----------------------
create sequence pgm_apply_seq nomaxvalue;
drop sequence pgm_apply_seq;
-----------------------프로그램 신청------------------------
create table pgmapply
(
	apply_num int primary key,
	mb_num int,
	pgm_num int,
	start_date date,
	end_date date,
	apply_day date,
	FOREIGN KEY (mb_num) REFERENCES member(mb_num),
	FOREIGN KEY (pgm_num) REFERENCES pgm(num)
);

select * from pgmapply;

drop table pgmapply;

--------------------------자유게시판-----------------------------
create table tboard
(
	t_num int, -- 게시글번호
	mb_num int, -- 회원번호
	nick_name varchar2(20),
	subject varchar2(50), -- 제목
	content varchar2(500), --내용
	readcount int, -- 조회수
	ref int, -- 답변글끼리 그룹
	re_step int, -- ref내의 순서
	re_level int, -- 들여쓰기
	ip varchar2(30), -- 작성자 ip
	reg_date date,  -- 작성일
	del char(1),
	PRIMARY KEY (t_num),
	FOREIGN KEY (mb_num) REFERENCES member(mb_num)
);
 
select * from tboard;
drop table tboard;

--------------------댓글게시판(sequence)------------------------
create sequence replytboard_seq nomaxvalue;
drop sequence replytboard_seq;
--------------------자유게시판(댓글게시판)-------------------------
create table replytboard (
	rno number primary key, --댓글 번호
	tno number not null references tboard(t_num),--게시글번호
	mno number not null references member(mb_num),
	replytext varchar2(500), --댓글
	replyer varchar2(50), --댓글작성자
	regdate date, --작성일
	updatedate date, --수정일
	startRow int,
	endRow int,
	del char(1)
);
select * from replytboard where tno=20 order by rno;
select * from (select a.*,rownum rn from (select * from  replytboard where tno=22 order by rno) a) where rn between 1 and 10;
select * from replytboard;
drop table replytboard;

-------------------------공지사항------------------------------
create table tboard_no
(
	n_num int, --공지사항 게시글 번호
	mb_num int, --회원번호
	nick_name varchar2(20),
	subject varchar2(50), -- 제목
	content varchar2(500), --내용
	readcount int, -- 조회수
	reg_date date,  -- 작성일
	del char(1)
);

select * from tboard_no;
drop table tboard_no;


-------------------------QnA------------------------------
-- 1. 프로그램번호 2. 현재유저번호?  3. 질문 제목 4. 질문내용 5. 지워졌냐? 6. 작성일 7. 수정일 --
-- 1. 프로그램번호로 Q&A 구분 2. 현재유저번호로 자신의 리플이면 수정, 삭제 가능여부 3. 답글을 호스트만 입력이 가능하면 필요없음 4. 호스트와 일반회원 구분(작성자) --

create table QnA 
(
	rno number primary key, --Q&A 번호
	pgm_num int,
	replytext varchar2(500), --Q&A
	replyer varchar2(50), --Q&A 작성자
	regdate date, --작성일
	updatedate date, --수정일
	del char(1)
);

select * from QnA;
drop table QnA;