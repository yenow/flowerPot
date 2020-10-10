<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../info/header2.jsp"></jsp:include>


<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
	<div class="s-full js-hide-cart"></div>

	<div class="header-cart flex-col-l p-l-65 p-r-25">
		<div class="header-cart-title flex-w flex-sb-m p-b-8">
			<span class="mtext-103 cl2"> Your Cart </span>

			<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
				<i class="zmdi zmdi-close"></i>
			</div>
		</div>

		<div class="header-cart-content flex-w js-pscroll">
			<ul class="header-cart-wrapitem w-full">
				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="${pageContext.request.contextPath }/resources/images/item-cart-01.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"> White Shirt Pleat </a> <span class="header-cart-item-info"> 1 x $19.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="${pageContext.request.contextPath }/resources/images/item-cart-02.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"> Converse All Star </a> <span class="header-cart-item-info"> 1 x $39.00 </span>
					</div>
				</li>

				<li class="header-cart-item flex-w flex-t m-b-12">
					<div class="header-cart-item-img">
						<img src="${pageContext.request.contextPath }/resources/images/item-cart-03.jpg" alt="IMG">
					</div>

					<div class="header-cart-item-txt p-t-8">
						<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"> Nixon Porter Leather </a> <span class="header-cart-item-info"> 1 x $17.00 </span>
					</div>
				</li>
			</ul>

			<div class="w-full">
				<div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

				<div class="header-cart-buttons flex-w w-full">
					<a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10"> View Cart </a> <a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10"> Check Out </a>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- Title page -->
<style type="text/css">
@font-face {
	font-family: 'UhBeeSeulvely';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_five@.2.0/UhBeeSeulvely.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

a:link {
	text-decoration: none;
}

.h50 {
	height: 50px;
}
</style>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/banner_red.png');">
	<h2 style="font-family: UhBeeSeulvely; font-weight: bolder; color: #ffffff">
		<a href="${pageContext.request.contextPath }/today/today" style="color: #ffffff">오늘의 추천</a>
	</h2>
</section>


<!-- Content page -->
<section class="bg0 p-t-62 p-b-60" style="align-items: center;">
	<div class="container">
		<div class="prepaared" align="center">

			<!-- item blog -->

			<div class="prepaared" align="center">
				<a href="${pageContext.request.contextPath }"> <img src="${pageContext.request.contextPath }/resources/images/beingPrepared.png" alt="준비중인 서비스 입니다">
				</a>
			</div>






		</div>
	</div>
</section>

<script>
	$(document)
			.ready(
					function() {

						(function yajax() {
							$
									.ajax({
										url : '${pageContext.request.contextPath }/magazine/magazineAjax',
										type : 'GET',
										dataType : 'json',
										success : function(data) {
											console.log(data);
											$('#magazine-test a img')
													.attr(
															'src',
															'${pageContext.request.contextPath }'
																	+ data[0].rootfolder
																	+ data[0].uuidname);
											$('#magazine-title').html(
													data[0].title)
										}
									});

						})();
					});
</script>

<jsp:include page="../info/footer.jsp"></jsp:include>