create table f_order(
	orderno number(30) primary key,
	mno number(30),
	dno number(30),
	order_num varchar2(200),
	price 
);

create sequence orderno_seq increment by 1 start with 1;

alter table f_order add contraint f_order_fk_mno foreign key mno references f_member(mno);
alter table f_order add contraint f_order_fk_mno foreign key mno references f_delivery(dno);
