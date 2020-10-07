create table f_hasCoupon(
	hasCno number(30),
	mno number(30),
	couNo number(30)
);

create sequence hasCno_seq increment by 1 start with 1;

drop table f_hasCoupon;

select * from f_hasCoupon;
delete from f_hasCoupon;