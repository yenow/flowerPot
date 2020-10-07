package com.flowerPot.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.order.repository.OrderDao;

@Service
public class OrderServiceImpl {

	@Autowired
	private OrderDao orderDao;
}
