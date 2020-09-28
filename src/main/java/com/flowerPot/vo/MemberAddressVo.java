package com.flowerPot.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberAddressVo {

	private Integer mno;
	private String postcode;
	private String street_address;
	private String parcel_address;
	private String detail_address;
	private String more_infomation;
	private String deliver_state;
	
}
