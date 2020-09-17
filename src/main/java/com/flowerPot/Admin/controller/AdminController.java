package com.flowerPot.Admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.Admin.commons.PageCreator;
import com.flowerPot.Admin.commons.SearchVO;
import com.flowerPot.Admin.service.IUserService;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private IUserService service;
	
	
	@RequestMapping("/dashboard")
	public void dashboard() {
		
	}
	
	@RequestMapping("/icons")
	public void icons() {
		
	}
	
	@RequestMapping("/maps")
	public void maps() {
		
	}
	
	
	@RequestMapping("/memList")
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
	
	@RequestMapping("/upgrade")
	public void upgrade() {
		
	}
	
	@RequestMapping("/empList")
	public void empList() {
		
	}
	
	@RequestMapping("/notifications")
	public void notifications() {
		
	}
	@RequestMapping("/newEmp")
	public void newEmp() {
		
	}
	
}
