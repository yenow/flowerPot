create table f_description (
	cno number(30),
	capacity number(20),   -- 용량(ml)
	period number(30),   -- 사용기간 (일)
	useMethod varchar2(3000) ,  -- 사용방법
	nation varchar2(100),    --제조국
	constraint f_description_fk_cno foreign key (cno) references f_cosmetic(cno)	
);