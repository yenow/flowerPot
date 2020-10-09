<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../info/header2.jsp"></jsp:include>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			마이페이지
		</h2>
	</section>	

	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				홈
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="product.html" class="stext-109 cl8 hov-cl1 trans-04">
				마이페이지
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				상품주문
			</span>
		</div>
	</div>

	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">
		<div class="container">
			<div class="row mb-4 text-center">
				<div class="col-4 border rounded mx-5">
					<h2 class="py-2">윤신영 님의 멤버십 등급은 Silver 입니다</h2>
					<h3 class="py-2">최근 6개월 누적 구매 금액 : 원</h3>
					<a href="" class="btn btn-primary">전체등급 알아보기</a>
				</div>
				<div class="col-2 border rounded mx-5">
					<h3 class="py-2">적립금</h3>
					<p><a href="">0</a>원</p>
				</div>
				<div class="col-2 border rounded mx-5">
					<h3 class="py-2">쿠폰</h3>
					<p><a href="">0</a>개</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="side-menu">
						
						<div class="p-t-55">
							<h4 class="mtext-112 cl2 p-b-33">
								Categories
							</h4>

							<ul>
								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/order" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										주문관리
									</a>
								</li>

								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/coupon" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										쿠폰
									</a>
								</li>

								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/point" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										포인트
									</a>
								</li>

								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/myActivity" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										내활동
									</a>
								</li>

								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/review" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
										상품리뷰
									</a>
								</li>
								
								<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/myInfo" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> 내정보 관리 </a>
							</li>
							
							<li class="bor18">
									<a href="${pageContext.request.contextPath }/member/password" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> 내비밀번호 관리 </a>
							</li>
							</ul>
						</div>


						<div class="p-t-50">
							<h4 class="mtext-112 cl2 p-b-27">
								Tags
							</h4>

							<div class="flex-w m-r--5">
								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Fashion
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Lifestyle
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Denim
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Streetstyle
								</a>

								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
									Crafts
								</a>
							</div>
						</div>
					</div>
				</div>
			
				<div class="col-md-8 col-lg-9 p-b-80" style="padding:50px">
					<h2 class="text-center">비밀번호 수정</h2>
				<form action="${pageContext.request.contextPath }/member/password_ok" name="passwordok" id="passwordForm" method="post">
				
					<div class="form-group">
						<label for="oldPassword" style="text-align: left"><p><strong>비밀번호</strong>&nbsp;&nbsp;&nbsp;<span id="oldPwChk"></span></p></label>
						<input type="password" class="form-control form-control-lg" name="oldPassword" id="oldPassword" placeholder="현재 비밀번호를 입력하시오">
					</div>
					<div class="form-group">
						<label for="password" style="text-align: left"><p><strong>새비밀번호</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p></label>
						<input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="영문과 특수문자를 포함한 최소 8자">
					</div>
					<div class="form-group">
						<label for="password_check" text-align:="" left"=""><p><strong>새비밀번호확인</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p></label>
						<input type="password" class="form-control form-control-lg" name="password2" id="password_check" placeholder="비밀번호가 일치해야합니다.">
					</div>
					<button class="btn btn-outline-secondary btn-block btn-lg" id="signup-btn">비밀번호 변경</button>
					</form>
					<%-- <br/>
					<h2 class="text-center">회원정보 수정</h2>
				<form action="${pageContext.request.contextPath }/member/signUp_ok" name="signup" id="signUpForm" method="post">
					<div class="form-group">
						<label for="user_name" text-align:="" left"=""><p><strong>이름</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p></label>
						<input type="text" class="form-control form-control-lg" name="name" id="user_name" placeholder="한글로 최대 6자">
					</div>
					<div class="form-group">
						<label for="user_nick" text-align:="" left"=""><p><strong>닉네임</strong>&nbsp;&nbsp;&nbsp;<span id="nickChk"></span></p></label>
						<input type="text" class="form-control form-control-lg" name="nickname" id="user_nick">
					</div>
					<!-- <div class="form-group">
						<label for="user_email" text-align:="" left"=""><p><strong>이메일</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></p></label>
						<input type="email" class="form-control form-control-lg" name="email" id="user_email" placeholder="ex)aaa@naver.com" style="width: 50%; float:left;">
						<input type="button" class="btn btn-outline-secondary btn-block btn-lg" onclick="send_email();" value="인증번호 전송" style="width: 50%;">
						<div class="clear"></div>
						<div class="form-group">
   					    <label for="user_codeNumber" text-align:left"=""></label>
    					<input type="text" class="form-control form-control-lg" name="code_number" id="code_number" placeholder="인증번호 입력" style="width: 50%; float:left;">
                        <input type="button" class="btn btn-outline-secondary btn-block btn-lg" onclick="code_check();" value="인증 번호 확인" style="width: 50%;">
                        </div>
					</div> -->
					<div class="form-group">
						<label for="user_phone" text-align:="" left"=""><p><strong>전화번호</strong>&nbsp;&nbsp;&nbsp;<span id="phoneChk"></span></p></label>
						<input type="tel" class="form-control form-control-lg" name="tel" id="user_phone" placeholder="(예시:- 하이픈 없이 입력해주세요)">

					</div>
					<!-- <div class="form-check">
						<input type="radio" name="gender" id="exampleRadios1" value="M" style="display: inline-block">
						<label for="exampleRadios1" style="display: inline-block"> 남자 </label>
						<input type="radio" name="gender" id="exampleRadios2" value="F" style="display: inline-block">
						<label for="exampleRadios2" style="display: inline-block"> 여자 </label>
					</div> -->
					주소(우편번호)
					<div class="form-group">
					<input type="text" class="form-control form-control-lg" id="sample4_postcode" name="postcode" placeholder="우편번호">
					<input type="button" class="btn btn-outline-secondary btn-block btn-lg" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="form-control form-control-lg" id="sample4_roadAddress" name="street_address" placeholder="도로명주소">
					<br>
					<input type="text" class="form-control form-control-lg" id="sample4_jibunAddress" name="parcel_address" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<br>
					<input type="text" class="form-control form-control-lg" id="sample4_extraAddress" name="deliver_state" placeholder="참고항목">
					<br>
					<input type="text" class="form-control form-control-lg" id="sample4_detailAddress" name="detail_address" placeholder="상세주소">
					</div>
					
					<button class="btn btn-outline-secondary btn-block btn-lg" id="signup-btn">회원정보 수정완료</button>
				</form> --%>
				</div>

				
			</div>
		</div>
	</section>	

