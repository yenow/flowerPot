create table f_authority (
   auno number(30),
   mno number(30),
   authority varchar2(50),
   authority_name varchar2(50),    --권한이름
	primary key(auno)
);
create sequence auno_seq increment by 1 start with 1 minvalue 1;
