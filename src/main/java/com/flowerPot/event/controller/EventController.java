package com.flowerPot.event.controller;

import java.security.Principal;
import java.util.List;

import org.mortbay.log.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flowerPot.attachFile.service.AttachFileService;
import com.flowerPot.domain.Criteria;
import com.flowerPot.event.service.EventService;
import com.flowerPot.member.service.MemberSerivce;
import com.flowerPot.vo.AttachFileVo;
import com.flowerPot.vo.EventVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("event")
public class EventController {

	@Autowired private EventService eventService;
	@Autowired AttachFileService AttachFileService;
	@Autowired MemberSerivce memberSerivce;

	// 회원 정보 시큐리티에서 가져오기
	public MemberVo getMemberBysecurity(Principal principal) {
		MemberVo memberVo = new MemberVo();
		if(principal!=null) {
			String id = principal.getName();
			memberVo = memberSerivce.selectOneMemberById(id);   // 회원정보 가져오기
		}
		return memberVo;
	}

	@RequestMapping("event")
	public void event(Criteria c, Model model) {
		List<EventVo> eList = eventService.selectListEvent(c);
		Log.info("eList:"+eList);
		model.addAttribute("eList", eList);
	}

	@RequestMapping("event_write")
	public void event_write() {
		// 회원정보를 불러와야함
	}

	// 이벤트 등록, 아작스
	@RequestMapping("event_write_ok")
	@ResponseBody
	public ResponseEntity<String> event_write_ok(EventVo event) {
		Log.info("event:"+event);

		ResponseEntity<String> r =null;
		try {
			eventService.insertEvent(event);
			r = new ResponseEntity<String>(Integer.toString(event.getEno()), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			r = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return r;
	}

	@RequestMapping("eventAttachInsert")
	@ResponseBody
	public ResponseEntity<String> eventAttachInsert(@RequestBody List<AttachFileVo> alist) {
		Log.info("alist:"+alist);

		ResponseEntity<String> r =null;
		try {
			AttachFileService.insertAttachListToEvent(alist);
			r = new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			r = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return r;
	}

	@RequestMapping("event_cont")
	public void event_cont(Integer eno, Model model) {
		EventVo event = eventService.selectOneEventByEno(eno);
		model.addAttribute("event", event);
	}

	@RequestMapping("event_delete")
	public String event_delete(Integer eno, Model model) {
		eventService.deleteOneEventByEno(eno);
		return "redirect:/event/event";
	}

	@RequestMapping("dayCheck")
	public void dayCheck(Principal pricipal ,Model model) {
		MemberVo member = getMemberBysecurity(pricipal);
		
		
	}

}
