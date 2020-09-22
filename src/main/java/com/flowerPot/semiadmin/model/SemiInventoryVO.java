package com.flowerPot.semiadmin.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SemiInventoryVO {
	
	private Integer cno;
	private String name;
	private String proOption;
	private Integer stockNumber;
	private Integer plusStock;
	private String sellWay;
	
	@Override
	public String toString() {
		return "SemiInventoryVO [cno=" + cno + ", name=" + name + ", proOption=" + proOption + ", stockNumber="
				+ stockNumber + ", plusStock=" + plusStock + ", sellWay=" + sellWay + "]";
	}
	


}
