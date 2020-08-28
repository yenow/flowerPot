package com.flowerPot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.service.MemberSerivce;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberSerivce memberService;
	
	@RequestMapping("/login")
	public void login() {
		
	}
	
	@RequestMapping("/signUp")
	public void signUp() {
		
	}
}
