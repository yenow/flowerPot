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
public class SemiNoticeController {

	@Autowired
	private ISemiNoticeService service;
	@Autowired
	private CosmeticService cosmeticService;
	
// { 공지사항 게시글 목록 가져오기
	@RequestMapping("/semi_notice")
	public void table_datatable(Model model) {
		System.out.println("semi_notice 실행 !! ");

		List<SemiNoticeVO> blist = service.getArticles();
		model.addAttribute("blist",blist);

	}
	
//  공지사항 게시글 번호로 지우기  } 
	@RequestMapping("/semi_notice_del_ok")
	public String table_datatable_ok(Model model, Integer sBno ) {
		System.out.println("semi_notice_del_ok : " + sBno);
		service.delTable(sBno);
		
		return "redirect:/semiadmin/semi_notice" ; 
	}
	
}
