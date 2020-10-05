create table f_memberAddress(
	mno number(30),
	postcode varchar2(100),
	street_address varchar2(100),
	parcel_address varchar2(100),
	detail_address varchar2(100),
	more_infomation varchar2(100),
	deliver_state varchar2(100)
);

select * from f_memberAddress;

insert into f_memberAddress values (3,'postcode','street_address','parcel_address','detail_address','more_infomation','deliver_state');

-- 현재 계정 모든 테이블 조회
SELECT * FROM tab;