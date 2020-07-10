<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="info/header.jsp"></jsp:include>

<div class="mainVisual">
	 <div><img alt="" src="${pageContext.request.contextPath }/resources/img/1.jpg"></div>
	 <div><img alt="" src="${pageContext.request.contextPath }/resources/img/2.jpg"></div>
	 <div><img alt="" src="${pageContext.request.contextPath }/resources/img/3.jpg"></div>
	 <div><img alt="" src="${pageContext.request.contextPath }/resources/img/4.jpg"></div>
</div>

<div class="main-review">
<h1>리뷰</h1>
</div >

<div class="today-best">
<h1>오늘의 추천</h1>
</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script>
$('.mainVisual').slick({
	dots: true,
	infinite: true,
	arrows : true,
	autoplay : true,
	autoplaySpeed :3000,
	speed: 300,
	slidesToShow: 1,
	adaptiveHeight: true
});
</script>
<jsp:include page="info/footer.jsp"></jsp:include>

