<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">상품수정</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">Home</a>
						</li>
						<li class="breadcrumb-item active" aria-current="page">상품관리</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="card">
		<form class="form-horizontal">
			<div class="card-body">
				<div class="form-group row">
					<label for="fname" class="col-sm-3 text-right control-label col-form-label text-center">First Name</label>
					<div class="col-sm-9">
						<input type="text" name="name" class="form-control" id="fname" placeholder="${cosmetic.name }">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="price" class="col-sm-3 text-right control-label col-form-label text-center">가격</label>
					<div class="col-sm-9">
						<input type="number" name="" class="form-control" id="price" placeholder="가격을 입력해주세요" value="${cosmetic.price }">
					</div>
				</div>
				<div class="form-group row">
					<label for="discountPersent" class="col-sm-3 text-right control-label col-form-label text-center">할인율</label>
					<div class="col-sm-9">
						<input type="number" name="" class="form-control" id="discountPersent" placeholder="가격을 입력해주세요" value="${cosmetic.discountPersent }">
					</div>
				</div>
				<div class="form-group row">
					<label for="stockNumber" class="col-sm-3 text-right control-label col-form-label text-center">재고</label>
					<div class="col-sm-9">
						<input type="number" name="" class="form-control" id="stockNumber" placeholder="가격을 입력해주세요" value="${cosmetic.stockNumber }">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-3 text-center">이미지 파일 첨부</label>
					<div class="col-sm-9">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="validatedCustomFile" required="">
							<label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
							<div class="invalid-feedback">Example invalid custom file feedback</div>
						</div>
					</div>
				</div>
				
				<div id="editor">
				
				</div>
			</div>
			<div class="border-top">
				<div class="card-body">
					<button type="button" class="btn btn-primary btn-lg  float-right">수정</button>
				</div>
			</div>
		</form>
	</div>
</div>


<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<script>
  var quill = new Quill('#editor', {
    theme: 'snow'
  });
</script>
<%-- 
<script>
var options = {
	debug: 'info',
	modules: {
		toolbar: '#toolbar'
	},
	placeholder: '화장품 내용을 입력해주세요',
	readOnly: true,
	theme: 'snow'
};
  var quill = new Quill('#editor',options);
</script>
--%>

<jsp:include page="footer.jsp"></jsp:include>