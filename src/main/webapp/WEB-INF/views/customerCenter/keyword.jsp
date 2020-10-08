<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="bor17 of-hidden pos-relative">
	<!-- 검색창 -->

	<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text"
		name="search" placeholder="Search" id="search">

	<!-- 검색 버튼 -->
	<button id="btnSearch" name="btnSearch"
		class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
		<i class="zmdi zmdi-search" id="btnSearch"></i>
	</button>
</div>
<script>
	$(document).ready(function() {
		$("#btnSearch").click(function() {
			const keyword = $("#search").val();
			if (keyword == '') {
				alert("검색어 입력 필수임 ㅇㅅㅇ");

			} else {
				location.href = "${pageContext.request.contextPath }/customerCenter/search?keyword=" + keyword;
			}
		});
	});
</script>