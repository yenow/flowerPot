create table f_authority (
   auno number(30) primary key,
   id varchar2(100),   -- 멤버 id 명
   authority varchar2(50)  -- 권한이름
);
-- 시퀀스
create sequence auno_seq increment by 1 start with 1 minvalue 1; 
-- 제약조건
alter table f_authority add constraint f_authority_fk_id foreign key (id) references f_member(id);  -- 제약조건 추가


insert into f_authority  values (auno_seq.nextval, 'seongen' , 'ROLE_ADMIN');