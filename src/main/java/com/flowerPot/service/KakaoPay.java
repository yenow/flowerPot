package com.flowerPot.service;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.order.repository.OrderDao;
import com.flowerPot.orderProduct.repository.OrderProductDao;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.KakaoPayApprovalVO;
import com.flowerPot.vo.KakaoPayReadyVO;
import com.flowerPot.vo.OrderProductVo;
import com.flowerPot.vo.OrderVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class KakaoPay {

	 private static final String HOST = "https://kapi.kakao.com";
	    
	 private KakaoPayReadyVO kakaoPayReadyVO;
	 private KakaoPayApprovalVO kakaoPayApprovalVO;
	 
	 @Autowired
	 private OrderProductDao orderProductDao;
	 @Autowired
	 private CosmeticDao cosmeticDao;
	 @Autowired
	 private OrderDao orderDao;
	    
	 public String kakaoPayReady(List<OrderProductVo> olist) {
		 	// 주문번호 생성
		 	
		    CosmeticVo cosmetic = cosmeticDao.selectOneCosmeticByCno(olist.get(0).getCno());
		    String order_num= cosmetic.getBrand()+UUID.randomUUID().toString();  // 주문번호
		    log.info("주문번호:"+order_num);
		    
		    //상품명
		    String item_name="";
		    // 배송번호
		    Integer dno = null;
		    Integer mno = null;
		 	// 반복문으로 주문테이블에 저장
		 	// mno 가 있냐 없냐에 따라서 다른방법으로 db에 저장
		 	for(OrderProductVo orderProduct : olist) {
		 		// 쿠폰 이름이 no 일경우, 쿠폰을 사용하지 않은것
		 		if(orderProduct.getCoupon_name().equals("no")) {
		 			orderProduct.setCoupon_name(null);
		 		}
		 		
		 		if(orderProduct.getMno()!=null) {
		 			// 회원인 경우
		 			orderProduct.setOrder_num(order_num);  //  주문번호 저장
		 			orderProduct.setBrand(cosmetic.getBrand()); // 브랜드명 저장
		 			orderProductDao.insertOrderProduct(orderProduct);
		 			
		 		}else {
		 			// 비회원인 경우
		 			orderProduct.setOrder_num(order_num);   //  주문번호 저장
		 			orderProduct.setBrand(cosmetic.getBrand());  // 브랜드명 저장
		 			orderProductDao.insertOrderProductNoMember(orderProduct);
		 		}
		 		item_name=item_name.concat("/"+cosmeticDao.selectOneCosmeticByCno(orderProduct.getCno()).getName()); //  이거 좀 비효율적인거같은데
		 		dno = orderProduct.getDno();
		 		mno = orderProduct.getMno();
		 	}
		 	OrderVo orderVo = new OrderVo();
		 	orderVo.setDno(dno);
		 	orderVo.setMno(mno);
		 	orderVo.setOrder_num(order_num);
		 	orderDao.insertOrder(orderVo);
		 	
		 	// 최종 결제 가격
		 	Integer final_price = olist.get(0).getFinal_price();
		 
	        RestTemplate restTemplate = new RestTemplate();
	        
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "e75023d0f7ce24f934994ce0d336da5e");  // app admin 키
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", "1001");     			// 가맹점 주문번호
	        params.add("partner_user_id", "flowerpot");				 // 가명점 회원아이디
	        params.add("item_name", item_name); 	//변경				 // 상품명
	        params.add("item_code", order_num); //변경 				 // 상품코드 
	        params.add("quantity", "1");  	//변경						 // 상품수량
	        params.add("total_amount", final_price.toString());	//변경	   // 상품 총액
	        params.add("tax_free_amount", "100");							 // 상품 비과세 금액
	        params.add("approval_url", "http://localhost:8282/flowerPot/kakaoPaySuccess?order_num="+order_num);
	        params.add("cancel_url", "http://localhost:8282/flowerPot/kakaoPayCancel");
	        params.add("fail_url", "http://localhost:8282/flowerPot/kakaoPaySuccessFail");
	 
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);  // 너는 뭐하는  애니?
	 
	        try {
	            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
	            
	            log.info("kakaoPayReadyVO : " + kakaoPayReadyVO);
	            
	            return kakaoPayReadyVO.getNext_redirect_pc_url();
	 
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return "/pay";
	        
	    }
	 
	 public KakaoPayApprovalVO kakaoPayInfo(String pg_token,String order_num) {
		 
	        log.info("KakaoPayInfoVO............................................");
	        log.info("-----------------------------");
	        log.info("order_num : " + order_num);
	        
	        // order_num 주문번호로.. 상품정보 가져오자!
	        List<OrderProductVo> oList = orderProductDao.selectListOrderProductByOrderNum(order_num);
	        
	        // 가격만 일단 맞춰주면 된다;
	        int total_amount = oList.get(0).getFinal_price();
	        log.info("total_amount : " + total_amount);
	        
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "e75023d0f7ce24f934994ce0d336da5e");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("tid", kakaoPayReadyVO.getTid());
	        params.add("partner_order_id", "1001");
	        params.add("partner_user_id", "flowerpot");
	        params.add("pg_token", pg_token);
	        params.add("total_amount", Integer.toString(total_amount));
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            log.info("" + kakaoPayApprovalVO);
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
}
