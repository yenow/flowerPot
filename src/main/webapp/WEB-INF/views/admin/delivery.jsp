<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="ko">
<head>
<link rel="stylesheet" href="/webjars/github-com-twbs-bootstrap/v3.3.7/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="/webjars/github-com-twbs-bootstrap/v3.3.7/dist/css/bootstrap-theme.css" />
<link href="${pageContext.request.contextPath}/resources/assets/css/tracking-new-blue.css" rel="stylesheet" />

<script src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script src="/webjars/github-com-twbs-bootstrap/v3.3.7/dist/js/bootstrap.min.js"></script>

<jsp:include page="info/resources.jsp" />
<%--css,img,script등 정적자원 --%>
<style type="text/css">
.modal {
	position: fixed;
	top: -34%;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 1050;
	display: none;
	overflow: hidden;
	outline: 0;
}

#ifModal {
	width: 400px;
	height: 700px;
	border: 1px;
}

#if {
	width: 600px;
	height: 700px;
	border: 1px;
}
</style>
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
					<a class="navbar-brand" href="#pablo"> 배송 관리 </a>
					<jsp:include page="info/header.jsp" />
					<%--헤더(네비) --%>

					<!-- 본문 시작 -->
					<div class="content">
						<div class="container-fluid">
							<%-- <div class="row">
								<div class="col-md-5" style="display: ;"><!-- style="display: none;" -->
									<div class="card">
										<div class="card-header">
											<h4 class="card-title">배송조회 (모달창)</h4>
											<label>부제</label>
										</div>
										<form action="http://info.sweettracker.co.kr/tracking/5" method="post" target="paramModal">

											<div class="card-body">
												<!-- url등록하기 -->

												<div class="row">

													<div class="col-md-3">
														<div class="form-group">
															<label>아이디</label><b id="comCheck"></b>
															<input type="text" class="form-control" name="" id="" placeholder="ID">
														</div>
													</div>
													<div class="col-md-3" style="display: inline-block;">
														<div class="form-group" style="display: inline-block;">
															<button class="btn btn-flat" style="background-color: #212b52; color: white; border: 1px solid #212b52; margin-left: -26px; margin-top: 27px;">아이디 검색</button>
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<!-- <label for="t_key">API key</label>
															<input type="text" class="form-control" id="t_key" name="t_key" placeholder="제공받은 APIKEY"> -->
															<input type="hidden" name="t_key" value="nZYUkdrByIEsjU8GKc7EOA">
															<!-- 제공받은 APIKEY -->
														</div>
														<div class="form-group fg1">
															<!-- <label for="t_code">택배사 코드</label>
															<input type="text" class="form-control" name="t_code" id="t_code" placeholder="택배사 코드"> -->
															<input type="hidden" name="t_code" value="">
															<!-- 택배사 코드 -->
														</div>
														<div class="form-group fg2">
															<!-- <label for="t_invoice">운송장 번호</label>
															<input type="text" class="form-control" name="t_invoice" id="t_invoice" placeholder="운송장 번호"> -->
															<input type="hidden" name="t_invoice" value="">
															<!-- 운송장 번호 -->
														</div>
													</div>
												</div>
												<button class="btn btn-flat pull-right" id="popup_open_btn" data-toggle="modal" data-target="#myModal1" href="#pablo" value="${coup.couponName}" onclick="return giftCoupon(this);" style="background-color: #212b52; color: white; border: 1px solid #212b52; margin-bottom: 10px;">배송조회</button>
										</form>
									</div>
								</div>
							</div>
						</div> --%>
						<%-- 여기부터 sweetTracker API 시작 --%>
						<div class="row">
							<div class="col-md-5">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">배송조회(sweettracker API)</h4>
										<label>RESTAPI로 아이디를 검색한 후 히든태그 추가하기 </label>
									</div>
									<div class="card-body">
										<form action="http://info.sweettracker.co.kr/tracking/5" method="post" target="param">

											<div class="row">
												<div class="col-md-3">
													<div class="form-group" style=>
														<label>아이디</label><b id="comCheck"></b>
														<input type="text" class="form-control" id="idBox" placeholder="ID">
													</div>
												</div>
												<div class="col-md-3" style="display: inline-block;">
													<div class="form-group" style="display: inline-block;">
														<button class="btn btn-flat" id="searchId" style="background-color: #212b52; color: white; border: 1px solid #212b52; margin-top: 27px;">아이디 검색</button>
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<!-- <label for="t_key">API key</label>
															<input type="text" class="form-control" id="t_key" name="t_key" placeholder="제공받은 APIKEY"> -->
														<input type="hidden" name="t_key" value="nZYUkdrByIEsjU8GKc7EOA">
														<!-- 제공받은 APIKEY -->
													</div>
													<div class="form-group fg1">
														<!-- <label for="t_code">택배사 코드</label>
															<input type="text" class="form-control" name="t_code" id="t_code" placeholder="택배사 코드"> -->
														<input type="hidden" name="t_code" value="${delivery.t_code}">
														<!-- 택배사 코드 -->
													</div>
													<div class="form-group fg2">
														<!-- <label for="t_invoice">운송장 번호</label>
															<input type="text" class="form-control" name="t_invoice" id="t_invoice" placeholder="운송장 번호"> -->
														<input type="hidden" name="t_invoice" value="${delivery}">
														<!-- 운송장 번호 -->
													</div>
												</div>
												<div class="col-md-3"></div>
											</div>
											<button type="submit" class="btn btn-default pull-right" style="background-color: #212b52; color: white; border: 1px solid #212b52;" onclick="onDisplay()">조회하기</button>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-5" id="noneDiv" style="display: none;">
								<div class="card">
									<div class="card-header" id="idChk">
										<h4 class="card-title">XX님 배송조회(sweettracker API)</h4>
										<label>부제</label>
									</div>
									<div class="card-body">
										<!-- url등록하기 -->

										<div class="row">
											<div class="col-md-3">
												<iframe id="if" name="param"> </iframe>
											</div>
										</div>
										<div class="row">
											<div class="col-md-3"></div>
										</div>

									</div>
									<button class="btn btn-default" style="background-color: #212b52; color: white; border: 1px solid #212b52;" onclick="offDisplay()">닫기</button>
								</div>
							</div>
						</div>
						<%-- 여기부터 sweetTracker API 끝 --%>
						<div class="row"></div>
						<!-- Mini Modal -->
						<div class="modal fade modal modal-primary" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content" style="border: 3px solid #00498c; border-radius: 20px;">
									<div class="modal-header justify-content-center" style="display: inline-block;">
										<div class="" id="idChk">
											<h4 class="card-title">XX님 배송조회(sweettracker API)</h4>
											<label></label>
										</div>

										<!-- 
                                    <div class="modal-profile">
                                        <i class="nc-icon nc-bulb-63"></i> 
                                    </div>
                                        -->
									</div>
									<div class="modal-body text-center">
										<div class="card-body">
											<!-- url등록하기 -->

											<div class="row">
												<div class="col-md-3">
													<iframe id="ifModal" name="paramModal"> </iframe>
												</div>
											</div>
											<div class="row">
												<div class="col-md-3"></div>
											</div>

										</div>


									</div>
									<div class="modal-footer pull-right">
										<form action="#" method="post">
											<button type="button" class="btn btn-simple btn-flat pull-right" style="background-color: #212b52; color: white; border: 1px solid #212b52; margin-left: 180px;" data-dismiss="modal">확인</button>

											<!-- 												<input type="submit" class="btn btn-flat pull-right" data-dismiss="modal" style="background-color: #19375e; color: white; border: 1px solid #19375e; margin-left: 180px;" value="지급">
 -->
										</form>
										<!-- <button type="button" class="btn btn-link btn-simple">Back</button> -->
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
<script>
$(function() {
	//엔터를 눌렀을때 키다운
	$('#idBox').keydown(function(key) {
		if (key.keyCode == 13) {
			$('#searchId').click();
		}
	});
	//버튼 클릭 이벤트
	$("#searchId").click(function() {
		//ajax통신으로 서버에서 값 받아오기 
		const id = $('#idBox').val();
		console.log("id: " + id);
		/* 모달창의 id입력박스가 비어있을떄 경고메시지 */
		if ($.trim($('#idBox').val()) == '') {
			$("#idBox").css("background-color", "pink");
			$("#idChk").html("<b style='font-size:14px; color:red;'>ID를 입력해주세요</b>");
			$('#idBox').val('').focus();
			/* 비어있지 않다면 ajax 실행 */
			return false;
		}
		$.ajax({
			type : "get",
			url : "${pageContext.request.contextPath}/admin/delivery/"+ id,
			headers : {
				"Content-Type" : "application/json"
			},
			/* data: id, */
			dataType : "json",
			success : function(result) {
				
				console.log(result.member);
				console.log(result.member.name);
				console.log(result.delivery);
				const memName = result.member.name;
				var t_code =null;
				var t_invoice = null;
				if(result.delivery == null){
					 t_code = '택배 코드 없음!!'; //택배회사 코드 !!!!!!!!!!!!!!!!!!!!!!!!!!
					 t_invoice = '운송장 번호 없음!!'; //운송장번호 !!!!!!!!!!!!!!!!!!!!!!!!!!
				}else{
					 t_code = result.delivery.t_code; //택배회사 코드 !!!!!!!!!!!!!!!!!!!!!!!!!!
					 t_invoice = result.delivery.t_invoice; //운송장번호 !!!!!!!!!!!!!!!!!!!!!!!!!!
				}
				
				console.log(t_code);
				console.log(t_invoice);
/* 				const t_invoice = result.delivery.t_invoice; //운송장번호 !!!!!!!!!!!!!!!!!!!!!!!!!!!!
 */				//.append()함수를통해서 가져온 정보를 html태그와 함께 누적해서 추가한다.
				$("#idChk").html("<b></b>"); /* 이건 작동됨 */
				$('#idBox').val('').focus();
				$("#idBox").css("background-color","#e8f0fe");/* 이게 안먹음 검색성공하면 녹색으로 색이바껴야하는데 안먹음*/
				$('.fg1').append('<input type="hidden" name="t_code" value="'+t_code+'">');
				$('.fg1').append('<input type="hidden" name="t_code" value="'+'확인'+'">');
				$('.fg2').append('<input type="hidden" name="t_invoice" value="'+t_invoice+'">');
				$('.fg2').append('<input type="hidden" name="t_invoice" value="'+'되냐'+'">');
				$("#idChk").html('<h4 class="card-title">'+memName+ '님 배송조회(sweettracker API)</h4>'); /* 이건 작동됨 */
			},
			error : function() {//DB에 데이터가 없을때 이곳에서 검증
			}
		});
	})
});

	function onDisplay() {
		$('#noneDiv').show();
	}
	function offDisplay() {
		$('#noneDiv').hide();
	}
</script>

</html>