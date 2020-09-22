package com.flowerPot.semiadmin.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class SemiNoticeVO {
	
	private Integer sBno;
	private String sTitle;
	private String sContent;
	private String sWriter;
	private Date sDate;

	@Override
	public String toString() {
		return "SemiNoticeVO [sBno=" + sBno + ", sTitle=" + sTitle + ", sContent=" + sContent + ", sWriter=" + sWriter
				+ ", sDate=" + sDate + "]";
	}

	


}
