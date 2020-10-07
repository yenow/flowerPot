create table f_member (
    mno number(30),
    id varchar2(100) not null,
    password varchar2(100),
    name varchar2(20) not null,
    nickname varchar2(50),
    address varchar2(100),
    email varchar2(100),
    phone varchar2(100),
    gender varchar2(2),    
    tel varchar2(100),
    birth varchar2(10),
    member_rank varchar2(15) default '씨앗',  -- 씨앗, 새싹, 꽃, 나무
    enabled char(1) default '1',
    regdate date,
    point number(30) default 0,  -- 포인트
    brand varchar2(100),
    primary key(mno),
    unique(id)
);

ALTER TABLE f_member DROP PRIMARY KEY;
alter table f_member add brand varchar2(100);

create sequence mno_seq increment by 1 start with 1 minvalue 1;
select * from f_member;
---------------------------------------------------------------------------------------------------------------------------------------------------
select mno_seq.nextval from dual;

drop sequence mno_seq
select * from f_member;

alter table f_member modify nickname varchar2(50) not null
drop table f_member;
delete from f_member where name='윤신영';
delete from f_member where name='관리자';

insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,regdate) 
values (mno_seq.nextval,'admin','0000','관리자','대통령','주소','yjk7454@naver.com','M','11-29','골드',sysdate);
-- 관리자 권한으로 로그인이 안되는 이유는 패스워드암호화가 안되기 때문에 이곳에서 추가하지 않고 src/test/java에있는 security패키지의 MemberTest.java에서 암호화된 로직으로 추가해준다.

alter table f_member rename constraint (nick not null);
insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 
values (mno_seq.nextval,'phantom1','tlsdud5089','윤신영','윤신영','주소','phantom_ysy@naver.com','M','11-29','골드','작성자');
insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 
values (mno_seq.nextval,'admin0','0000','받성은','관리자','주소','1234@naver.com','M','11-29','골드','곤리자');

update f_member set tel='010-2124-5690' where name='윤신영';

insert into f_member (mno,id,password,name,nickname,address,email,gender,birth,member_rank,authority ) 


select id, password from f_member where id = 'user0';
values (mno_seq.nextval,'phantom2','tlsdud5089','윤신영','윤신영','주소','phantom_ysy@naver.com','M','11-29','골드','일반회원');

alter table f_member add(tel varchar2(100));
alter table f_member add(phone varchar2(100));
alter table f_member drop column phone;

