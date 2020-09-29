<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>enneagram</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/write.css">  -->
</head>
<body>
	<!-- nav -->
	<%-- <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #efbbcf; padding: 2px;">
		<a class="navbar-brand" href="${pageContext.request.contextPath}">FlowerPot</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<!-- home -->
				<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}">
						Home<span class="sr-only">(current)</span>
					</a></li>
				<!-- category -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/product/product" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">카테고리</a></li>
				<!-- 매거진 -->
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/magazine/magazine" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">매거진</a></li>
				<!-- 오늘의 추천 -->
				<li class="nav-item"><a href="contact.html" class="nav-link">오늘의 추천</a></li>
				<!-- 이벤트 -->
				<li class="nav-item"><a href="contact.html" class="nav-link">이벤트</a></li>
			</ul>
		</div>
	</nav> --%>
	<!-- /nav -->
	<!-- content -->
	<div class="container-fluid">
		<h2 class="text-center my-3">Q & A 수정</h2>
		<form action="${pageContext.request.contextPath}/admin/customer/q&a_modify_ok" method="post" enctype="multipart/form-data">
			<%-- <input type="hidden" name="mno" value="${login.mno }"> --%>
			<input type="hidden" name="ccno" value="${qANDa.ccno}"/>

			<!-- title -->
			<div class="mb-3">
				<div class="input-group">
					<div class="input-group-prepend" >
						<span class="input-group-text" style="background-color: #212b52; color: white; opacity: 0.9">제목</span>
					</div>
					<input type="text" class="form-control" id="username" name="title" placeholder="Username" required="" value="${qANDa.title}">
					<div class="invalid-feedback" style="width: 100%;">Your username is required.</div>
				</div>
			</div>
			<!-- /title -->
			<!-- 내용 -->
			<div class="mb-2">
				<textarea id="summernote" name="content">${qANDa.content}</textarea>
			</div>
			<!-- 제출 -->
			<div class="text-center">
				<input type="submit" class="btn btn-primary" style="background-color: #9765da; border: 1px solid #212b52; color: white; opacity: 0.9" value="수정">
				<input type="button" onclick="history.back(-1); return false;" class="btn btn-primary" style="background-color: #212b52; border: 1px solid #212b52; color: white; opacity: 0.9" value="취소">
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		$('#summernote').summernote({
			height : 300, // 에디터 높이
			minHeight : 600, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			fontNames: ['fontA',  'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		    fontNamesIgnoreCheck: ['fontA'],
			placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
			callbacks : { //여기 부분이 이미지를 첨부하는 부분
				onImageUpload : function(files) {
					uploadSummernoteImageFile(files[0], this);
				}
			}
		});

	</script>
	
	<script src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>
</body>
</html>
