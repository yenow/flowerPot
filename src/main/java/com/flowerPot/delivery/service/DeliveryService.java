package com.flowerPot.delivery.service;

import com.flowerPot.admin.vo.MemberDeliveryVo;
import com.flowerPot.vo.DeliveryVo;

public interface DeliveryService {

	void insertDelivery(DeliveryVo delivery);

	//재혁 관리자단 배송조횜ㄴ
	DeliveryVo selectMemDeliIdInfo(String id);

}
