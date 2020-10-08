package com.flowerPot.orderProduct.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.delivery.repository.DeliveryDao;
import com.flowerPot.orderProduct.repository.OrderProductDao;
import com.flowerPot.vo.OrderProductVo;

@Service
public class OrderProductServiceImpl implements OrderProductService {
	
	@Autowired
	private OrderProductDao orderProductDao;
	@Autowired
	private DeliveryDao deliveryDao;
	
	@Override
	public List<OrderProductVo> selectListOrderProductByBrand(String brand) {
		return orderProductDao.selectListOrderProductByBrand(brand);
	}

	@Override
	public List<OrderProductVo> selectListOrderProductByBrandCno(String brand, Integer cno) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("brand", brand);
		map.put("cno", cno);
		return orderProductDao.selectListOrderProductByBrandCno(map);
	}

	@Transactional
	@Override
	public void updateOrderProductTOComplete(Integer ono) {
		OrderProductVo order = orderProductDao.selectOneByono(ono);
		deliveryDao.updateStateByDno(order.getDno());
		orderProductDao.updateOrderProductTOComplete(ono);
	}

}
