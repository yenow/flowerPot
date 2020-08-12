-- magazine

create table magazine (
	mgno number(30),
	title varchar2(100) not null,
	content varchar2(3000) not null,
	category varchar2(50),
	regdate date,
	moddate date,
	imgSrc varchar2(100),
	constraint magazine_mgno_pk primary key (mgno)
	-- mno 필요
	-- mno 외래키 제약조건 필요
);

drop table magazine;

-- 메거진 시퀀스
create sequence mgno_seq increment by 1 start with 1;