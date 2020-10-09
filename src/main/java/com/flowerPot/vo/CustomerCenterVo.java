package com.flowerPot.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomerCenterVo {
/*
create table f_customerCenter(
ccno int primary key,
mno int,
title varchar2(200) not null,
content varchar2(4000) not null,
regdate date ,
moddate date ,
category varchar2(100) not null
);
 */
	
	private int ccno;
	private int mno;
	private String title;
	private String content;
	private String regdate;
	private String moddate;
	private String category;
	//키워드 검색
	private String keyword;
//	private string 
	private String url;

	private MemberVo memberVo;
}
