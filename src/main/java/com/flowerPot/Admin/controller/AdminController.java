package com.flowerPot.Admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.Admin.commons.PageCreator;
import com.flowerPot.Admin.commons.SearchVO;
import com.flowerPot.Admin.service.IUserService;
import com.flowerPot.Admin.vo.EmpVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IUserService service;
	
	//종합 현황
	@RequestMapping("/dashboard")
	public void dashboard() {
		
	}
	
	//입점 관리(목록)
	@RequestMapping("/brand")
	public void icons() {
		
	}
	//브랜드 추가
	@RequestMapping("/brandAdd")
	public void brandAdd() {
		
	}
	
	//직원 관리(목록) 
	@RequestMapping("/employee")
	public void employee() {
		
	}
	//직원 추가
	@RequestMapping("/empAdd")
	public void empAdd(EmpVo emp) {
		service.insertEmpOne(emp);
	}
	
	//회원 관리(목록)
	@RequestMapping("/member")
	public void memList(SearchVO search, Model model) {
		System.out.println("찾아옴");
		System.out.println(search);
		PageCreator pc = new PageCreator();
		pc.setPaging(search);
		List<MemberVo> mList = service.getArticleList(search);
		pc.setArticleTotalCount(service.countArticles(search));
		model.addAttribute("mList", mList);
		model.addAttribute("pc", pc);
	}
	
	@RequestMapping("/template")
	public void template() {
		
	}
	
	@RequestMapping("/typography")
	public void typography() {
		
	}
	
	@RequestMapping("/icons")
	public void upgrade() {
		
	}
	
	@RequestMapping("/notifications")
	public void notifications() {
		
	}
	
}
