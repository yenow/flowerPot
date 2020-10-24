package com.flowerPot.lastAdmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.vo.BrandVo;
import com.flowerPot.brand.repository.BrandDao;

@Controller
@RequestMapping("lastAdmin")
public class LastAdminController {

	@Autowired
	private BrandDao brandDao;
	
	// 메인페이지
	@RequestMapping("home")
	public void home() {
		
	}
	
	// 브랜드관리
	@RequestMapping("brandManage")
	public void brandManage(Model model) {
		List<BrandVo> bList = brandDao.selectListAllBrand();
		
		model.addAttribute("bList", bList);
	}
	@RequestMapping("brandRegister_ok")
	public String brandRegister_ok(BrandVo brand) {
		brandDao.insertBrand(brand);
		return "redirect:/lastAdmin/brandManage";
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
