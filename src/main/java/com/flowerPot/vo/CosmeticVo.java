package com.flowerPot.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CosmeticVo {
	private int cno;
	private String name;
	private String type;
	private String brand;
	private String skinType;
	private int price;
	private String tag;
	private int discountPersent;
	private int stockNumber;
	
	public CosmeticVo(int cno, String type, String brand, String skinType, int price, int discountPersent,
			int stockNumber) {
		super();
		this.cno = cno;
		this.type = type;
		this.brand = brand;
		this.skinType = skinType;
		this.price = price;
		this.discountPersent = discountPersent;
		this.stockNumber = stockNumber;
	}

	public CosmeticVo(int cno, String name, String type, String brand, String skinType, int price, int discountPersent,
			int stockNumber) {
		super();
		this.cno = cno;
		this.name = name;
		this.type = type;
		this.brand = brand;
		this.skinType = skinType;
		this.price = price;
		this.discountPersent = discountPersent;
		this.stockNumber = stockNumber;
	}
	
	
}


/*
 create table f_cosmetic(
		cno number(30),   --화장품 번호
		type varchar2(50),   --화장품 번호
		brand varchar2(50),   --브랜드
		price number(30),    --화장품 번호
		tag varchar2(50),
		discountPersent number(30),
		stockNumber number(30),
		primary key(cno)
	);
		*/