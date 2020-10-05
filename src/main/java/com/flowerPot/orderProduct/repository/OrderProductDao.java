package com.flowerPot.orderProduct.repository;

import java.util.List;

import com.flowerPot.vo.OrderProductVo;

public interface OrderProductDao {

	void insertOrderProduct(OrderProductVo orderProduct);

	void insertOrderProductNoMember(OrderProductVo orderProduct);

	void deleteAll();
	
	int selectCount();

	List<OrderProductVo> selectListOrderProductByOrderNum(String order_num);
}
