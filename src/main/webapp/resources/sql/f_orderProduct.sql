create table f_orderProduct(
	ono number(30) primary key,
	mno number(30),  -- 제약조건
	cno number(30),	 -- 제약조건
	dno number(30),  -- 제약조건
	order_num varchar2(100),  --주문번호
	amount number(30),   --주문량
	state varchar2(100) default '주문완료',  -- 
	deliver_state varchar2(100) default '배송시작',  -- 배송상태
	member_rank varchar2(30) default '새싹',  --회원등급
	point number(30),   --포인트 사용
	coupon_name varchar2(50),   -- 사용한 쿠폰번호
	regdate date,   -- 구입날짜
	tel varchar2(30),    -- 비회원용 전화번호
	email varchar2(100),   -- 비회원용 이메일
	final_price number(30),  -- 최종 액수
	brand varchar2(100)
);

create sequence ono_seq increment by 1 start with 1;

drop table f_orderProduct;
select * from f_orderProduct;


drop sequence ordPro_seq;
 
insert into f_orderProduct values(ono_seq.nextval, 3, 111, 222,'주문번호1414', 2, '주문완료','배송시작','새싹',1500,'쿠폰번호',sysdate,'010-1111-1111','bbbb@naver.com',1300,'이니스프리');
insert into f_order values(orderno_seq.nextval,3,222,'주문번호1414');
insert into f_orderProduct values(ono_seq.nextval, 3, 111, 222,'주문번호1415', 2, '주문완료','배송시작','새싹',1500,'쿠폰번호',sysdate,'010-1111-1111','bbbb@naver.com',1300,'이니스프리');
insert into f_order values(orderno_seq.nextval,3,222,'주문번호1415');
insert into f_orderProduct values(ono_seq.nextval, 3, 111, 222,'주문번호1416', 2, '주문완료','배송시작','새싹',1500,'쿠폰번호',sysdate,'010-1111-1111','bbbb@naver.com',1300,'이니스프리');
insert into f_order values(orderno_seq.nextval,3,222,'주문번호1416');

select * from f_cosmetic where brand = '이니스프리';

select * from f_orderProduct;
select * from f_order;
select * from f_member;
update f_member set brand= '이니스프리' where mno = 3;
