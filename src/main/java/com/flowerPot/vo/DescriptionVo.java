package com.flowerPot.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DescriptionVo {

	private int cno;
	private int capacity;
	private int period;
	private String useMethod;
	private String nation;
	
}
