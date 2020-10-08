package com.flowerPot.semiadmin.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.semiadmin.model.SemiCalendarVO;
import com.flowerPot.semiadmin.model.SemiInventoryVO;
import com.flowerPot.semiadmin.model.SemiNoticeVO;
import com.flowerPot.semiadmin.model.SemiReviewVO;
import com.flowerPot.semiadmin.service.ISemiNoticeService;
import com.flowerPot.vo.CosmeticVo;

@Controller
@RequestMapping("/semiadmin")
public class SemiAdminController {

	@Autowired
	private ISemiNoticeService service;
	@Autowired
	private CosmeticService cosmeticService;
	

//{ Review 후기  } 
	@RequestMapping("/review")
	public void review(Model model) {
		System.out.println("review 후기 페이지 실행");
		
        List<SemiReviewVO> relist = service.getReviewArticles();
        model.addAttribute("relist",relist);

	}
	

// calendar 기능 
	@RequestMapping("/calendar")
	public void calendar(Model model, SemiCalendarVO scalendar) {
		System.out.println("Calendar 실행중..");
		
		List<SemiCalendarVO> clist = service.getCalendar(scalendar);
		model.addAttribute("clist", clist);
		
	}
	
// Calendar 등록 기능
	@RequestMapping("/calendarRegister")
	public String calendarRegist(SemiCalendarVO sclendar,
			@RequestParam("dateChoice") String dateChoice) {
		
		//String 날짜데이터 형태를 "yyyy-MM-dd"로 포맷하기위해 지정
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		//String StartPDate의 날짜를 formatter객체인 yyyy-MM-dd 형태로포맷 후 시 분 초 인스턴스를 생성 
		//.atTime() : localDateTime 시 분 초 인스턴스 생성
		sclendar.setDateChoice(LocalDate.parse(dateChoice,formatter).atTime(0,0,0));
		
		//service.calendarRegist(sclendar);
		
		return "redirect:/semiadmin/coupon";
	}
	
	
// modal 기능 
	@RequestMapping("/modal")
	public void modal() {
		System.out.println("modal실행중..");
		
		
	}
// todoList
	@RequestMapping("/todolist")
	public void todolist() {
		System.out.println("todolist 실행중..");
		
		
		
		
	}
	
//form_editor 기능
		@RequestMapping("/form_editor")
		public void form_editor() {
			System.out.println("todolist 실행중..");
			
		}
		
		
		
//delivery 기능
		@RequestMapping("/delivery")
		public void delivery() {
			System.out.println("delivery 실행중..");
					
					
}
//chart_count 기능
		@RequestMapping("/chart_count")
		public void chartCount() {
			System.out.println("chart_count 실행중..");
			
			
		}
//chart_product 기능
		@RequestMapping("/chart_product")
		public void chartProduct() {
			System.out.println("chart_product 실행중..");
			
			
		}
			

}
