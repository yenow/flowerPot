create table f_coupon(
	couNo int
	,couponName varchar2(100) unique
	,discountMoney int default 0
	,discountPercent int default 0
	,startDate date
	,endDate date,
	enable char(1) default 1
);

alter table f_coupon add couponName char(1);
alter table f_coupon modify enable char(1) default 1;

drop table f_coupon;

create sequence couNo_seq increment by 1 start with 1;

select * from f_coupon;

drop sequence couNo_seq;

update f_coupon set enable=1;