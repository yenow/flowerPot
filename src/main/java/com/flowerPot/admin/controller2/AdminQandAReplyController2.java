package com.flowerPot.admin.controller2;
/*
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.service.ReplyService;
import org.zerock.vo.ReplyVO;

@RestController //restAPI클래스, jsp 뷰페이지를 만들지 않고 
@RequestMapping("/replies") //replies 매핑주소 등록
public class AdminQandAReplyController2 {
	@Autowired
	private CReplyMapper replyService;

	//댓글등록
	@RequestMapping(value="", method=RequestMethod.POST)//post로 접근하는 매핑주소 
	public ResponseEntity<String> register(@RequestBody ReplyVo rpl){ 

		ResponseEntity<String> entity = null; 


		try {
			this.replyService.addReply(rpl);//댓글 등록
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
			//예외 에러 메시지와 나쁜 상태 코드를 반환
		}
		return entity; // /replies 주소 에 POST방식으로 BODY에 "컬럼명":"값" 입력후 전송
	}//register()

	//게시물번호에 해당하는 댓글목록
	@RequestMapping(value="/all/{bno}",method=RequestMethod.GET)
	//GET으로 접근하는 매핑주소 처리, 매핑주소에 {bno}는 주소창에 입력되어진 게시물 번호값을 추출하는 용도로 사용된다.
	public ResponseEntity<List<ReplyVo>> list(@PathVariable("bno") Integer bno){
//		 @PathVariable("bno")는 매핑주소 /all/{bno}에서 {bno}로 전달된 게시물 번호값을 추출해서 int bno에 저장시킨다.
//		 int bno = Integer.parseInt(request.getParameter("bno")); 	
		 
		List<ReplyVO> list = this.replyService.listReply(bno);
		ResponseEntity<List<ReplyVo>> entity = null;
		try {
			entity = new ResponseEntity<>(this.replyService.listReply(bno),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);//나쁜 상태코드 반환
		}
		return entity;// GET/replies/all/게시글번호 => 게시글번호에 달린 댓글 출력
	}//list()
	//댓글수정
	@RequestMapping(value="/{rno}", method= {RequestMethod.PUT,RequestMethod.PATCH})
	//메서드 방식이 복수개가 등록됨. put은 전체자료를 수정, patch는 일부자료 수정
	public ResponseEntity<String> update(@PathVariable("rno") Integer rno, @RequestBody ReplyVo rpl){
//  1. @PathVariable("rno")는 주소창에서 입력되어진 댓글 번호값을 추출해서 int rno 매개변수에 저장한다.
//  2. @RequestBody ReplyVO vo는 json의 키,값 쌍으로 입력받은 데이터를 ReplyVO vo 객체타입으로 변화시킨다. 
		ResponseEntity<String> entity = null;
		try {
			vo.setRno(rno);//댓글번호 저장 (수정할 게시글은 rno를 주소창에 임의로 넣었기때문에 객체에 따로 저장해서 한번에보내줘야한다)
			this.replyService.updateReply(rpl);//댓글 수정
			entity = new ResponseEntity<>("SUCCESS",HttpStatus.OK);
			//댓글 수정 성공시 SUCCESS문자열을 반환하고, 200정상상태 코드를 반환
		} catch (Exception e) {
			e.printStackTrace();//예외에러 오류 출력
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity; // PUT방식 /replies/댓글번호 => 입력된 댓글번호의 내용을 수정
	}//update()
	
	//댓글삭제
	@RequestMapping(value="{rno}",method=RequestMethod.DELETE)
	// /{rno}와 {rno}가 같음 /생략가능
	public ResponseEntity<String> remove(@PathVariable("rno")Integer rno){
		ResponseEntity<String> entity = null;
		try {
			this.replyService.remove(rno);//댓글삭제
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
			//자바 7버전부터 generic타입 생략가능
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
			return entity; // DELETE => /replies/rno send하면 rno번호 댓글 삭제
	}//remove()
}
*/