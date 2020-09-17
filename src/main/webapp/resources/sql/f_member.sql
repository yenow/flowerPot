create table f_member (
    mno number(30) primary key,
    id varchar2(100) unique,
    password varchar2(100),
    name varchar2(20),
    nickname varchar2(50),
    address varchar2(100),
    email varchar2(100) unique,
    gender varchar2(2),    
    birth varchar2(10),
    member_rank varchar2(15),
    enabled char(1) default '1',
    regdate date
);
alter table f_member add(enabled char(1) default '1');
alter table f_member add(regdate date);
alter table f_member add(unique(email));

drop table f_member;
drop table f_authority;

select * from tf_member;
-- 권한이 일반회원 1인 멤버 조회

-- 권한이 관리자 2인 멤버 조회

-- 권한이 판매자 3인 멤버 조회
create sequence mno_seq increment by 1 start with 1 minvalue 1;
select mno_seq.nextval from dual;

drop sequence mno_seq;
select * from f_member;

drop table f_member;
delete from f_member where name='윤신영';

insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 
values (mno_seq.nextval,'phantom1','tlsdud5089','윤신영','윤신영','주소','phantom_ysy@naver.com','M','11-29','골드','작성자');

insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 


select id, password from f_member where id = 'user0';