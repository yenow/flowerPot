package com.flowerPot.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MyCriteria {
	private Boolean prev = false;
	private Boolean next = false;
	
	private int pageNum;
	private int amount;
	
	private int startNum;
	private int endNum;
	
	private int minNum;  // 한페이지 최소
	private int maxNum;  // 한페이지 최대숫자
	
	private String category;
	private String searchName;
	private String searchCategory;  // 검색할 카테고리
	
	public MyCriteria() {
		this(1,10);
	}
	
	public MyCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public void addMinMaxNum() {
		this.minNum = pageNum * (amount-1) + 1;
		this.maxNum = pageNum * amount;
	}
	
	public void calPageInfo(int totalCount) {
		double realEnd = (double)totalCount/amount;
	}
}
