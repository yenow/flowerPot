<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="ko">
<head>
	<jsp:include page="info/resources.jsp"/> <%--css,img,script등 정적자원 --%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</head>
<body>
	<div class="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="info/sidebar.jsp" />
		<%--사이드바 --%>

		<div class="main-panel">
			<!-- header(nav) -->
			<nav class="navbar navbar-expand-lg " color-on-scroll="500">
				<div class="container-fluid">
					<a class="navbar-brand" href="#pablo"> 사원 관리 </a>
					<jsp:include page="info/header.jsp" />
					<%--헤더(네비) --%>

					<!-- 본문 시작 -->
					<div class="content">
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-8">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">직원 회원가입</h4>
										</div>
										<div class="card-body">
											<form>
												<div class="row">

													<div class="col-md-4">
														<div class="form-group">
															<label>아이디</label>
															<input type="text" class="form-control" name="" placeholder="<c:if test="${empty emp.empId}">미발급 상태입니다.</c:if>" value="<c:if test="${!empty emp.empId}">${emp.empId}</c:if>">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>비밀번호</label>
															<input type="text" class="form-control" name="" placeholder="비밀번호" value="">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>비밀번호 확인</label>
															<input type="text" class="form-control" name="" placeholder="비밀번호 확인" value="">
														</div>
													</div>

												</div>

												<div class="row">
													<div class="col-md-3">
														<div class="form-group">
															<label>이름</label>
															<input type="text" class="form-control" name="name" placeholder="이름" value="${empName}">
														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group">
															<label>성별</label>
															<div class="form-control" style="border: 0 solid;">
																<input type="radio" name="gender" value="남자">
																남자
																<input type="radio" name="gender" value="여자">
																여자
															</div>
														</div>
													</div>
													<div class="col-md-7">
														<div class="form-group">
															<label>이메일</label>
															<input type="text" class="form-control" name="lastName" placeholder="example@abcde.fgh" value="">
														</div>
													</div>
												</div>



												<div class="row">
													<div class="col-md-3">
														<div class="form-group">
															<label>우편 번호</label>
															<input type="text" name="postcode" id="sample4_postcode" class="form-control" placeholder="우편 번호" />
														</div>
													</div>
													<div class="col-md-3" style="margin-top: 30px;">
														<div class="form-group">
															<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
															<br>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label>도로명 주소</label>
															<input type="text" name="roadAddr" id="sample4_roadAddress" class="form-control" placeholder="도로명 주소">
														</div>
													</div>

													<div class="col-md-6">
														<div class="form-group">
															<label>지번 주소</label>
															<input type="text" name="jibunAddr" id="sample4_jibunAddress" class="form-control" placeholder="지번 주소">
														</div>
													</div>
												</div>
												<!-- span태그가 없으면 팝업창이 종료되지 않습니다. -->
												<span id="guide" style="color: #999; display: none"></span>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label>참고 주소</label>
															<input type="text" name="extraAddr" id="sample4_extraAddress" class="form-control" placeholder="참고 주소" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label>상세 주소</label>
															<input type="text" name="detailAddr" id="sample4_detailAddress" class="form-control" placeholder="상세 주소" />
														</div>
													</div>
												</div>

												<button type="submit" class="btn btn-flat pull-right" style="background-color: #212b52; border: 1px solid #212b52; color: white;">등록</button>
												<div class="clearfix"></div>
											</form>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- 본문 끝 -->

					<!-- footer -->
					<jsp:include page="info/footer.jsp" />
					<%--푸터 --%>

				</div>
		</div>
</body>
</html>