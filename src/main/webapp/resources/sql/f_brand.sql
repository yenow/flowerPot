create table f_brand(
	bno number(30) primary key,
	name varchar2(50) unique,
	tel varchar2(50) not null,
	location varchar2(100) not null
);

drop table f_brand;
create sequence bno_seq increment by 1 start with 1;

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

select * from f_brand;