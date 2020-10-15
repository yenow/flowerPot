<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/login_logo.png');">
	<h2 class="ltext-105 cl0 txt-center"></h2>
</section>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/sap/resources/css/searchPw.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="contact-clean">
	<form class="form-horizontal" form action="${pageContext.request.contextPath}/member/searchPw_do" method="post">
		<h2 class="text-center">비밀번호 찾기</h2>
		<p class="text-center">
			아래 이메일주소를 입력하시면,<br> 입력하신 이메일로 새암호를 보내드립니다<br> <br>
 <!-- 아이디 입력창 -->
	 <div class="form-group" style="text-align: center;">
    <label for="inputEmail3" class="col-sm-2 control-label" style="display: contents;">아이디 &nbsp;&nbsp;&nbsp;&nbsp;</label>
    	<div style="width: 30%; display: inline-block;">
      		<input type="text" class="form-control" name="id" id="inputEmail3" placeholder="Id">
    	</div>  
  </div>
 <!-- 이메일 입력창 -->
  <div class="form-group" style="text-align: center;">
    <label for="inputEmail3" class="col-sm-2 control-label" style="display: contents;">이메일 &nbsp;&nbsp;&nbsp;&nbsp;</label>
    	<div style="width: 30%; display: inline-block;">
      		<input type="email" class="form-control" name="email" id="inputEmail3" placeholder="Email">
    	</div>
  </div>
  
  <!-- button 바 전체 -->
  <div class="form-group" style="text-align: center;">
    <label for="inputEmail3" class="col-sm-2 control-label" style="display: contents; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
    	<div style="width: 30%; display: inline-block;">
      		<input type="submit" class="form-control" id="btn btn-default" style="margin-left: 10px";   placeholder="Sign in" >
    	</div>
  </div>
</form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>






<jsp:include page="../info/footer.jsp"></jsp:include>

<!-- <script src="assets/js/feather-icons/feather.min.js"></script> -->
<!-- <script src="assets/js/app.js"></script>
<script src="assets/js/main.js"></script> -->