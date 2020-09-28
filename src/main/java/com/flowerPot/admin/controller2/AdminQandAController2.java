package com.flowerPot.admin.controller2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.dao.CFaQMapper;
import com.flowerPot.admin.dao.CQandAMapper;
import com.flowerPot.admin.vo.CustomerVo;

@Controller
@RequestMapping("/admin2/customer")
public class AdminQandAController2 {
	
	
	 @Autowired
	 private CQandAMapper service;
	 
	
	/*
	@RequestMapping("/q&a")
	public String qANDa() {
		return "/admin/q&a";
	}
	*/
	
	//Q&A 목록 페이지
	@RequestMapping("/q&a")
	public String qANDa2(CustomerVo qANDa,SearchVO search, Model model) {
		PageCreator pc = new PageCreator();
		pc.setPaging(search);
		List<CustomerVo> qList = service.selectQandAList(search);
		model.addAttribute("qList",qList);
		return "/admin2/q&a";
	}

	//Q&A 등록 페이지
	@RequestMapping("/q&a_write")
	public String qANDa_write2(CustomerVo qANDa) {
		return "/admin2/q&a_write";
		
	}
	//Q&A 등록 작업
	@RequestMapping("/q&a_write_ok")
	public String qANDa_write_ok2(CustomerVo qANDa, RedirectAttributes ra) {
		
		System.out.println(qANDa);
		service.insertQandA(qANDa);
		ra.addFlashAttribute("msg","writeSuccess");
		return "redirect:/admin2/customer/q&a";

	}
	//Q&A 내용보기
	@RequestMapping("/q&a_content/{ccno}")
	public String qANDa_content2(@PathVariable Integer ccno,Model model) {
		CustomerVo qANDa = service.getQandACont(ccno);
		model.addAttribute("qANDa",qANDa);
		return "/admin2/q&a_content";
	}
	
	//Q&A 수정 페이지
	@RequestMapping("/q&a_modify/{ccno}")
	public String qANDa_modify2(@PathVariable Integer ccno,Model model) {
		CustomerVo qANDa = service.getQandACont(ccno);
		model.addAttribute("qANDa",qANDa);
		return "/admin2/q&a_modify";
	}
	//Q&A 수정 완료 작업
	@RequestMapping("/q&a_modify_ok")
	public String qANDa_modify_ok2(CustomerVo qANDa, RedirectAttributes ra) {
		System.out.println(qANDa);
		service.modifyQandA(qANDa);
		ra.addFlashAttribute("msg","modSuccess");
		return "redirect:/admin2/customer/q&a";
	}
	//Q&A 삭제 작업
	@RequestMapping("/q&a_del/{ccno}")
	public String qANDa_del2(@PathVariable Integer ccno, RedirectAttributes ra) {
		service.delQandA(ccno);
		ra.addFlashAttribute("msg","delSuccess");
		return "redirect:/admin2/customer/q&a";
	}
}
