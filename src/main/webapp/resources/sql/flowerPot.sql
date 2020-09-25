-- magazine

create table f_magazine (
	mgno number(30),
	title varchar2(100) not null,
	content varchar2(3000) not null,
	category varchar2(50),
	regdate date,
	moddate date,
	UUIDName varchar2(100),
	originalName varchar2(100),
	rootfolder varchar2(100),
	constraint f_magazine_mgno_pk primary key (mgno)
	-- mno 필요
	-- mno 외래키 제약조건 필요
);

drop table magazine;
select * from magazine;

-- 메거진 시퀀스  foreign key (deptno) references deptno(deptno)
create sequence mgno_seq increment by 1 start with 1;

create table deptno(
	deptno number(38) primary key
);

create table dept71 (
	deptno number(38) constraint dept71_deptno_pk primary key,
	dname varchar2(100) constraint dept71_dname_nn not null, 
	LOC varchar2(150)
);

drop table dept71;

insert into dept71 values (10,'관리부','서울');
insert into dept71 values (20,'영업부','부산');
insert into dept71 values (30,'개발부','판교');
select * from dept71;


create table emp71  (
	empno number(38) constraint emp71_empno_pk primary key,
	ename varchar2(100) constraint emp71_ename_nn not null, 
	job varchar2(100),
	deptno number(38), 
	constraint emp71_deptno_fk foreign key (deptno) references dept71(deptno)   
);

insert into emp71 values (11,'홍길동','관리원',10);
insert into emp71 values (12,'이순신','영업사원',20);
select * from emp71;

