<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="header.jsp"></jsp:include>

<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">쿠폰관리</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">Home</a>
						</li>
						<li class="breadcrumb-item active" aria-current="page">쿠폰관리</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<h4 class="card-title my-2">쿠폰 등록</h4>
			<form action="${initParam.cpath }/lastAdmin/couponRegister" >
				<div class="form-row pb-3">
					<div class="col-md-4 mb-3">
						<label for="validationDefault01">쿠폰이름</label>
						<input type="text" name="couponName" class="form-control border-gray" id="validationDefault01" placeholder="쿠폰이름"  required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="validationDefault02">쿠폰 할인율</label>
						<input type="number" name="discountPercent" class="form-control border-gray" id="validationDefault02" placeholder="쿠폰 할인율"  required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="validationDefault02">쿠폰 할인액</label>
						<input type="number" name="discountMoney" class="form-control border-gray" id="validationDefault02" placeholder="쿠폰 할인액"  required>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-6 mb-3">
						<label for="validationDefault03">시작일</label>
						<input type="date" name="startDate" class="form-control border-gray" id="validationDefault03" placeholder="시작일" required>
					</div>
					<div class="col-md-6 mb-3">
						<label for="validationDefault04">종료일</label>
						<input type="date" name="endDate" class="form-control border-gray" id="validationDefault04" placeholder="종료일" required>
					</div>
				</div>
				<div>
					<button class="btn btn-primary" type="submit">쿠폰 등록</button>
				</div>
				
			</form>
		</div>
	</div>
	<div class="card">
		<div class="card-body">
			<h4 class="my-2">쿠폰 목록</h4>
			<table class="table">
				<thead>
					<tr>
						<th>쿠폰이름</th>
						<th>할인율</th>
						<th>할인액</th>
						<th>시작일</th>
						<th>종료일</th>
						<th>회원발급</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="coupon" items="${cplist }">
						<tr>
							<th>${coupon.couponName }</th>
							<th>${coupon.discountMoney }원</th>
							<th>${coupon.discountPercent }%</th>
							<th>${coupon.start_date }</th>
							<th>${coupon.end_date }</th>
							<th>
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">쿠폰 발급</button>
							</th>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">쿠폰 발급</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form>
				<div class="modal-body">
					<div class="form-row mb-3">
						<div class="col-6">
							<div class="custom-control custom-radio">
								<input type="radio" id="kinds" name="kinds" class="kinds custom-control-input" value="1">
								<label class="custom-control-label" for="kinds">모든회원</label>
							</div>
						</div>
						<div class="col-6">
							<div class="custom-control custom-radio">
								<input type="radio" id="kinds2" name="kinds" class="kinds custom-control-input" value="2">
								<label class="custom-control-label" for="kinds2">특정회원</label>
							</div>
						</div>
					</div>
					
					<div class="row member-search" style="padding: 1rem; border-top: 1px solid #e9ecef; display: none;">
						<div class="col-12">
							<h6 >사용자아이디 검색</h6>
							<div class="input-group	">
								<input type="text" class="form-control member-id" placeholder="사용자아아디" aria-label="Recipient's username" aria-describedby="button-addon2">
								<div>
							      
							    </div>
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" type="button" id="member-add-button">추가</button>
								</div>
							</div>
						</div>
						<div class="col-12">
							<ul class="list-group">
								<li class="list-group-item">Cras justo odio</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
			</form>
		</div>
	</div>
</div>
<script>
	$('#myModal').on('shown.bs.modal', function() {
		$('#myInput').trigger('focus');
	});
	
	$(document).ready(function() {
		var memberArray = new Array();
		
		$('.kinds').change(function() {
		    var valueCheck = $('.kinds:checked').val();
		    console.log(valueCheck);
		    
		    if(valueCheck==1){
		    	$('.member-search').hide('fast');
		    }else{
		    	$('.member-search').show('fast');
		    }
		});
		
		
		// 아이디 검증
		$('.member-id').change(function(){
			$.ajax({
				type: "POST",
				url: "${initParam}/lastAdmin/isMember", 
				data: {'id' : id}, 
				success: function(data) { 
					console.log(data); 
					if(data=='exist'){
						$('.member-id').next().attr('class','valid-feedback');
						$('.member-id').next().val('존재하는 아이디');
					}else{
						$('.member-id').next().attr('class','valid-feedback');
						$('.member-id').next().val('존재하지 않는 아이디');
					}
					
					// 존재하지 않는 아이디입니다
				}
			});
		});
		
		$('#member-add-button').click(function() {
			var id = $('.member-id').val();
			
			console.log($(this));
			console.log($(this).get(0));
			// $(this).parent().prev()  div태그
			$.ajax({
				type: "POST",
				url: "${initParam}/lastAdmin/memberAdd", 
				data: {'id' : id}, 
				success: function(data) { 
					console.log(data); 
					memberArray.put(id);
					$('.member-id').val('');
					
					// 존재하지 않는 아이디입니다
				}
			});
		});
		
	});
	
	
</script>

<jsp:include page="footer.jsp"></jsp:include>