<script>

//start JQuery
$(function() {
	
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false; chk6 = false;


 	/* //현재패스워드 입력값 검증.
	$('#oldPassword').on('keydown', function() {
		//비밀번호 공백 확인
		if($("#oldPassword").val() === ""){
		    $('#oldPassword').css("background-color", "pink");
			$('#oldPwChk').html('<b style="font-size:14px;color:red;">[현재 패스워드를 입력하시오!]</b>');
			chk1 = false;
	
		}	//ID 중복확인 비동기 처리
		else {
			//ID 중복확인 비동기 통신
			const id = $(this).val();
			console.log(id);
			
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/member/checkPw",	
				headers: {
	                "Content-Type": "application/json"
	            },
				dataType: "text",
				data: id,
				success: function(result) {
					if(result === "OK") {
						$('#oldPassword').css("background-color", "aqua");
						$('#oldPwChk').html('<b style="font-size:14px;color:green;">[√]</b>');
						chk1 = true;
					} else {
						$("#oldPassword").css("background-color", "pink");
						$("#oldPwChk").html("<b style='font-size:14px; color:red;'>[비밀번호가 중복됨!]</b>");						
						chk1 = false;
					}
				},
				error: function() {
					console.log("통신 실패!");
				}
			});
		}
	});  */
 	
	//새로운 패스워드 입력값 검증.
	$('#password').on('keydown', function() {
		//비밀번호 공백 확인
		if($("#password").val() === ""){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[패스워드는 필수정보!]</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
			chk2 = false;
		} else {
			$('#password').css("background-color", "aqua");
			$('#pwChk').html('<b style="font-size:14px;color:green;">[√]</b>');
			chk2 = true;
		}
		
	});
	
	//패스워드 확인란 입력값 검증.
	$('#password_check').on('keyup', function() {
		//비밀번호 확인란 공백 확인
		if($("#password_check").val() === ""){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[패스워드확인은 필수정보!]</b>');
			chk3 = false;
		}		         
		//비밀번호 확인란 유효성검사
		else if($("#password").val() != $("#password_check").val()){
		    $('#password_check').css("background-color", "pink");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[위에랑 똑같이!!]</b>');
			chk3 = false;
		} else {
			$('#password_check').css("background-color", "aqua");
			$('#pwChk2').html('<b style="font-size:14px;color:green;">[√]</b>');
			chk3 = true;
		}
		
	});
		
});

	 


	
</script>

<jsp:include page="../info/footer.jsp"></jsp:include>