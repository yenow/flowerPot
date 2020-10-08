package com.flowerPot.semiadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.semiadmin.service.ISemiNoticeService;
import com.flowerPot.vo.CosmeticVo;

@Controller
@RequestMapping("/semiadmin")
public class InventoryController {

	@Autowired
	private ISemiNoticeService service;
	@Autowired
	private CosmeticService cosmeticService;

	// { inventory 재고 목록
	@GetMapping("/inventory")
	public void inventory(Model model) {
		System.out.println("inventory 후기 페이지 실행 ");

		List<CosmeticVo> ilist = cosmeticService.selectListCosmetic();
		model.addAttribute("ilist", ilist);

	}

	// 제품 관리 기능
	@RequestMapping("/productManage")
	public void productManage(Model model) {
		System.out.println("productManage 실행중..");

		List<CosmeticVo> colist = cosmeticService.productManage(model);
		model.addAttribute("colist", colist);

	}

	// inventory 재고 목록 추가 }
	@PostMapping("/inventory")
	public String inventory(Model model, CosmeticVo cosmetic) {

		// System.out.println(semi);
		// service.submitInven(semi);
		cosmeticService.updateCosmeticStock(cosmetic);
		return "redirect:/semiadmin/inventory";
	}

}
