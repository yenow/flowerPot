<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../info/header.jsp"></jsp:include>

<div id="main">
	<div id="content">

		<div class="page_aticle">
			<div class="lnb_menu" id="lnbMenu" v-cloak>
				<div id="bnrCategory" class="bnr_category">
					<div class="thumb">
						<img src="" alt="카테고리배너">
					</div>
				</div>
				<div class="inner_lnb">
					<div class="ico_cate">
						<span class="ico"><img src="https://res.kurly.com/pc/img/1808/bg_blink_120_91.png" id="goodsListIconView" alt="카테고리 아이콘"></span> <span class="tit" v-html="categoryName"></span>
					</div>
					<ul class="list">
						<li>aaaa</li>
						<li>aaaa</li>
						<li>aaaa</li>
						<li>aaaa</li>
					</ul>
				</div>
			</div>
			<div id="goodsList" class="page_section section_goodslist">
				<div class="list_ability">
					<div class="sort_menu">
						<!-- <view-sort :page-type="pageType" :sort-data="sortData" :sort-delivery="sortDelivery" :delivery-check="deliveryCheck" :sort-user-check="sortUserCheck" :type="type" @sort-regist="sortRegist" @sort-layer-view="sortLayerView"></view-sort>  -->
					</div>
				</div>
				<div class="list_goods">
					<div class="inner_listgoods">
						<ul class="list">
							<!-- 하나의 리스트 -->
							<li>
								<div class="item">
									<div class="thumb">
										<a class="img" style="background-image: url(https://img-cf.kurly.com/shop/data/goods/1470792312213l0.jpg);">
											<img alt="aaa" src="https://img-cf.kurly.com/shop/data/goods/1470792312213l0.jpg" width="308" height="396">
										</a>
										<div class="group_btn">
											<button type="button" class="btn btn_cart">
												<span class="screen_out">1385</span>
											</button>
										</div>
									</div>
									<a class="info"> 
										<span class="name">무농약...</span> 
										<span class="cost"> <span class="price">1800원</span></span> 
										<span class="desc">내 마음대로 골라담고 세척되어 바로 먹을 수 있는 신선한 샐러드</span>
									</a>
									<span class="tag"></span>
								</div>
							</li>
							<!-- 하나의 리스트 -->
							<li>
								<div class="item">
									<div class="thumb">
										<a class="img" style="background-image: url(https://img-cf.kurly.com/shop/data/goods/1470792312213l0.jpg);">
											<img alt="aaa" src="https://img-cf.kurly.com/shop/data/goods/1470792312213l0.jpg" width="308" height="396">
										</a>
										<div class="group_btn">
											<button type="button" class="btn btn_cart">
												<span class="screen_out">1385</span>
											</button>
										</div>
									</div>
									<a class="info"> 
										<span class="name">무농약...</span> 
										<span class="cost"> <span class="price">1800원</span></span> 
										<span class="desc">내 마음대로 골라담고 세척되어 바로 먹을 수 있는 신선한 샐러드</span>
									</a>
									<span class="tag"></span>
								</div>
							</li>
							<!-- 하나의 리스트 -->
							<li>
								<div class="item">
									<div class="thumb">
										<a class="img" style="background-image: url('${pageContext.request.contextPath }/resources/img/cometic/abc.jpg');">
											<img alt="aaa" src="${pageContext.request.contextPath }/resources/img/cometic/abc.jpg" width="308" height="396">
										</a>
										<div class="group_btn">
											<button type="button" class="btn btn_cart">
												<span class="screen_out">1385</span>
											</button>
										</div>
									</div>
									<a class="info"> 
										<span class="name">무농약...</span> 
										<span class="cost"> <span class="price">1800원</span></span> 
										<span class="desc">내 마음대로 골라담고 세척되어 바로 먹을 수 있는 신선한 샐러드</span>
									</a>
									<span class="tag"></span>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="layout-pagination" v-if="!noData">
					<div class="pagediv">
						<a href="#main" @click="onMoveList(1)" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a> <a href="#main" @click="onMoveList(pageCount-1)" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
						<list-goods-paging v-for="(paging, idx) in pagingCountArray" :idx="idx+1" :key="idx" :page-count="pageCount" :total-page-count="totalPageCount" @on-move-list="onMoveList"> </list-goods-paging>
						<a href="#main" @click="onMoveList(pageCount+1)" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a> <a href="#main" @click="onMoveList(totalPaging)" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="../info/footer.jsp"></jsp:include>
