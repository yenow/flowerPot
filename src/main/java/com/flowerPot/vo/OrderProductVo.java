package com.flowerPot.vo;

import java.time.LocalDateTime;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class OrderProductVo {

	private Integer ono;
	private Integer mno;
	private Integer cno;
	private Integer dno;
	private String order_num;
	private Integer amount;
	private String state;  // 주문상태,, 주문완료인지, 취소인지., 교환.. 환불?   디폴트값이 필요할까?
	private String deliver_state;
	private String member_rank;
	private Integer point;
	private String coupon_name;
	private LocalDateTime regdate;
	private String tel;
	private String email;
	private Integer price;
	private Integer final_price;
}

