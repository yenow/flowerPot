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
	<form class="form-horizontal" form action="${pageContext.request.contextPath}/member/searchId_do" method="post">
		<input type="hidden" name="name" value="${userFindId.name}"> <input type="hidden" name="tel" value="${userFindId.tel}">
		<div class="form-group">
			<label for="user_id" style="text-align: left"><p>
					<strong>회원이 찾으신 아이디는 </strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span>
				</p></label>
			<!--  id는 수정이 불가능하도록 readonly 속성 추가 -->
			<input type="text" class="form-control form-control-lg" value="${userFindId.id}" readonly="readonly" name="id" id="user_id" aria-describedby="emailHelp"> <small id="emailHelp" class="form-text text-muted"> </small>
		</div>
<	!-- button 바 전체 -->
  <div class="form-group" style="text-align: center;">
    <label for="inputEmail3" class="col-sm-2 control-label" style="display: contents; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
    	<div style="width: 30%; display: inline-block;">
      		<input type="button" class="form-control" id="btn btn-default" style="margin-left: 10px";   placeholder="로그인하러Go" >
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