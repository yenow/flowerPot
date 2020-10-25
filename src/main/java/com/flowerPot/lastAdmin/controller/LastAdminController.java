package com.flowerPot.lastAdmin.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flowerPot.brand.repository.BrandDao;
import com.flowerPot.coupon.repository.CouponDao;
import com.flowerPot.member.repository.MemberDao;
import com.flowerPot.vo.BrandVo;
import com.flowerPot.vo.CouponVo;
import com.flowerPot.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("lastAdmin")
@Slf4j
public class LastAdminController {

	@Autowired
	private BrandDao brandDao;
	@Autowired
	private CouponDao couponDao;
	@Autowired
	private MemberDao memberDao;
	
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
	
	// 브랜드 등록
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
	public void couponManage(Model model) {
		List<CouponVo> cplist = couponDao.selectListAll();
		
		model.addAttribute("cplist",cplist);
	}
	
	// 쿠폰등록
	@RequestMapping("couponRegister")
	public String couponRegister(CouponVo coupon, String startDate, String endDate) {
		log.info("쿠폰삽입 : " + coupon);
		log.info("startDate : " + startDate);
		log.info("endDate : " + endDate);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		coupon.setStart_date(LocalDateTime.parse(startDate,formatter));
		coupon.setStart_date(LocalDateTime.parse(endDate,formatter));
		couponDao.insertCoupon(coupon);
		
		return "redirect:/lastAdmin/couponManage";
	}
	
	
	@RequestMapping("customerCenter")
	public void customerCenter() {
		
	}
	
	@RequestMapping("isMember")
	@ResponseBody
	public ResponseEntity<String> isMember(String id) {
		MemberVo member = memberDao.selectOneMemberById(id);
		if(member==null) {
			return new ResponseEntity<String>("exist", HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("null", HttpStatus.OK);
		}
	}
}
