package com.flowerPot.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.EmpService;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.member.service.MemberSerivce;
import com.flowerPot.vo.AuthorityVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin")
public class AdminEmployeeController {
	
	//직원등록
	@Autowired
	private EmpService service;
	
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
		List<AuthorityVo> aList = service.selectEmpAuth();
		pc.setArticleTotalCount(service.countArticles(search));
		model.addAttribute("eList",eList);
		model.addAttribute("aList",aList);
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
		System.out.println(emp.getEmpNo());
		service.deleteEmpOne(emp);
		System.out.println(emp.getEmpEnabled());
		return "redirect:/admin/employee";
	}
	//직원 복구
	@RequestMapping("/empRestore")
	public String empRestore(EmpVo emp) {
		System.out.println(emp);
		service.restoreEmpOne(emp);
		return "redirect:/admin/employee";
	}
	
	//회원가입
	
	// 회원가입 페이지로 이동
		@RequestMapping("/employee/signUp")
		public String signUp(String empId, String empName, Model m) {
			System.out.println(empId);
			System.out.println(empName);
			m.addAttribute("empId",empId);
			m.addAttribute("empName",empName);
			return "/admin/signUp";
		}
		
	// 회원가입 처리
	@RequestMapping("/employee/signUp_ok")
	public String signUp_ok(MemberVo member) {
		// 비밀번호 인코딩
//		log.info("회원정보 : "+member.toString());
		member.setPassword(passwordEncoder.encode(member.getPassword()));
//		log.info("회원정보 : "+member.toString());
		memberService.insertMember(member);
		return "redirect:/admin/employee/signUp";
	}
	
	//회원 아이디가 있는 사람에게 관리자 권한 부여
	@RequestMapping("/adminAuth")
	public String adminAuth(String empId) {
		memberService.giveAdminAuth(empId);
		return "redirect:/admin/employee";
	}
	

}
