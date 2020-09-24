create table f_orderProduct(
<<<<<<< HEAD
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

drop table f_orderProduct;
select * from f_orderProduct;
=======

  ono number(38) -- 게시글 번호
  ,mno number(38) references f_member (mno) -- f_member
  ,cno number(38) references f_cosmetic (cno)  -- f_cosmetic
  ,order_num varchar2(1000)
  ,amount number(38)
  ,state varchar2(1000)
  ,regdate DATE
  ,deliver_state varchar2(2000)
  ,member_rank varchar2(1000)
  ,point varchar2(1000)
  ,coupon varchar2(1000)
  ,primary key(ono)

  );

create sequence
ordPro_seq
start with 1
increment by 1;

drop sequence ordPro_seq;

insert into f_orderProduct 
values(ordPro_seq.nextval, 1, 111, 22222, 2,
'결제완료',sysdate,'배송준비중','기본랭크','1500p','쿠폰1개')

drop table f_orderProduct;
select * from f_orderProduct ;
>>>>>>> se2
