<%@ page contentType="text/html; charset=UTF-8"%>


		<div class="sidebar" data-color="blue" data-image="${pageContext.request.contextPath}/resources2/assets/img/sidebar-5.jpg">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="#" class="simple-text">
                       	 관리자
                    </a>
                </div>
                <ul class="nav">
                    <li id="Dashboard">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/dashboard">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>종합 현황(손도못댐)</p>
                        </a>
                    </li>
                    <li id="coupon">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/coupon">
                            <i class="nc-icon nc-satisfied"></i>
                            <p>쿠폰 관리</p>
                        </a>
                    </li>
                    <li id="brand">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/brand">
                            <i class="nc-icon nc-tag-content"></i>
                            <p>입점 관리</p>
                        </a>
                    </li>
                    <li id="employee">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/employee">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>직원 관리</p>
                        </a>
                    </li>
                    <li id="member">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/member">
                            <i class="nc-icon nc-badge"></i>
                            <p>회원 관리</p>
                        </a>
                    </li>
                	<li id="inventory">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/inventory">
                            <i class="nc-icon nc-notes"></i>
                            <p>재고 관리(구상도못함)</p>
                        </a>
                    </li>
                	<li id="delevery">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/delivery">
                            <i class="nc-icon nc-delivery-fast"></i>
                            <p>주문 배송</p>
                        </a>
                    </li>
                	<li id="communication">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/customer/notice">
                            <i class="nc-icon nc-notification-70"></i>
                            <p>소통 관리</p>
                        </a>
                    </li>
                	<li id="Notifications">
                        <a class="nav-link" href="${pageContext.request.contextPath}/admin/notifications">
                            <i class="nc-icon nc-bell-55"></i>
                            <p>신규 알림</p>
                        </a>
                    </li>
                    <li><a><i></i><p> </p></a></li>
                	<li><a><i></i><p> </p></a></li>
                	<li><a><i></i><p> </p></a></li>
                	<li><a><i></i><p> </p></a></li>
                	<li><a><i></i><p> </p></a></li>
					<li id="active-pro" class="active-pro">
                        <a class="nav-link active" href="${pageContext.request.contextPath}">
                            <i class="nc-icon nc-alien-33"></i>
                            <p>메인페이지</p>
                        </a>
                    </li>
                    
                    
                    
                    
                </ul>
            </div>
        </div>


	<!-- 
   <div class="sidebar" data-color="purple" data-image="../resources/assets2/img/sidebar-5.jpg">
	<div class="sidebar-wrapper">

            <div class="logo">

                <a href="" class="simple-text">
                	관리자
                </a>
            </div>
			
            <ul class="nav">
                <li id="Dashboard">
                    <a href="${pageContext.request.contextPath}/admin/dashboard">
                        <i class="pe-7s-graph"></i>
                        <p>종합 현황</p>
                    </a>
                </li>
                <li id="coupon">
                    <a href="${pageContext.request.contextPath}/admin/coupon">
                        <i class="pe-7s-ticket"></i>
                        <p>쿠폰 관리</p>
                    </a>
                </li>
                <li id="brand">
                    <a href="${pageContext.request.contextPath}/admin/brand">
                        <i class="pe-7s-star"></i>
                        <p>입점 관리</p>
                    </a>
                </li>
                <li id="employee">
                    <a href="${pageContext.request.contextPath}/admin/employee">
                        <i class="pe-7s-user"></i>
                        <p>직원 관리</p>
                    </a>
                </li>
                <li id="member">
                    <a href="${pageContext.request.contextPath}/admin/member">
                        <i class="pe-7s-id"></i>
                        <p>회원 관리</p>
                    </a>
                </li>
                <li id="Typography">
                    <a href="${pageContext.request.contextPath}/admin/goods">
                        <i class="pe-7s-note2"></i>
                        <p>재고 관리(구상도못함)</p>
                    </a>
                </li>
                
                <li id="Maps">
                    <a href="${pageContext.request.contextPath}/admin/maps">
                        <i class="pe-7s-cart"></i>
                        <p>주문 배송(손도못댐)</p>
                    </a>
                </li>
                <li id="Icons">
                    <a href="${pageContext.request.contextPath}/admin/customer/notice">
                        <i class="pe-7s-speaker"></i>
                        <p>소통 관리</p>
                    </a>
                </li>

                <li id="Notifications">
                    <a href="${pageContext.request.contextPath}/admin/notifications">
                        <i class="pe-7s-bell"></i>
                        <p>신규 알림(아직안함)</p>
                    </a>
                </li>

                <li><a><i></i><p> </p></a></li>
                <li><a><i></i><p> </p></a></li>
                <li><a><i></i><p> </p></a></li>
                <li><a><i></i><p> </p></a></li>
                <li><a><i></i><p> </p></a></li>

                <li id="Icons">
                    <a href="${pageContext.request.contextPath}/admin/icons">
                        <i class="pe-7s-speaker"></i>
                        <p>아이콘목록(개발후지움)</p>
                    </a>
                </li>
				<li id="active-pro" class="active-pro">
                    <a href="${pageContext.request.contextPath}">
                        <i class="pe-7s-home"></i>
                        <p>메인 페이지</p>
                    </a>
                </li>
            </ul>
    	</div>
</div>
	 -->

<!--           <li class="active">
 -->
<script src="../resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>

<script>
	/* 
	$(document).ready(function() {
		$('li').click(function() {
			var idName = $(this).attr("id");
			localStorage.setItem('idName', idName); //id값이 들어가있는 a변수를 idName의 키값에 저장
			localStorage.setItem('redirect',idName);//새로고침 했을경우에 사용할 변수
		});
		
		$("ul li").each(function() {//each는 반복문으로 ul안에있는  li를 게속 가져온다.
			if ($(this).attr('id') == localStorage.getItem("idName")) {
				$(this).addClass("active");
				localStorage.removeItem("idName");
				console.log(localStorage.getItem("idName"));
				return false;
			}
			else if(localStorage.getItem("idName") == null){
				$("#Dashboard").addClass("active");
			}
		});
		/* window.onbeforeunload = function(){//새로고침 시 발생할 이벤트
			localStorage.setItem('idName',localStorage.getItem("redirect"));
		} */
		document.onkeydown = fkey;
		function fkey(e){
			if( (e.keyCode == 116) || ((e.ctrlKey == true) && (e.keyCode== 82))){
				localStorage.setItem('idName',localStorage.getItem("redirect"));
			}
		}
		/*
		window.onbeforeunload = function(){
			console.log('새로고침 단추가 클릭됨');
			localStorage.setItem('idName',localStorage.getItem("redirect"));
		}
		*/
	}); */
	
</script> 