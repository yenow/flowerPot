<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92"
	style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">고객센터</h2>
</section>


<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> 홈 <i
			class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <a href="product.html" class="stext-109 cl8 hov-cl1 trans-04">
			고객센터 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <span class="stext-109 cl4"> 공지사항 </span>
	</div>
</div>

<!-- Content page -->
<section class="bg0 p-t-62 p-b-60">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-lg-3 p-b-80">
				<div class="side-menu">
					<div class="bor17 of-hidden pos-relative">
						<!-- 검색창 -->

						<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55"
							type="text" name="search" placeholder="Search" id="search">

						<!-- 검색 버튼 -->
						<button id="btnSearch" name="btnSearch"
							class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
							<i class="zmdi zmdi-search" id="btnSearch"></i>
						</button>
					</div>

					<jsp:include page="sidebar.jsp"></jsp:include>


					<div class="p-t-50">
						<h4 class="mtext-112 cl2 p-b-27">Tags</h4>

						<div class="flex-w m-r--5">
							<a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Fashion </a> <a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Lifestyle </a> <a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Denim </a> <a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Streetstyle </a> <a href="#"
								class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
								Crafts </a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8 col-lg-9 p-b-80">
				<div class="p-r-45 p-r-0-lg">
					<div class="table col-12 board-list ">
						<h2 class="my-3">공지사항</h2>
						<table class="table table-striped table-sm">
							<thead>
								<tr>

									<th>제목</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="notice" items="${searchKeyword}">

									<th>${notice.title }</th>
									<th>${notice.regdate }</th>
									</tr>
							</tbody>
							</c:forEach>
						</table>
					</div>

					<!-- Pagination -->
					<div class="flex-l-m flex-w w-full p-t-10 m-lr--7 text-center">
						<a href="#"
							class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
							1 </a> <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
							2 </a>
					</div>
				</div>
			</div>


		</div>
	</div>
</section>

<script>
	alert("${searchKeyword}");
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

	$(function abc(ccno) {
		$
				.ajax({
					url : '${pageContext.request.contextPath }/customerCenter/customerCenter?ccno='
							+ ccno,

				})
	})
</script>
<script>
	$(document).ready(function() {
		$("#btnSearch").click(function() {
			const keyword = $("#search").val();
			if (keyword == '') {
				alert("검색어 입력 필수임 ㅇㅅㅇ");
			} else {
				location.href = "search?keyword=" + keyword;
			}
		});
	});
</script>
<jsp:include page="../info/footer.jsp"></jsp:include>