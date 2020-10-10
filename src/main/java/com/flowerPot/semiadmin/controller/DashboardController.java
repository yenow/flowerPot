package com.flowerPot.semiadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.semiadmin.model.SemiNoticeVO;
import com.flowerPot.semiadmin.service.ISemiNoticeService;

@Controller
@RequestMapping("/semiadmin")
public class DashboardController {

	@Autowired
	private ISemiNoticeService service;
	@Autowired
	private CosmeticService cosmeticService;

// { dashboard _ main }
	@RequestMapping("/dashboard")
	public void dashboard(Model model) {
		System.out.println("dashboard 실행중..");

		// { semi _ notice 같은 게시물 띄우게 하기 }
		List<SemiNoticeVO> blist = service.getArticles();
		model.addAttribute("blist", blist);

	}
	
	
}
