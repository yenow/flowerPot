package com.flowerPot.admin.controller2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.IMemService;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin2")
public class AdminMemberController2 {
	
	@Autowired
	private IMemService service;

	
	//회원 관리(목록)
	@RequestMapping("/member")
	public void memList2(SearchVO search, Model model) {
		System.out.println("찾아옴");
		System.out.println(search);
		PageCreator pc = new PageCreator();
		pc.setPaging(search);
		List<MemberVo> mList = service.getArticleList(search);
		pc.setArticleTotalCount(service.countArticles(search));
		model.addAttribute("mList", mList);
		model.addAttribute("pc", pc);
	}
}
