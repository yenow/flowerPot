package com.flowerPot.lastAdmin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("lastAdmin")
public class LastAdminController {

	// 메인페이지
	@RequestMapping("home")
	public void home() {
		
	}
	
	// 브랜드관리
	@RequestMapping("brandManage")
	public void brandManage() {
		
	}
	
	// 회원관리
	@RequestMapping("memberManage")
	public void memberManage() {
		
	}
	
	// 쿠폰관리
	@RequestMapping("couponManage")
	public void couponManage() {
		
	}
	
	@RequestMapping("customerCenter")
	public void customerCenter() {
		
	}
}
