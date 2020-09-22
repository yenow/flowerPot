create table semi_inventory(
	cno number(38),   --화장품 번호
	name varchar2(1000),  -- 화장품 이름
	proOption varchar2(100), --상품 색상, 사이즈
	stockNumber number(38),-- 기존 상품 수량 
	plusStock number(38), --수량 추가시  stockNumber 수량이 늘어나야함
	sellWay varchar2(100), --판매 방식 무제한, 품절, 한정
	primary key(cno) 
	);

drop table semi_inventory;

select * from semi_inventory ;

insert into semi_inventory values (111,'보라스킨','blue/s',3,3,'무제한');


