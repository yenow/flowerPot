<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../info/header2.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>



<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92"
 style="background-image: url('${pageContext.request.contextPath }/resources/images/login_logo.png');">
	<h2 class="ltext-105 cl0 txt-center">    </h2>
</section>

<style>
.login_alert{width:45%; border:0.5px solid #6e6e6e; margin-left: 30%;}
.checkbox{padding-left:30%;}
.p-lr-70{padding-top: 30px;}
.foundbox{margin-right:25%;}

.login{margin:2px; left:25%; padding-left:52px; padding-right:3px;}
.signup{margin:10px; left:25%; padding-left:45px; padding-right:10px;}

.naver{margin:0 auto; padding-left:56px; padding-right:3px;}
.kakao{margin:0 auto; padding-left:56px; padding-right:3px;}

.
</style>
<!-- 비밀번호 찾기 -->

<title>비밀번호찾기1</title>
<div class="contact-clean">
		<form action="searchPw.do" method="get">
			<h2 class="text-center">비밀번호 찾기</h2>
			<p class="text-center">
				아래 이메일주소를 입력하시면,<br> 입력하신 이메일로 새암호를 보내드립니다<br>
				<br>
			<div class="form-group has-success has-feedback">
				<input type="text" name="username" placeholder="username"
					class="form-control" /><i aria-hidden="true"
					class="form-control-feedback glyphicon glyphicon-ok"></i>
			</div>
			<div class="form-group has-error has-feedback">
				<input type="email" name="email" placeholder="email"
					class="form-control" /><i aria-hidden="true"
					class="form-control-feedback glyphicon glyphicon-remove"></i>
				<p class="help-block">'@'포함한 이메일주소를 정확히 입력해주세요.</p>
			</div>

			<div class="form-group">
				<button allign="center" class="btn btn-primary" type="submit">비밀번호찾기</button>
			</div>
		</form>
	</div>


<jsp:include page="../info/footer.jsp"></jsp:include>

<!-- <script src="assets/js/feather-icons/feather.min.js"></script> -->
<!-- <script src="assets/js/app.js"></script>
<script src="assets/js/main.js"></script> -->