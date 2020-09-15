package com.flowerPot.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MagazineVo {
/*
 *  mgno number(30),
	title varchar2(100) not null,
	content varchar2(3000) not null,
	category varchar2(50),
	regdate date,
	moddate date,
	imgSrc varchar2(100),*/
	private int mgno;
	private int mno;
	private String title;
	private String content;
	private String category;
	private String UUIDName;
	private String originalName;
	private String rootfolder;
	private Date regdate;
	private Date moddate;
}
