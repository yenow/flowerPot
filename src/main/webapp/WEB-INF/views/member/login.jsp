<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">로그인</h2>
</section>

<section class="bg0 p-t-50 p-b-116">
	<div class="container">
		<script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
		<div class="p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
			<form name="f" action="${pageContext.request.contextPath }/login" method="post" >
				<input type="hidden" name=${_csrf.parameterName } value="${_csrf.token }">				
				<h4 class="mtext-105 cl2 txt-center p-b-30"></h4>
				<h4 class="mtext-105 cl2 txt-center p-b-30"></h4>
				
				<div class="bor8 m-b-20 how-pos4-parent">
					<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="id" placeholder="아이디">
				</div>

				<br>

				<div class="bor8 m-b-20 how-pos4-parent">
					<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="password" placeholder="비밀번호">
				</div>

				<div class="form-check clearfix my-4" style="height: 10px;">
					<div class="checkbox float-left" style="margin-left: 20px;">
						<input type="checkbox" id="checkbox1" class="form-check-input">
						<label for="checkbox1">Remember me</label>

					</div>
					<div class="float-right">
						<a href="forgot_id">아이디찾기</a> <span class="bar">|</span> <a
							href="forgot_pw" class="link">비밀번호 찾기</a>
					</div>
				</div>

				<br>
				<br>

				<div class="row">
					<div class="col-sm-6" style="float: left">
						<button type="submit"
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
							style="background: black">LOGIN</button>
					</div>

					<div class="col-sm-6" style="float: left;">
						<button onclick="location.href='http://localhost:8080/controller/member/signUp'"
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
							style="background: black">SignUp</button>

				<c:if test="${not empty param.fail }">
					<div>
						<p>로그인에 실패 하였습니다</p>
						<p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
					</div>
				</c:if>
				
				</div>
				<div class="gray" style="height: 10px;"></div>
				<br>

				<div class="row">
					<div class="col-sm-6">
						<button onclick="location.href='${naverLogin}'" class="btn btn-block mb-2 btn-primary"
							style="text-align:center; background-color:#35cc02; border: 3px solid #3A1D1D;" ><%-- <a href="${url}"> --%>
						 	<img width="30px" src="${pageContext.request.contextPath}/resources/images/logo.PNG"/>
							&nbsp;&nbsp;네이버 아이디로 로그인
							
							<!-- style="background-color: #2DB400; font-weight: bold; border: 3px solid #2DB400;">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-facebook"></svg>
							NAVER
							 -->
						</button>
						<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  						<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
						
					</div>
					<div class="col-sm-6">
						<button onclick="location.href='${kakao_url}'" class="btn btn-block mb-2 btn-secondary" 
						style="text-align:center; background-color:#F7E600; border: 3px solid #3A1D1D; color:#3A1D1D; font-weight: bolder;" ><%-- <a href="${url}"> --%>
						 	<img width="30px" src="${pageContext.request.contextPath}/resources/images/kakaoTalk01.PNG"/>
							&nbsp;&nbsp; 카카오 계정으로 로그인
							<!-- style="background-color: #F7E600; color: #3A1D1D; font-weight: bold; border: 3px solid #3A1D1D;">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-github"></svg>
							KAKAO -->
						</button>
					</div>
				</div>




			</form>
		</div>
	</div>
</section>


<jsp:include page="../info/footer.jsp"></jsp:include>

<script src="assets/js/feather-icons/feather.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/main.js"></script>