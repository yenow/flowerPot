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
					<h2 class="text-center">회원 탈퇴</h2>
				<form action="${pageContext.request.contextPath }/member/delete_ok" name="memberDelete" id="deleteForm" method="post">
				
					<div class="form-group">
						<label for="id" style="text-align: left"><p><strong>아이디</strong>&nbsp;&nbsp;&nbsp;<span id="oldPwChk"></span></p></label>
						<input type="text" class="form-control form-control-lg" name="id" id="id" value="${pid.id}"/>
					</div>
					<div class="form-group">
						<label for="password" style="text-align: left"><p><strong>패스워드</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p></label>
						<input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="비밀번호를 입력하세요">
					</div>
					<button  type ="submit" class="btn btn-outline-secondary btn-block btn-lg" id="signup-btn">회원 탈퇴</button>
					</form>
				
				</div>
	
				
			</div>
		</div>
	</section>	



<jsp:include page="../info/footer.jsp"></jsp:include>