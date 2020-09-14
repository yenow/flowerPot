create table f_cosmetic(
	cno number(30),   --화장품 번호
	type varchar2(50),   --화장품 번호
	brand varchar2(50),   --브랜드
	category varchar2(50), -- 카테고리
	price number(30),    --화장품 번호
	tag varchar2(50),
	discountPersent number(30),
	stockNumber number(30),
	primary key(cno)
);
alter table f_component add (category varchar2(50));
alter table f_component drop column category;
create sequence cno_seq  start with 1 increment by 1;


--  제약조건
alter table f_cosmetic add constraint 제약조건 이름 foreign key () references ();

