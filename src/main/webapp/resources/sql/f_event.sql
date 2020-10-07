create table f_event(
	eno number(30),
	mno number(30),
	title varchar2(100),
	content  varchar2(3000),
	enable char(1) default 1,
	mappingURL varchar2(200),
	regdate date,
	moddate date
);
alter table f_event add mappingURL varchar2(100);
create sequence eno_seq increment by 1 start with 1;

drop table f_event;
select eno_seq.nextval from dual;

select ENO_SEQ.currval from dual;

select LAST_NUMBER from user_sequences where SEQUENCE_NAME = 'ENO_SEQ';

select * from user_sequences;
delete from f_event;