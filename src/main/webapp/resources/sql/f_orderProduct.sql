create table f_orderProduct(
	ono number(30) primary key,
	mno number(30),  -- 제약조건
	cno number(30),	 -- 제약조건
	dno number(30),  -- 제약조건
	order_num varchar2(100),  --주문번호
	amount number(30),   --주문량
	state varchar2(100),  -- 
	deliver_state varchar2(100),  -- 배송상태
	member_rank varchar2(30),  --회원등급
	point number(30),   --포인트 사용
	coupon_name varchar2(50),   -- 사용한 쿠폰번호
	regdate date,   -- 구입날짜
	tel varchar2(30),    -- 비회원용 전화번호
	email varchar2(100),   -- 비회원용 이메일
	final_price number(30)
);


create sequence ono_seq increment by 1 start with 1;

drop from f_orderProduct;
