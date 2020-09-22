package com.flowerPot.semiadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.semiadmin.model.SemiInventoryVO;
import com.flowerPot.semiadmin.model.SemiNoticeVO;
import com.flowerPot.semiadmin.model.SemiReviewVO;
import com.flowerPot.semiadmin.service.ISemiNoticeService;

@Controller
@RequestMapping("/semiadmin")
public class SemiAdminController {

	@Autowired
	private ISemiNoticeService service;

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
		System.out.println(sBno);
		service.delTable(sBno);
		
		return "redirect:/semiadmin/semi_notice" ; 
	}
	
	//{ Review 후기  } 
	@RequestMapping("/review")
	public void review(Model model) {
		System.out.println("review 후기 페이지 실행");
		
        List<SemiReviewVO> relist = service.getReviewArticles();
        model.addAttribute("relist",relist);

	}
	
	@RequestMapping("/inventory")
	public void inventory(Model model) {
		System.out.println("inventory 후기 페이지 실행 ");
		
		List<SemiInventoryVO> ilist = service.getInvenArticles();
		model.addAttribute("ilist",ilist);
		
	}

	@RequestMapping("/table")
	public void table() {

	}
	

	@RequestMapping("/auth_forgot_passwordsss")
	public void auth_forgot_passwordsss(){

	}

	@RequestMapping("/auth_login")
	public void auth_login() {

	}

	@RequestMapping("/auth_register")
	public void auth_register() {

	}

	@RequestMapping("/component_alert")
	public void component_alert  () {

	}

	@RequestMapping("/component_badge")
	public void component_badge() {

	}

	@RequestMapping("/component_breadcrumb")
	public void component_breadcrumb() {

	}

	@RequestMapping("/component_buttons")
	public void component_buttons() {

	}

	@RequestMapping("/component_card")
	public void  component_card() {

	}

	@RequestMapping("/component_carousel")
	public void component_carousel() {

	}

	@RequestMapping("/component_dropdowns")
	public void component_dropdowns() {

	}

	@RequestMapping("/component_extra_avatar")
	public void component_extra_avatar  () {

	}

	@RequestMapping("/component_extra_divider")
	public void component_extra_divider() {

	}

	@RequestMapping("/component_list_group")
	public void component_list_group() {

	}

	@RequestMapping("/component_modal")
	public void  component_modal() {

	}

	@RequestMapping("/component_navs")
	public void component_navs() {

	}

	@RequestMapping("/component_pagination")
	public void component_pagination() {

	}

	@RequestMapping("/component_progress")
	public void component_progress() {

	}
	@RequestMapping("/error_403")
	public void error_403() {

	}
	@RequestMapping("/error_404")
	public void  error_404() {

	}

	@RequestMapping("/error_500")
	public void error_500() {

	}

	@RequestMapping("/form_editor")
	public void form_editor() {

	}

	@RequestMapping("/form_element_checkbox")
	public void form_element_checkbox() {

	}

	@RequestMapping("/form_element_input_group")
	public void  form_element_input_group() {

	}

	@RequestMapping("/form_element_input")
	public void form_element_input() {

	}

	@RequestMapping("/form_element_radio")
	public void form_element_radio() {

	}

	@RequestMapping("/form_element_select")
	public void form_element_select() {

	}
	@RequestMapping("/form_element_textarea")
	public void form_element_textarea() {

	}

	@RequestMapping("/form_layout")
	public void form_layout() {

	}

	@RequestMapping("/dashboard")
	public void index() {

	}



	@RequestMapping("/ui_chart_apexchart")
	public void ui_chart_apexchart() {

	}

	@RequestMapping("/ui_chart_chartjs")
	public void ui_chart_chartjs() {

	}

	@RequestMapping("/ui_chatbox")
	public void ui_chatbox() {

	}
	@RequestMapping("/ui_pricing")
	public void ui_pricing() {

	}

	@RequestMapping("/ui_todolist")
	public void ui_todolist() {

	}







}
