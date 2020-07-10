<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../info/header.jsp"></jsp:include>

<div class="layout-page-header">
	<h2 class="layout-page-title">장바구니</h2>
	<div class="pg_sub_desc">
		<p>주문하실 상품명 및 수량을 정확하게 확인해 주세요.</p>
	</div>
</div>

<div class="user_form section_cart">
	<form id="viewCart" name="frmCart" method="post" action="/shop/order/order.php">
		<input type="hidden" name="mode" value="setOrder">
		<div class="tbl_comm cart_goods">
			<table class="tbl_comm tbl_header">
				<caption>장바구니 목록 제목</caption>
				<colgroup>
					<col style="width: 375px">
					<col style="width: 432px">
					<col style="width: 115px">
					<col style="width: 110px">
					<col style="width: auto">
				</colgroup>
				<thead>
					<tr>
						<th id="thSelect">
							<div class="all_select">
								<label class="label_check" :class="{checked : allChecked}"> <input type="checkbox" name="allCheck" class="ico_check" v-model="allChecked" @change="onClickAllChecked">
								</label> <span class="tit"> 전체선택 (<span class="num_count" v-text="checkedCount"></span>/<span class="num_total" v-text="totalCount"></span>)
								</span>
							</div>
						</th>
						<th id="thInfo">상품 정보</th>
						<th id="thCount">수량</th>
						<th id="thCost">상품금액</th>
						<th id="thDelete"><span class="screen_out">삭제선택</span></th>
					</tr>
				</thead>
			</table>
			<div id="viewGoods">
				<template v-for="product in products" v-if="!noData"> <cart-item v-if="!product.is_package" :bus="bus" :parent-product="product" :product="product" :key="product.no" :type="type" :tag-name="product.tags.names" :tag-type="product.tags.tagType" @on-change-checked="onChangeChecked($event, product)" @update-price="updatePrice($event, product, false)" @on-delete="onDelete"> </cart-item> <cart-item v-if="product.is_package" v-for="(childProduct,idx) in product.products" :bus="bus" :name="product.name" :idx="idx" :parent-product="product" :product="childProduct" :key="childProduct.no" :type="type" :tag-name="childProduct.tags.names" :tag-type="childProduct.tags.tagType" :is-last-product="idx===product.products.length-1" @on-change-checked="onChangeChecked($event,childProduct)" @update-price="updatePrice($event, product, idx)" @on-delete="onDelete"> </cart-item> </template>
				<div v-if="noData" class="no_data">장바구니에 담긴 상품이 없습니다.</div>
			</div>
		</div>
		<div class="all_select select_option">
			<label class="label_check" :class="{checked : allChecked}"> <input type="checkbox" name="allCheck" class="ico_check" v-model="allChecked" @change="onClickAllChecked">
			</label> <span class="tit"> 전체선택 (<span class="num_count" v-text="checkedCount"></span>/<span class="num_total" v-text="totalCount"></span>)
			</span>
			<button type="button" class="btn_delete" @click="onCheckItem('selection')">선택 삭제</button>
			<button type="button" class="btn_delete" @click="onCheckItem('soldout')">품절 상품 삭제</button>
		</div>
		<cart-result :original-sum-amount="originalSumAmount" :goods-dc-amount="goodsDcAmount" :class-dc-amount="classDcAmount" :shipping-charges="shippingCharges" :delivery-free-amout="deliveryFreeAmout" :delivery-free-limit="deliveryFreeLimit" :amount-money="amountMoney" :footer-message="footerMessage" :no-data="noData" :total-count="totalCount" :point-result="pointResult" :login-check="loginCheck" :member-dc="memberDc" :checked-count="checkedCount" :kurly-pass="kurlyPass" :user-grade="userGrade" :type="type" @on-check-item="onCheckItem('submit')"> </cart-result>
		<p class="info_notice" v-html="headerMessage"></p>
	</form>
</div>

<jsp:include page="../info/footer.jsp"></jsp:include>