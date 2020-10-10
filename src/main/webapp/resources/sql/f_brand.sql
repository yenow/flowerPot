create table f_brand(
	bno number(30) primary key,
	name varchar(100) unique,
	company varchar2(100) unique,
	brandName varchar2(100) unique,
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
insert into f_brand values (bno_seq.nextval,'더샘','(주)더샘인터네셔널','더샘','106-86-68121','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'클리오','(주)클리오','클리오','106-86-68122','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'더페이스샵','(주)더페이스샵','더페이스샵','106-86-68123','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'헤라','(주)헤라','헤라','106-86-68124','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'시드물','(주)시드물','시드물','106-86-68125','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'바닐라코','(주)바닐라코','바닐라코','106-86-68126','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'미샤','(주)미샤','(주)미샤','106-86-68117','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'키스미','(주)키스미','키스미','106-86-68137','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'베네피트','(주)베네피트','베네피트','106-86-68147','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);
insert into f_brand values (bno_seq.nextval,'웨이크메이크','(주)웨이크메이크','웨이크메이크','106-87-68147','대표','전화번호','이메일','우편번호','도로명주소','지번주소','참고주소','상세주소','브랜드소개',sysdate);

delete from f_brand;



















drop table f_brand;
create sequence bno_seq increment by 1 start with 1;

select * from f_brand;

select count(*) from f_brand;