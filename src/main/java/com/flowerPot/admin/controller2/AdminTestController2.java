package com.flowerPot.admin.controller2;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.IMemService;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin2")
public class AdminTestController2 {
	
	@Autowired
	private IMemService service;
	
	//종합 현황
	@RequestMapping("/dashboard")
	public void dashboard2() {
	}
	
	
	@RequestMapping("/inventory")
	public void template2() {
		
	}
	
	@RequestMapping("/delivery")
	public void maps2() {
		
	}
	
	@RequestMapping("/icons")
	public void upgrade2() {
		
	}
	
	@RequestMapping("/notifications")
	public void notifications2() {
		
	}
	
}
