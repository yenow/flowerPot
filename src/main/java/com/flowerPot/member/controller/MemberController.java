package com.flowerPot.member.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flowerPot.member.service.MemberSerivce;
import com.flowerPot.service.AuthorityService;
import com.flowerPot.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberSerivce memberService;
	@Autowired
	private AuthorityService authorityService;

	@Autowired
	private PasswordEncoder passwordEncoder;


	@RequestMapping("/login") public void login() {

	}

	// 회원가입 페이지로 이동

	@RequestMapping("/signUp") 
	public void signUp() {

	}

	// 회원가입 요청 처리
	// Rest-api에서 Insert-> POST


	// 회원가입 처리
	@RequestMapping("/signUp_ok")
	public String signUp_ok(MemberVo member) {
		// 비밀번호 인코딩
		log.info("회원정보 : "+member.toString());
		member.setPassword(passwordEncoder.encode(member.getPassword()));
		log.info("회원정보 : "+member.toString());
		memberService.insertMember(member);
		return "redirect:/";
	}
	// 아이디 중복인 요청 처리
	@PostMapping("/checkId")
	@ResponseBody
	public String checkId(@RequestBody String member) {
		System.out.println("/controller/member/checkId: POST요청 발생!");
		System.out.println("parameter:" + member);
		String result = null;
		Integer checkNum = memberService.checkId(member);
		System.out.println(checkNum);
		if (checkNum == 1) {
			System.out.println("아이디가 중복됨!");
			result = "NO";

		} else {
			System.out.println("아이디 사용가능!");
			result = "OK";
		}
		return result;
	}		
	// 이메일 중복인 요청 처리
	@PostMapping("/checkEmail")
	@ResponseBody
	public String checkEmail(@RequestBody String member) {
		System.out.println("/controller/member/checkEmail: POST요청 발생!");
		System.out.println("parameter:" + member);
		String result = null;
		Integer checkNum = memberService.checkEmail(member);
		System.out.println(checkNum);
		if (checkNum == 1) {
			System.out.println("아이디가 중복됨!");
			result = "NO";

		} else {
			System.out.println("아이디 사용가능!");
			result = "OK";
		}
		return result;
	}	

	// 전화번호 중복인 요청 처리
	@PostMapping("/checkPhone")
	@ResponseBody
	public String checkPhone(@RequestBody String member) {
		System.out.println("/controller/member/checkPhone: POST요청 발생!");
		System.out.println("parameter:" + member);
		String result = null;
		Integer checkNum = memberService.checkPhone(member);
		System.out.println(checkNum);
		if (checkNum == 1) {
			System.out.println("전화번호가 중복됨!");
			result = "NO";

		} else {
			System.out.println("전화번호 사용가능!");
			result = "OK";
		}
		return result;
	}		

	@PostMapping("searchMemberById")
	@ResponseBody
	public ResponseEntity<String> searchMemberById(String id){
		ResponseEntity<String> r =null;
		MemberVo member = new MemberVo();
		member = memberService.selectOneMemberById(id);
		if(member != null) {
			r = new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			r = new ResponseEntity<String>("noID", HttpStatus.OK);
		}
		
		return r;
	}
	
	@PostMapping("insertAuthority")
	@ResponseBody
	public ResponseEntity<String> insertAuthority(@RequestBody Map<String, Object> map) {
		ResponseEntity<String> r =null;
		String authority = (String) map.get("authority");
		String brand = (String) map.get("brand");
		List<String> id_list =  (List<String>) map.get("id_list");
		try {
			authorityService.insertAuthorityById(authority,brand,id_list);
			r= new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			r= new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
		}
		return r;
	}
}

