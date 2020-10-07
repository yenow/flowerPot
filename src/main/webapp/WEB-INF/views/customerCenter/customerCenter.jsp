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
					<jsp:include page="keyword.jsp"></jsp:include>

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
									<th></th>
									<th>제목</th>
									<th>등록일</th>
								</tr>
							</thead>
							<tbody>

								<c:if test="${!empty notice }">
									<c:forEach var="notice" items="${notice }">
										<th>${notice.ccno }</th>
										<th><a
											href="${pageContext.request.contextPath }/customerCenter/noticeContent?ccno=${notice.ccno }">${notice.title }</a></th>
										<th>${notice.regdate }</th>
										</tr>

									</c:forEach>
								</c:if>

								<c:if test="${empty notice}">
									<tr>
										<th colspan="3">공지사항이 존재하지 않습니다.</th>
									</tr>
								</c:if>
							</tbody>
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

<jsp:include page="../info/footer.jsp"></jsp:include>