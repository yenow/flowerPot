package com.flowerPot.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.flowerPot.dao.CustomerCenterDao;
import com.flowerPot.vo.CustomerCenterVo;

@Service
public class CustomerCenterServiceImpl implements CustomerCenterService {

	@Autowired
	private CustomerCenterDao dao;

	@Override
	public List<CustomerCenterVo> getFaq() {

		return dao.getFaq();
	}

	@Override
	public List<CustomerCenterVo> getEnqList() {

		return dao.getEnqList();
	}

	@Override
	public List<CustomerCenterVo> getNotice() {

		return dao.getNotice();
	}

	@Override
	public List<CustomerCenterVo> searchKeyword(String keyword) {

		return dao.searchKeyword(keyword);
	}

	@Override
	public void wirteEnq(CustomerCenterVo customer) {
		if (customer.getUrl() == null) {
			System.out.println("중간확인 : " + customer.getTitle() + ", " + customer.getContent());
			dao.NoImgWirteEnq(customer);
		} else {
			System.out
					.println("중간확인 : " + customer.getTitle() + ", " + customer.getContent() + "," + customer.getUrl());

			dao.wirteEnq(customer);
		}
	}

	@Override
	public CustomerCenterVo getContent(int ccno) {

		return dao.getContent(ccno);
	}

	@Override
	public void editEnq(CustomerCenterVo customer) {
		dao.editEnq(customer);
		
	}

	@Override
	public void deleteEnq(CustomerCenterVo customer) {
		dao.deleteEnq(customer);
		
	}

}
