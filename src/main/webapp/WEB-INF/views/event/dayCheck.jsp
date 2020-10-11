<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<c:if test="${today == false }">
	<script>
		alert('이미 출석체크 하셨습니다');
	</script>
</c:if>

<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">이벤트</h2>
</section>

<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> 홈 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> 
		<a href="product.html" class="stext-109 cl8 hov-cl1 trans-04"> 이벤트 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a>

	</div>
</div>


<!-- Content page -->
<section class="bg0 p-t-62 p-b-100">
	<div class="container">
		<div class="row ">
			<div class="col-12 p-b-80">
				<img alt="" src="${pageContext.request.contextPath }/resources/img/cometic/attend.png" style="width: 100%">
			</div>
			<div class="col-12">
				<a href="${pageContext.request.contextPath }/event/dayCheck_ok" class="btn btn-outline-danger btn-lg btn-block">출석체크</a>
			</div>
		</div>
	</div>
</section>

<jsp:include page="../info/footer.jsp"></jsp:include>
</head>
</html>