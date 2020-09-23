package com.flowerPot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class DeliveryVo {

	private Integer dno;
	private String deliver_num;
	private String postcode;
	private String street_address;
	private String parcel_address;
	private String detail_address;
	private String more_infomation;
	private String deliver_state;
}
