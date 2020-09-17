create table f_cosmetic(
	cno number(30),   --화장품 번호
	name varchar(50),  -- 화장품 이름
	type varchar2(50) not null,   -- 타입
	brand varchar2(50)  not null,   --브랜드
	skinType varchar2(50)  not null, -- 비푸타입
	price number(30) default 0,    --화장품 번호
	tag varchar2(50) ,
	discountPersent number(30) default 0,
	stockNumber number(30) default 0,
	primary key(cno),
	unique(name)
);
-- 시퀀스
create sequence cno_seq  start with 1 increment by 1;
--  제약조건
-- alter table f_cosmetic add constraint f_cosmetic_fk_cno foreign key (cno) references f_description(cno);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE f_cosmetic DROP CONSTRAINT f_cosmetic_fk_cno;
drop table f_cosmetic;
select * from f_cosmetic;
delete from f_cosmetic;