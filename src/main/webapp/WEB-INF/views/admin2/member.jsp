<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="en">
<head>
    	<jsp:include page="include/resources.jsp"/> <%--css,img,script등 정적자원 --%>

<script>
$(function() {
	$('#searchBtn').click(function(){
		console.log('검색버튼이 클릭됨!');
		let keyword = $('#keywordInput').val();
		console.log('검색어 : '+keyword);
		const condition = $('#condition option:selected').val();
		console.log('검색조건 : '+condition);
		location.href="${pageContext.request.contextPath}/admin2/member?keyword="+keyword+"&condition="+condition;
	});
	
	$('#keywordInput').keydown(function(key){
		if(key.keyCode == 13){
			$('#searchBtn').click();
		}
	});
});
</script>
</head>
<body>
    <div class="wrapper">
    	<!-- 사이드바 -->
    	<jsp:include page="include/sidebar.jsp"/> <%--사이드바 --%>
    
        <div class="main-panel">
            <!-- header(nav) -->
        	<nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#pablo"> 회원 관리 </a>
            		<jsp:include page="include/header.jsp"/> <%--헤더(네비) --%>
            
            <!-- 본문 시작 -->
            <div class="content">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<div class="card strpied-tabled-with-hover">
										<div class="card-header ">
											<h4 class="card-title" style="display:inline-block;">회원 목록</h4>
											<p class="card-category">부제</p>
										</div>
										<div class="card-body table-full-width table-responsive">
											<table class="table table-hover table-striped">
												<!-- 게시글 목록 출력 -->
												<!-- 게시글 목록 출력 -->
										<thead>
											<th>번호</th>
											<th>ID</th>
											<th>이름</th>
											<th>닉네임</th>
											<th>주소</th>
											<th>이메일</th>
											<th>성별</th>
											<th>생일</th>
											<th>등급</th>
											<th>가입일</th>
											<th>상태</th>
											<th>비고</th>
										</thead>
										<tbody>
											<%-- <c:forEach begin="1" end="100" step="1"">
												<tr>
													<td>mem.mno</td>
													<td>mem.id</td>
													<td>mem.name</td>
													<td>mem.nickname</td>
													<td>mem.address</td>
													<td>mem.email</td>
													<td>mem.gender</td>
													<td>mem.birth</td>
													<td>mem.member_rank</td>
													<td>mem.regdate</td>
													<td>mem.enabled</td>
													<td>탈퇴</td>
												</tr>
											</c:forEach> --%>
 											<c:forEach var="mem" items="${mList}"> 
												<tr>
													<td>${mem.mno}</td>
													<td>${mem.id}</td>
													<td>${mem.name}</td>
													<td>${mem.nickname}</td>
													<td>${mem.address}</td>
													<td>${mem.email}</td>
													<td>${mem.gender}</td>
													<td>${mem.birth}</td>
													<td>${mem.member_rank}</td>
													<td>${mem.regdate}</td>
													<td>${mem.enabled}</td>
													<td><button class="" onclick="location='#'">탈퇴</button></td>
												</tr>
											</c:forEach>
										</tbody>
											</table>
										</div>
									</div>
								</div>

								<!-- 검색 기능 -->
								<div class="col-md-12 ">
									<div class="pull-right" style="text-align: right;">
										<div class="input-group pull-right" style="text-align: right !important; ">
											<select id="condition" class="y-form-control"
												name="condition" style="width: 100px;">
												<option value="mno">번호</option>
												<option value="id">ID</option>
												<option value="name">이름</option>
											</select> <input type="text" class="y-form-control " name="keyword"
												id="keywordInput" placeholder="검색어" style="width: 200px;">
											<span class="input-group-btn "> 
												<input type="button"
												style="background-color: #9765da; color: white; display: inline-block;" value="검색"
												class="btn btn-izone btn-flat" id="searchBtn" >
											</span>
										</div>
									</div>

								</div>
								<div class="col-md-12">
									<!-- 페이징 처리 부분  -->
									<div class="paging">
										<ul class="pagination justify-content-center">
											<!-- 이전 버튼 -->
											<c:if test="${pc.prev}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin2/member/${pc.makeURI(pc.beginPage - 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">이전</a>
												</li>
											</c:if>

											<!-- 페이지 버튼 -->
											<c:forEach var="pageNum" begin="${pc.beginPage}"
												end="${pc.endPage}">
												<li class="page-item"><a
													href="<c:url value='/admin2/member/${pc.makeURI(pageNum)}'/>"
													class="page-link ${(pc.paging.page == pageNum) ? 'page-active' : ''}"
													style="margin-top: 0; height: 40px; color: #9765da; text-align: center; border: 1px solid #d3d3d3;">${pageNum}</a>
												</li>
											</c:forEach>

											<!-- 다음 버튼 -->
											<c:if test="${pc.next}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin2/member/${pc.makeURI(pc.endPage + 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">다음</a>
												</li>
											</c:if>
										</ul>
									</div>

								</div>
							</div>
						</div>
					</div>
			<!-- 본문 끝 -->
			           
            <!-- footer -->
            <jsp:include page="include/footer.jsp"/> <%--푸터 --%>
            
        </div>
    </div>

</body>
</html>