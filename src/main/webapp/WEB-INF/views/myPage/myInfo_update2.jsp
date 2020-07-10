<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../info/header.jsp"></jsp:include>

<jsp:include page="myPageTop.jsp"></jsp:include>

<div class="page_aticle aticle_type2">
	<div id="snb" class="snb_my">
		<h2 class="tit_snb">마이컬리</h2>
		<div class="inner_snb">
			<ul class="list_menu">
				<li class="on"><a href="${pageContext.request.contextPath }/myPage/orderList">주문 내역</a></li>
				<li><a href="${pageContext.request.contextPath }/myPage/wishList">늘 사는 것</a></li>
				<li><a href="${pageContext.request.contextPath }/myPage/review">상품후기</a></li>
				<li><a href="${pageContext.request.contextPath }/myPage/emoney">적립금</a></li>
				<li><a href="${pageContext.request.contextPath }/myPage/coupon">쿠폰</a></li>
				<li><a href="${pageContext.request.contextPath }/myPage/myInfo_update">개인 정보 수정</a></li>
			</ul>
		</div>
		<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
	</div>
	<div class="page_section section_myinfo">
		<div class="head_aticle">
			<h2 class="tit">개인 정보 수정</h2>
		</div>

		<div class="member_join">
			<div class="">
				<form id=form name=frmMember method=post action="/shop/member/indb.php" onsubmit="return chkForm2(this)">
					<input type=hidden name=mode value="modMember"> <input type="hidden" name="check_mobile" value="" /> <input type="hidden" name="auth_finish_code" value="" /> <input type=hidden name=rncheck value=""> <input type=hidden name=dupeinfo value=""> <input type=hidden name=pakey value=""> <input type=hidden name=foreigner value="1"> <input type=hidden name=passwordSkin value="Y"> <input type=hidden name=m_id value="">

					<div class="field_head head_type1">
						<h3 class="tit">기본정보</h3>
						<p class="sub">*필수입력사항</p>
					</div>
					<div class="boardWrite">
						<table class="tbl_comm">
							<tr>
								<td class="memberCols1">아이디*</td>
								<td class="memberCols2"><input type="text" value="" readonly class="inp_read"></td>
							</tr>
							<tr>
								<td class="memberCols1">현재 비밀번호</td>
								<td class="memberCols2"><input type="password" name="originalPassword" id="originalPassword" onblur="checkCurrentPassword(this);return;" />
									<p class="txt_guide">
										<span class="txt txt_case4 bad">현재 비밀번호를 확인해주세요</span>
									</p></td>
							</tr>
							<tr class="member_pwd">
								<td class="memberCols1">새 비밀번호</td>
								<td class="memberCols2"><input type="password" name="newPassword" id="newPassword" label="새 비밀번호" option=regPass maxlength="16" class="reg_pw"> <input type="hidden" name="newPasswordCheck" value="0">
									<p class="txt_guide">
										<span class="txt txt_case4">현재 비밀번호와 다르게 입력</span> <span class="txt txt_case1">10자 이상 입력</span> <span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
									</p></td>
							</tr>
							<tr class="member_pwd">
								<td class="memberCols1">새 비밀번호 확인</td>
								<td class="memberCols2"><input type="password" name="confirmPassword" id="confirmPassword" label="새 비밀번호" option=regPass maxlength="16" class="confirm_pw">
									<p class="txt_guide">
										<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
									</p></td>
							</tr>
							<tr>
								<td class="memberCols1">이름*</td>
								<td class="memberCols2"><input type="text" name=name value="" required fld_esssential label="이름" placeholder="고객님의 이름을 입력해주세요"></td>
							</tr>
							<tr>
								<td class="memberCols1">이메일*</td>
								<td class="memberCols2"><input type="text" name=email label="이메일" placeholder="예: marketkurly@kurly.com"> <a href="javascript:void(0)" onClick="chkEmail()"><span class="bhs_button">이메일 중복확인</span></a></td>
							</tr>
							<tr class="mobile">
								<td class="memberCols1">휴대폰*</td>
								<td class="memberCols2">
									<div class="phone_num">
										<input type="text" value="" pattern="[0-9]*" name="mobileInp" placeholder="숫자만 입력해주세요" class="inp"> <input type="hidden" name="mobile[]" id="mobile0" value="" required option=regNum label="휴대폰"> <input type="hidden" name="mobile[]" id="mobile1" value="" required option=regNum label="휴대폰"> <input type="hidden" name="mobile[]" id="mobile2" value="" required option=regNum label="휴대폰"> <a href="javascript:void(0)" id="btn_cert"><span class="bhs_button disabled">인증번호받기</span></a>
									</div>
									<div class="cert_confirm_row">
										<input type="text" name="auth_code" id="auth_code" value='' size='' maxlength='6' label="인증번호 확인" disabled class="inp_confirm"> <a href="javascript:void(0)" id="btn_cert_confirm" return false><span class="bhs_button disabled">인증번호 확인</span></a>
										<p id="countdown" class="count_down"></p>
									</div>
									<p class="txt_guide">
										<span class="txt txt_case1"></span>
									</p>
								</td>
							</tr>
						</table>
					</div>
					<div class="field_head head_type2">
						<h3 class="tit">추가정보</h3>
					</div>
					<div class="boardWrite">
						<table class="tbl_comm">
							<tr class="select_sex">
								<td class="memberCols1">성별</td>
								<td class="memberCols2">
									<div class="group_radio">
										<label class="label_radio"> <input type=radio name=sex_option label="성별" value="m"> <span class="text_position">남자</span>
										</label> <label class="label_radio checked"> <input type=radio name=sex_option label="성별" value="w"> <span class="text_position">여자</span>
										</label> <label class="label_radio"> <input type=radio name=sex_option label="성별" value="n"> <span class="text_position">선택안함</span>
										</label> <input type="hidden" type=radio name=sex label="성별" value="">
									</div>
								</td>
							</tr>
							<tr class="birth field_birth">
								<td class="memberCols1">생년월일</td>
								<td class="memberCols2">
									<div class="birth_day">
										<input type="text" name=birth_year id="birth_year" pattern="[0-9]*" value="" label="생년월일" size=4 maxlength=4 placeholder="YYYY"> <span class="bar"><span>/</span></span> <input type="text" name=birth[] id="birth_month" pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2 placeholder="MM"> <span class="bar"><span>/</span></span> <input type="text" name=birth[] id="birth_day" pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2 placeholder="DD">
									</div>
									<p class="txt_guide">
										<span class="txt bad"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td class="memberCols1">선택약관 동의</td>
								<td class="memberCols2 reg_agree">
									<div class="bg_dim"></div>
									<div class="check_view">
										<input type="hidden" id="consentHidden" name="consent[1]" value="y"> <label class="select_check check_agree checked"> <input type="checkbox" name="hiddenCheck" class="styled-checkbox-black" value="y" checked="checked"> <span class="txt_checkbox no_pd">개인정보처리방침 <span class="sub">(선택)</span></span>
										</label> <a href="#none" class="link btn_link btn_link3 btn_choice">약관보기 </a>
									</div>

									<div class="layer layer_choice">
										<div class="inner_layer">
											<h4 class="tit_layer">개인정보 수집·이용 동의 (선택)</h4>
											<div class="box_tbl">
												<table cellpadding="0" cellspacing="0" width="100%">
													<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
													<colgroup>
														<col width="40%">
														<col width="25%">
														<col width="35%">
													</colgroup>
													<thead>
														<tr>
															<th scope="row">수집 목적</th>
															<th scope="row">수집 항목</th>
															<th scope="row">보유 기간</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>맞춤형 회원 서비스 제공</td>
															<td>성별, 생년월일</td>
															<td>회원 탈퇴 즉시 파기</td>
														</tr>

													</tbody>
												</table>
											</div>
											<p class="txt_service">※ 동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
											<button type="button" class="btn_ok">확인</button>
											<button type="button" class="btn_close">
												<span class="screen_out">레이어 닫기</span>
											</button>
										</div>
									</div>

								</td>
							</tr>
						</table>
					</div>
					<div class="field_head head_type2">
						<h3 class="tit">이용약관동의*</h3>
						<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
					</div>
					<div class="reg_agree">
						<div class="check_view">
							<label class="select_check check_agree checked"> <input type="checkbox" name="marketing" class="styled-checkbox-black" value="y" checked="checked"> <span class="txt_checkbox no_pd">무료배송, 할인쿠폰 등 혜택/정보 수신 <span class="sub">(선택)</span></span>
							</label>
							<div class="check_event email_sms">
								<label class="select_check check_agree checked"> <input type="checkbox" name="sms" class="styled-checkbox-black" value="y"> <span class="txt_checkbox no_pd">SMS</span>
								</label> <label class="select_check check_agree checked"> <input type="checkbox" name="mailling" class="styled-checkbox-black" value="y" checked="checked"> <span class="txt_checkbox no_pd">이메일</span>
								</label>
							</div>
						</div>
					</div>
					<div id=avoidDbl class="after" style="text-align: center; margin-top: 20px;">
						<span class=noline><a href="/shop/member/hack.php?&"><span class="bhs_button active" style="float: none;">탈퇴하기</span></a></span> <span class=noline><input type="submit" class="bhs_button" value="회원정보수정" style="float: none; max-width: none;"></span>
					</div>
				</form>
			</div>
		</div>
		<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display: none;"></iframe>
		<iframe id="ifrmHpauth" name="ifrmHpauth" style="display: none;"></iframe>

	</div>
</div>

<jsp:include page="../info/footer.jsp"></jsp:include>