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
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #efbbcf; padding: 2px;">
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
	</nav>
	<!-- /nav -->
	<!-- content -->
	<div class="container-fluid">
		<h2 class="text-center my-3">화장품 등록<input type="submit" class="btn btn-secondary float-right" value="등록"> </h2>
		<form action="${pageContext.request.contextPath}" method="post" enctype="multipart/form-data">
			<!-- 화장품 타입, 화장품 브랜드 -->
			<div class="row">
				<%-- <input type="hidden" name="mno" value="${login.mno }"> --%>
				
				<div class="col">
					<label for="type">타입</label> <select class="custom-select d-block w-100" id="type" name="type" required="">
						<option value="">Choose...</option>
						<option value="Tip">스킨케어</option>
						<option value="Interview">메이크업</option>
						<option value="COVID19">바디케어</option>
						<option value="setec">헤어케어</option>
						<option value="setec">향수/디퓨저</option>
					</select>
					<div class="invalid-feedback">Please select a valid country.</div>
				</div>
				<div class="col">
					<label for="brand">브랜드</label> <select class="custom-select d-block w-100" id="brand" name="brand" required="">
						<option value="">Choose...</option>
						<option value="Tip">Tip</option>
						<option value="Interview">Interview</option>
						<option value="COVID19">COVID19</option>
						<option value="setec">setec</option>
					</select>
					<div class="invalid-feedback">Please select a valid country.</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for=""price"">가격</label> 
						<input type="number" class="form-control" id="price" name=""price"" placeholder="가격을 입력하세요">
					</div>
				</div>
			</div>
			<!-- /카테고리 -->
			
			
			<!-- 섬네일 이미지 등록 -->
			<div class="form-group">
				<label for="customFile">섬네일 이미지</label> 
				<div class="custom-file">
				  <input type="file" class="custom-file-input" id="customFile">
				  <label class="custom-file-label" for="customFile">Choose file</label>
				</div>
				<ul class="image-list list-group my-2">
					 <li class="list-group-item">파일목록</li>
				</ul>
			</div>
			<!-- title -->
			<div class="mb-3">
				<label for="username">제목</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">제목</span>
					</div>
					<input type="text" class="form-control" id="username" name="title" placeholder="Username" required="">
					<div class="invalid-feedback" style="width: 100%;">Your username is required.</div>
				</div>
			</div>
			<!-- /title -->
			<!-- 내용 -->
			<div class="mb-2">
				<textarea id="summernote" name="content"></textarea>
			</div>
			
			<!-- 상품 상세설명 -->
			<div class="row">
				<div class="col-4">
					<div class="form-group">
						<label for="capacity">용량</label> 
						<input type="email" class="form-control" id="capacity" name="capacity" placeholder="용량을 입력해주세요(ml 단위)" aria-describedby="emailHelp"> 
						<small id="emailHelp" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-4">
					<div class="form-group">
						<label for="period">기간</label> 
						<input type="email" class="form-control" id="period" name="period" placeholder="기간을 입력해주세요(일 단위)" aria-describedby="emailHelp"> 
						<small id="emailHelp" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-4">
					<div class="form-group">
						<label for="nation">국가</label> 
						<input type="email" class="form-control" id="nation" name="nation" aria-describedby="emailHelp"> 
						<small id="emailHelp" class="form-text text-muted"></small>
					</div>
				</div>
				<div class="col-12">
					<div class="form-group">
						<label for="useMethod">사용방법</label> 
						<input type="email" class="form-control" id="useMethod" name="useMethod" placeholder="용량을 입력해주세요(ml 단위)" aria-describedby="emailHelp"> 
						<small id="emailHelp" class="form-text text-muted"></small>
					</div>
				</div>
			</div>
			<!-- /상품 상세설명 -->
			
			<!-- 제출 -->
			<div class="text-center">
				<input type="submit" class="btn btn-primary" value="등록">
			</div>
		</form>
	</div>
<script type="text/javascript">
		$('#summernote').summernote(
				{
					height : 300, // 에디터 높이
					minHeight : 600, // 최소 높이
					maxHeight : null, // 최대 높이
					focus : true, // 에디터 로딩후 포커스를 맞출지 여부
					lang : "ko-KR", // 한글 설정
					fontNames : [ 'fontA', 'Arial', 'Arial Black',
							'Comic Sans MS', 'Courier New', ],
					fontNamesIgnoreCheck : [ 'fontA' ],
					placeholder : '최대 2048자까지 쓸 수 있습니다', //placeholder 설정
					callbacks : { //여기 부분이 이미지를 첨부하는 부분
						onImageUpload : function(files) {
							uploadSummernoteImageFile(files[0], this);
						}
					}
				});

		/**
		 * 이미지 파일 업로드
		 */
		function uploadSummernoteImageFile(file, editor) {
			data = new FormData();
			data.append("file", file);
			$
					.ajax({
						data : data,
						type : "POST",
						url : "${pageContext.request.contextPath}/uploadSummernoteImageFile",
						contentType : false,
						processData : false,
						success : function(data) {
							//항상 업로드된 파일의 url이 있어야 한다.
							console.log(data);
							$(editor).summernote('insertImage', data.url);
						}
					});	
		}
		
// 유효성검증, input타입에 모든 값이 들어가있는지


</script>
	
	
	<script src="${pageContext.request.contextPath}/resources/js/summernote-ko-KR.js"></script>
</body>
</html>
