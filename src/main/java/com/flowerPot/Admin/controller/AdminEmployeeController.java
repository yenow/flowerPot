package com.flowerPot.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.IEmpService;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.service.MemberSerivce;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin")
public class AdminEmployeeController {
	
	//직원등록
	@Autowired
	private IEmpService service;
	
	//회원가입
	@Autowired
	private MemberSerivce memberService;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	
	//직원 관리(목록) 
	@RequestMapping("/employee")
	public void employee(Model model, SearchVO search) {
		PageCreator pc = new PageCreator();
		pc.setPaging(search);		
		List<EmpVo>	eList = service.selectEmpList(search);
		pc.setArticleTotalCount(service.countArticles(search));
		model.addAttribute("eList",eList);
		model.addAttribute("pc",pc);
	}
	
	//직원 추가
	@RequestMapping("/empAdd")
	public String empAdd(EmpVo emp) {
		service.insertEmpOne(emp);
		return "redirect:/admin/employee";
	}
	
	//직원 삭제
	@RequestMapping("/empDel")
	public String empDel(EmpVo emp) {
		service.deleteEmpOne(emp);
		return "redirect:/admin/employee";
	}
	
	//회원가입
	
	// 회원가입 페이지로 이동
		@RequestMapping("/employee/signUp")
		public String signUp() {
			return "/admin/signUp";
		}
		
		// 회원가입 처리
		@RequestMapping("/employee/signUp_ok")
		public String signUp_ok(MemberVo member) {
			// 비밀번호 인코딩
//			log.info("회원정보 : "+member.toString());
			member.setPassword(passwordEncoder.encode(member.getPassword()));
//			log.info("회원정보 : "+member.toString());
			memberService.insertMember(member);
			return "redirect:/admin/employee/signUp";
		}
	

}
