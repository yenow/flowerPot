<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="en">
<head>
    	<jsp:include page="include/resources.jsp"/> <%--css,img,script등 정적자원 --%>

</head>
<body>
    <div class="wrapper">
    	<!-- 사이드바 -->
    	<jsp:include page="include/sidebar.jsp"/> <%--사이드바 --%>
    
        <div class="main-panel">
        
            <!-- header(nav) -->
            <jsp:include page="include/header.jsp"/> <%--헤더(네비) --%>
            
            <!-- 본문 시작 -->
			<!-- 본문 끝 -->
			           
            <!-- footer -->
            <jsp:include page="include/footer.jsp"/> <%--푸터 --%>
            
        </div>
    </div>

</body>
</html>