<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../info/header2.jsp"></jsp:include>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">Magazine</h2>
</section>

<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				홈
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="product.html" class="stext-109 cl8 hov-cl1 trans-04">
				매거진
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				${category }
			</span>
		</div>
	</div>
	
	
<!-- Content page -->
<section class="bg0 p-t-62 p-b-60">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-lg-9 p-b-80">
				<div class="p-r-45 p-r-0-lg magazine-item">
					
				</div>
				<!-- Pagination -->
					<div class="flex-l-m flex-w w-full p-t-10 m-lr--7">
						<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"> 1 </a>
						<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7"> 2 </a>
					</div>
			</div>
			<div class="col-md-4 col-lg-3 p-b-80">
				<div class="side-menu">
					<div class="bor17 of-hidden pos-relative">
						<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">
						<button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
							<i class="zmdi zmdi-search"></i>
						</button>
					</div>
					<div class="p-t-55">
						<h4 class="mtext-112 cl2 p-b-33">Categories</h4>
						<ul>
							<li class="bor18"><a href="${pageContext.request.contextPath }/magazine/magazine?category=Tip" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> Tip </a></li>
							<li class="bor18"><a href="${pageContext.request.contextPath }/magazine/magazine?category=Interview" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> Interview </a></li>
							<li class="bor18"><a href="${pageContext.request.contextPath }/magazine/magazine?category=COVID19" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> COVID19 </a></li>
							<li class="bor18"><a href="${pageContext.request.contextPath }/magazine/magazine?category=Setec" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"> Setec </a></li>
						</ul>
					</div>
					<div class="p-t-55">
						<h4 class="mtext-112 cl2 p-b-20">Archive</h4>
						<ul>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> July 2018 </span> <span> (9) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> June 2018 </span> <span> (39) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> May 2018 </span> <span> (29) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> April 2018 </span> <span> (35) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> March 2018 </span> <span> (22) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> February 2018 </span> <span> (32) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> January 2018 </span> <span> (21) </span>
								</a></li>
							<li class="p-b-7"><a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
									<span> December 2017 </span> <span> (26) </span>
								</a></li>
						</ul>
					</div>
					<div class="p-t-50">
						<h4 class="mtext-112 cl2 p-b-27">Tags</h4>
						<div class="flex-w m-r--5">
							<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"> Fashion </a>
							<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"> Lifestyle </a>
							<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"> Denim </a>
							<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"> Streetstyle </a>
							<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"> Crafts </a>
						</div>
					</div>
					<div class="p-t-50">
						<a href="${pageContext.request.contextPath }/magazine/magazine_write" class="btn btn-secondary btn-lg btn-block" >메거진 등록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script>

$div =  $('<div/>',{
	'class' : 'p-b-63'
});

$a = $('<a/>',{
	'href' : 'p-b-63',
	'class' : 'hov-img0 how-pos5-parent'
});

$img = $('<img/>',{
	'src' : '',
	'alt' : 'IMG-BLOG'
});

$innerdiv =  $('<div/>',{
	'class' : 'flex-col-c-m size-123 bg9 how-pos5'
});

$span1 = $('<span/>',{
	'class' : 'ltext-107 cl2 txt-center',
	'text' : '22'
});

$span2 = $('<span/>',{
	'class' : 'stext-109 cl3 txt-center',
	'text' : 'Jan 2018'
});

$innerdiv.append($span1);
$innerdiv.append($span2);
$a.append($img)
$a.append($innerdiv)
$div.append($a);

$div2 = $('<div class="p-t-32"><h4 class="p-b-15"><a href="blog-detail.html" class="ltext-108 cl2 hov-cl1 trans-04"> 제목 </a></h4>'
		+ '<p class="stext-117 cl6"> 소개내용 </p> <div class="flex-w flex-sb-m p-t-18"><span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10"> <span>' 
		+'<span class="cl4">By</span> 작성자 <span class="cl12 m-l-4 m-r-6">|</span>'
		+'</span> <span> 카테고리 <span class="cl12 m-l-4 m-r-6">|</span>'
		+'</span> <span> 댓글개수 </span> </span> <a href="blog-detail.html" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">Continue Reading <i class="fa fa-long-arrow-right m-l-9"></i></a></div></div>');

$(document).ready(function () {
	// 윤신영 - 매거진 목록 가져오기, ajax
	(function yajax() {
		var Criteria = { category : '${category}'};
		
		$.ajax({
				url: '${pageContext.request.contextPath }/magazine/magazineAjax',
				type: 'GET',
				data : Criteria,
				dataType: 'json',
				success: function (data) {
					console.log(data);
					var mgList = data.mgList;
					// 윤신영 - 밑에  for문은 data로 받은 magazineVo객체 하나하나를 글목륵으로 바꾸는 작업이다
					for(var i=0; i<mgList.length; i++){
						$div =  $('<div/>',{
							'class' : 'p-b-63'
						});
	
						$a = $('<a/>',{
							'href' : '${pageContext.request.contextPath }/magazine/magazine_cont?category=${category}&mgno='+mgList[i].mgno+'',
							'class' : 'hov-img0 how-pos5-parent',
							
						});
	
						$img = $('<img/>',{
							'src' : '${pageContext.request.contextPath }'+ mgList[i].rootfolder+ mgList[i].uuidname,
							'alt' : 'IMG-BLOG'
						});
	
						$innerdiv =  $('<div/>',{
							'class' : 'flex-col-c-m size-123 bg9 how-pos5'
						});
	
						$span1 = $('<span/>',{
							'class' : 'ltext-107 cl2 txt-center',
							'text' : '22'
						});
	
						$span2 = $('<span/>',{
							'class' : 'stext-109 cl3 txt-center',
							'text' : 'Jan 2018'
						});
	
						$innerdiv.append($span1);
						$innerdiv.append($span2);
						$a.append($img)
						$a.append($innerdiv)
						$div.append($a);
	
						$div2 = $('<div class="p-t-32"><h4 class="p-b-15"><a href="${pageContext.request.contextPath }/magazine/magazine_cont?category=${category}&mgno='+mgList[i].mgno+'" class="ltext-108 cl2 hov-cl1 trans-04"> '+mgList[i].title+' </a></h4>'
								+ '<p class="stext-117 cl6 txt_line"> '+mgList[i].content +' </p> <div class="flex-w flex-sb-m p-t-18"><span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10"> <span>' 
								+'<span class="cl4">By</span> 작성자 <span class="cl12 m-l-4 m-r-6">|</span>'
								+'</span> <span> '+ mgList[i].category +' <span class="cl12 m-l-4 m-r-6">|</span>'
								+'</span></span> '
								+'<a href="${pageContext.request.contextPath }/magazine/magazine_cont?category=${category}&mgno='+mgList[i].mgno+'" class="stext-101 cl2 hov-cl1 trans-04 m-tb-10">Continue Reading <i class="fa fa-long-arrow-right m-l-9"></i></a></div></div>');  // 매거진 내용 페이로 이동
						$div.append($div2)
						$('.magazine-item').append($div);
						}
					},
					error : function () {
						console.log('error');
					}
					
				});

		})();
	});
</script>
<jsp:include page="../info/footer.jsp"></jsp:include>