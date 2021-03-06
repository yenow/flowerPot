create table f_brand(
	bno number(30) primary key,
	name varchar(100) unique,
	company varchar2(100) unique,
	busNo varchar2(50) null, --unique조건 추가하기
	ceoName varchar2(50),
	tel varchar2(50), --unique조건 추가하기
	email varchar2(50), --unique조건 추가하기
	postcode varchar2(50), 
	roadAddr varchar2(100),
	jibunAddr varchar2(100),
	extraAddr varchar2(100),
	detailAddr varchar2(100),
	introduce varchar2(3000),
	regDate date
);
-- 시퀀스
create sequence bno_seq increment by 1 start with 1;
--추가 제약조건추가 
alter table f_brand ADD UNIQUE (busNo)
alter table f_brand ADD UNIQUE (tel)
alter table f_brand ADD UNIQUE (email)



-- 테스트 데이터

insert into f_brand values (bno_seq.nextval,'이니스프리','(주)이니스프리','이니스프리','106-86-68127','임혜영','080-380-0114','innisfree@innisfree.com','04386','서울 용산구 한강대로 100','','(한강로2가)','아모레퍼시픽 신본사 7층 이니스프리','',sysdate);
insert into f_brand values (bno_seq.nextval,'더샘','(주)더샘인터네셔널','더샘','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'클리오','(주)클리오','클리오','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)더페이스샵','더페이스샵','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)헤라','헤라','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)시드물','시드물','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)바닐라코','바닐라코','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)미샤','(주)미샤','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)키스미','키스미','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)베네피트','베네피트','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'','(주)웨이크메이크','웨이크메이크','사업자번호','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);

insert into f_brand values (bno_seq.nextval,'이니스프리','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'더샘','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'클리오','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'더페이스샵','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'헤라','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'시드물','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'바닐라코','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'미샤','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'키스미','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'베네피트','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'웨이크메이크','000-0000-0000','인천시 부평구 청천동');






















drop table f_brand;
create sequence bno_seq increment by 1 start with 1;

select * from f_brand;

select count(*) from f_brand;