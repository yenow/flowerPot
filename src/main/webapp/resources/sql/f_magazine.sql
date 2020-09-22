create table f_magazine (
	mgno number(30),
	mno number(30),
	title varchar2(100) not null,
	name varchar2(100) not null,   -- 글쓴이
	content varchar2(3000) not null,  -- 내용
	category varchar2(50),  -- 카테고리
	regdate date,
	moddate date,
	UUIDName varchar2(100),
	originalName varchar2(100),
	rootfolder varchar2(100),
	constraint f_magazine_mgno_pk primary key (mgno)
);
-- 매거진 왜래키 설정
--alter table f_magazine add constraint f_magazine_fk_mno foreign key (mno) references f_member(mno);

-- 메거진 시퀀스
create sequence mgno_seq increment by 1 start with 1;

