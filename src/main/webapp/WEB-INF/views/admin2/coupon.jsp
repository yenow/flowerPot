<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>

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
		location.href="${pageContext.request.contextPath}/admin2/coupon?keyword="+keyword+"&condition="+condition;
	});
	
	$('#keywordInput').keydown(function(key){
		if(key.keyCode == 13){
			$('#searchBtn').click();
		}
	});
});
function check(){
	if($.trim($('#coupName').val())==''){
		alert('쿠폰 이름을 입력하세요!');
		$('#coupName').val('').focus();
		return false;
	}
	if(($.trim($('#discMoney').val())=='') && ($.trim($('#discPercent').val())=='')){
		alert('할인액과 할인률중 하나 이상 입력하세요!');
		$('#discMoney').val('').focus();
		return false;
	}
	/*if($.trim($('#discPercent').val())==''){
		alert('할인 율을 입력하세요!');
		$('#discPercent').val('').focus();
		return false;
	}*/
	if($.trim($('#startD').val())==''){
		alert('쿠폰 시작기간을 입력하세요!');
		$('#startD').val('').focus();
		return false;
	}
	if($.trim($('#endD').val())==''){
		alert('쿠폰 마감기간을 입력하세요!');
		$('#endD').val('').focus();
		return false;
	}
}
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
                    <a class="navbar-brand" href="#pablo"> 쿠폰 관리 </a>
            		<jsp:include page="include/header.jsp"/> <%--헤더(네비) --%>
            
            <!-- 본문 시작 -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">쿠폰 등록</h4>
                                </div>
                                <div class="card-body">
                                    <form action="${pageContext.request.contextPath}/admin2/couponRegist" method="post" onsubmit="return check();">
                                    <div class="row">
                                       
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>쿠폰 이름</label>
                                                <input type="text" id="coupName" class="form-control" name="couponName" placeholder="쿠폰 이름" >
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label>할인액</label>
                                                <input type="text" id="discMoney" class="form-control" name="discountMoney" placeholder="할인 금액">
                                             </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label>할인율</label>
                                                <input type="text" id="discPercent" class="form-control" name="discountPercent" placeholder="할인 율">
                                           </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>유효기간</label>
                                                <input type="date" id="startD" class="form-control" name="startPDate" placeholder="시작">
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                            	<label>　</label>
                                                <input type="date" id="endD" class="form-control" name="endPDate" placeholder="마감">
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                            	<label>　</label>
                                    <button type="submit" class="btn btn-izone btn-flat pull-right" style="background-color: #9765da; color: white;">등록</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
									<div class="card strpied-tabled-with-hover">
										<div class="card-header ">
											<h4 class="card-title" style="display:inline-block;">쿠폰 목록</h4>
											<p class="card-category">부제</p>
										</div>
										<div class="card-body table-full-width table-responsive">
											<table class="table table-hover table-striped">
												<!-- 게시글 목록 출력 -->
												<!-- 게시글 목록 출력 -->
										<!-- 쿠폰 목록 출력 -->
										<thead>
											<th>쿠폰 번호</th>
											<th>쿠폰 이름</th>
											<th>할인 액</th>
											<th>할인 율</th>
											<th>시작 기간</th>
											<th></th>
											<th>마감 기간</th>
											<th>비 고</th>
										</thead>
										<tbody>
										<c:forEach var="coup" items="${cList}">
												<tr>
													<td>${coup.couNo}</td>
													<td>${coup.couponName}</td>
													<td><c:if test="${empty coup.discountMoney}">0원</c:if>
													<c:if test="${!empty coup.discountMoney}">${coup.discountMoney}원</c:if></td>
													<td><c:if test="${empty coup.discountPercent}">0%</c:if>
													<c:if test="${!empty coup.discountPercent}">${coup.discountPercent}%</c:if></td>
													<td><javatime:format value="${ coup.startDate}" pattern="yyyy년 MM월 dd일" /></td> <td>~</td>
													<td><javatime:format value="${ coup.endDate}" pattern="yyyy년 MM월 dd일" /></td><%-- <fmt:formatDate value="${coup.endPDate}" pattern="yyyy년 MM월 dd일"/> --%></td>
													<td><button id="popup_open_btn" data-toggle="modal" data-target="#myModal1" href="#pablo">쿠폰 발급</button></td>
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
							<!-- Mini Modal -->
                    <div class="modal fade modal-mini modal-primary" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header justify-content-center">
                                    <div class="modal-profile">
                                        <i class="nc-icon nc-bulb-63"></i>
                                    </div>
                                </div>
                                <div class="modal-body text-center">
                                    <p>Always have an access to your profile</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-link btn-simple">Back</button>
                                    <button type="button" class="btn btn-link btn-simple" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  End Modal -->
							
						</div>
					</div>
					<!-- 모달 -->
					
			<!-- 본문 끝 -->
			           
            <!-- footer -->
            <jsp:include page="include/footer.jsp"/> <%--푸터 --%>
            
        </div>
    </div>

</body>
</html>