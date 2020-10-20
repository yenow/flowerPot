package com.flowerPot.brandAdmin.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.description.service.DescriptionService;
import com.flowerPot.domain.CosmeticCriteria;
import com.flowerPot.domain.CosmeticPageDTO;
import com.flowerPot.member.service.MemberService;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("brandAdmin")
public class BrandAdminController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private CosmeticService cosmeticService;
	@Autowired
	private DescriptionService descriptionService;
		
	// 회원 정보 시큐리티에서 가져오기
	public MemberVo getMemberBysecurity(Principal principal) {
		MemberVo memberVo = new MemberVo();
		if(principal!=null) {
			String id = principal.getName();
			memberVo = memberService.selectOneMemberById(id);   // 회원정보 가져오기
		}
		return memberVo;
	}


	@RequestMapping("home")
	public void dashboard() {

	}

	@RequestMapping("orderManage")
	public void orderManage(Principal principal, Model model, CosmeticCriteria c) {
		MemberVo member = getMemberBysecurity(principal);
		
		List<CosmeticVo> cList = new ArrayList<CosmeticVo>();
		if(member.getBrand()!=null) {
			c.setBrand(member.getBrand());
			cList = cosmeticService.selectListCosmeticByCategory(c);
		}
		
		int total =  cosmeticService.selectCountByCategory(c);
		CosmeticPageDTO cosmeticPageDTO = new CosmeticPageDTO(c, total);
		
		model.addAttribute("cList", cList);
		model.addAttribute("PageDTO", cosmeticPageDTO);
	}
	
	@RequestMapping("cosmeticContent")
	public void cosmeticContent(Integer cno, Model model) {
		CosmeticVo cosmetic = cosmeticService.selectOneCosmeticByCno(cno);
		
		model.addAttribute("cosmetic", cosmetic);
	}
	
	@RequestMapping("cosmeticUpdate")
	public void cosmetic_update(Integer cno, Model model) {
		CosmeticVo cosmetic = cosmeticService.selectOneCosmeticByCno(cno);
		DescriptionVo description = descriptionService.selectOneDescriptionByCno(cno);
		model.addAttribute("cosmetic", cosmetic);
		model.addAttribute("description", description);
	}
	
	@RequestMapping("cosmeticDelete")
	public void cosmetic_delete(Integer cno, Model model) {
		
	}
	
}
