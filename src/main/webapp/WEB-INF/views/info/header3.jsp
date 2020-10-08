<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main.css">
<!--===============================================================================================-->

<!-- 제이쿼리 -->
<script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v3">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a href="${pageContext.request.contextPath }" class="logo">
						<img src="${pageContext.request.contextPath }/resources/images/icons/logoblue.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu"><a href="${pageContext.request.contextPath }">home</a></li>
	
							<!-- 쇼핑 리스트 -->
							<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list" class="dropdown-toggle">Shop</a>
								<ul class="sub-menu">
									<li style="border-bottom: 1px solid #ccc; margin: 0 10px;" >
									<a href="#main-menu" class="font-weight-bold" >화장품 종류</a></li>
									<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=스킨케어">스킨케어</a></li>
									<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=메이크업">메이크업</a></li>
									<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=바디케어">바디케어</a></li>
									<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=헤어케어">헤어케어</a></li>
									<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=향수/디퓨져">향수/디퓨져</a></li>
								</ul></li>

							<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Tip" class="dropdown-toggle">매거진</a>

								<ul class="sub-menu">
									<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Tip">Tip</a></li>
									<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Interview">Interview</a></li>
									<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=COVID19">COVID19</a></li>
									<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Setec">Setec</a></li>
								</ul></li>

							<li><a href="${pageContext.request.contextPath }/today/today">오늘의추천</a></li>

							<li><a href="${pageContext.request.contextPath }/event/event">이벤트</a></li>
							
							<li><a href="${pageContext.request.contextPath }/ourCompany/Company_main">우리회사</a></li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m h-full">							
						<div class="flex-c-m h-full p-r-25 bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="${fn:length(shoppingCartList)}">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
							<!-- 
							<a href="${pageContext.request.contextPath }/shoppingList/wishlist" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
								<i class="zmdi zmdi-favorite-outline"></i>
							</a>
							 -->
						</div>
							
						<div class="flex-c-m h-full p-lr-19">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<i class="zmdi zmdi-menu"></i>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="${pageContext.request.contextPath }"><img src="${pageContext.request.contextPath }/resources/images/icons/logoblue.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="flex-c-m h-full p-r-5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="${fn:length(shoppingCartList)}">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li class="active-menu"><a href="${pageContext.request.contextPath }">home</a></li>

				<!-- 쇼핑 리스트 -->
				<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list" class="dropdown-toggle">Shop</a>
					<ul class="sub-menu">
						<li style="border-bottom: 1px solid #ccc; margin: 0 10px;"><a href="#main-menu" class="font-weight-bold">화장품 종류</a></li>
						<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=스킨케어">스킨케어</a></li>
						<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=메이크업">메이크업</a></li>
						<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=바디케어">바디케어</a></li>
						<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=헤어케어">헤어케어</a></li>
						<li><a href="${pageContext.request.contextPath }/cosmetic/cosmetic_list?type=향수/디퓨져">향수/디퓨져</a></li>
					</ul></li>

				<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Tip" class="dropdown-toggle">매거진</a>

					<ul class="sub-menu">
						<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Tip">Tip</a></li>
						<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Interview">Interview</a></li>
						<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=COVID19">COVID19</a></li>
						<li><a href="${pageContext.request.contextPath }/magazine/magazine?category=Setec">Setec</a></li>
					</ul></li>

				<li><a href="${pageContext.request.contextPath }/today/today">오늘의추천</a></li>

				<li><a href="${pageContext.request.contextPath }/event/event">이벤트</a></li>

				<li><a href="${pageContext.request.contextPath }/ourCompany/Company_main">우리회사</a></li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<button class="flex-c-m btn-hide-modal-search trans-04">
				<i class="zmdi zmdi-close"></i>
			</button>

			<form class="container-search-header">
				<div class="wrap-search-header">
					<input class="plh0" type="text" name="search" placeholder="Search...">

					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
				</div>
			</form>
		</div>
	</header>


	<!-- Sidebar -->
	<aside class="wrap-sidebar js-sidebar">
		<div class="s-full js-hide-sidebar"></div>

		<div class="sidebar flex-col-l p-t-22 p-b-25">
			<div class="flex-r w-full p-b-30 p-r-27">
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
				<ul class="sidebar-link w-full">

					<li class="p-b-13">
						<a href="#" class="stext-102 cl2 hov-cl1 trans-04">
							My Wishlist
						</a>
					</li>

					<li class="p-b-13">
						<a href="${pageContext.request.contextPath }/member/signUp" class="stext-102 cl2 hov-cl1 trans-04"> 회원가입 </a>
					</li>

					<li class="p-b-13">
						<a href="${pageContext.request.contextPath }/member/login" class="stext-102 cl2 hov-cl1 trans-04"> 로그인 </a>
					</li>
					

					<li class="p-b-13">
						<a href="${pageContext.request.contextPath }/member/myPage" class="stext-102 cl2 hov-cl1 trans-04"> 마이페이지 </a>
					</li>

					<li class="p-b-13">
						<a href="${pageContext.request.contextPath }/customerCenter/customerCenter?category=notice" class="stext-102 cl2 hov-cl1 trans-04"> 고객센터 </a>
					</li>
					
					<li class="p-b-13">
						<a href="${pageContext.request.contextPath }/ourCompany/Company_main" class="stext-102 cl2 hov-cl1 trans-04"> 우리회사 </a>
					</li>
				</ul>

				<div class="sidebar-gallery w-full p-tb-30">
					<span class="mtext-101 cl5">
						@ CozaStore
					</span>

					<div class="flex-w flex-sb p-t-36 gallery-lb">
						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-01.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-01.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-02.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-02.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-03.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-03.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-04.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-04.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-05.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-05.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-06.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-06.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-07.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-07.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-08.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-08.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="images/gallery-09.jpg" data-lightbox="gallery" 
							style="background-image: url('images/gallery-09.jpg');"></a>
						</div>
					</div>
				</div>

				<div class="sidebar-gallery w-full">
					<span class="mtext-101 cl5">
						About Us
					</span>

					<p class="stext-108 cl6 p-t-27">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur maximus vulputate hendrerit. Praesent faucibus erat vitae rutrum gravida. Vestibulum tempus mi enim, in molestie sem fermentum quis. 
					</p>
				</div>
			</div>
		</div>
	</aside>


	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-25 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2"> 장바구니 목록 </span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<c:forEach var="cosmetic" items="${shoppingCartList }">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<input type="hidden" class="c-discount" value="${cosmetic.discountPersent}">
						<div class="header-cart-item-img">
							<img src="${cosmetic.mappingList[0] }" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"> ${cosmetic.name } </a>

							<span class="header-cart-item-info">
								<span class="c-price">${cosmetic.price }</span> <span>원</span>
							</span>
							<span class="header-cart-item-info">
								<span class="c-num">${cosmetic.numProduct }</span> <span>개</span>
							</span>
						</div>
					</li>
					</c:forEach>
				</ul>

				<div class="w-full">
					<!-- 총 금액 -->
					<div class="header-cart-total w-full p-tb-40">총 금액: <span class="t-price"></span><span>원</span></div>

					<div class="header-cart-buttons flex-w w-full">	
						<!-- 장바구니로 가기 -->
						<a href="${pageContext.request.contextPath }/shoppingList/shoppingList" 
						class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10"> 장바구니로 가기 </a>
						<!-- 구입하기 -->

						<a href="${pageContext.request.contextPath}/cosmetic/payment?root=2" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10"> 구입하기 </a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1 rs2-slick1">
			<div class="slick1">
				<div class="item-slick1 bg-overlay1" style="background-image: url(${pageContext.request.contextPath }/resources/images/slide_yoona.jpg);" data-thumb="${pageContext.request.contextPath }/resources/images/slide_yoona.jpg" data-caption="Women’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									New arrivals
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Women Collection 2020
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(${pageContext.request.contextPath }/resources/images/slide_men.jpg);" data-thumb="${pageContext.request.contextPath }/resources/images/slide_men.jpg" data-caption="Men’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rollIn" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
									Winter 2020
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="lightSpeedIn" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Men New-Season
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="slideInUp" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>	
					</div>
				</div>

				<div class="item-slick1 bg-overlay1" style="background-image: url(${pageContext.request.contextPath }/resources/images/slide_iu3.jpg);" data-thumb="${pageContext.request.contextPath }/resources/images/slide_iu3.jpg" data-caption="Men’s Wear">
					<div class="container h-full">
						<div class="flex-col-c-m h-full p-t-100 p-b-60 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="rotateInDownLeft" data-delay="0">
								<span class="ltext-202 txt-center cl0 respon2">
								   Love Myself
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateInUpRight" data-delay="800">
								<h2 class="ltext-104 txt-center cl0 p-t-22 p-b-40 respon1">
									Basic Items
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="rotateIn" data-delay="1600">
								<a href="product.html" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn2 p-lr-15 trans-04">
									Shop Now
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="wrap-slick1-dots p-lr-10"></div>
		</div>
	</section>
	
<script type="text/javascript">
function shoppingList() {
	var totalPrice = 0;
	for(var i=0; i<$('.c-price').length; i++){
		var price =  Number($($('.c-price').get(i)).html());
		var num = Number($($('.c-num').get(i)).html());
		var discount = $($('.c-discount').get(i)).val();
		totalPrice += price*num*((100-discount)/100);
	}
	$('.t-price').html(String(totalPrice));
}

shoppingList();

</script>

