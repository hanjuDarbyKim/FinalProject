<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  
  <script>
  
  
  function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	    var pop = window.open("/final/jusoPopup.action","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
  }						/*  src/main/webapp/WEB-INF/view/page.jsp
  							/views/popup/jusoPopup.js*/
  /** API 서비스 제공항목 확대 (2017.02) **/
  function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
  						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
  	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
  	document.form.roadAddrPart1.value = roadAddrPart1;
  	document.form.roadAddrPart2.value = roadAddrPart2;
  	document.form.addrDetail.value = addrDetail;
  	document.form.zipNo.value = zipNo;
  }
  
  </script>
		<!-- MAIN -->
		<div class="shop-main register">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="index.html" title="Home"><i class="fa fa-home"></i></a></li>
					<li class="active">Register</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<!-- REGISTER BOX -->
				<div class="account-box register-box">
					<h1>Create an account</h1>
					
					
					
					<form method="POST" action="/final/registerok.action" class="form-horizontal" role="form">
						<div class="form-group">
							<label for="username" class="control-label sr-only">Username</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>
									<input type="text" class="form-control" id="username" placeholder="Username">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="control-label sr-only">Email</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
									<input type="email" class="form-control" id="email" placeholder="Email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="control-label sr-only">Password</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password" placeholder="Password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password2" class="control-label sr-only">Repeat Password</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password2" placeholder="Repeat Password">
								</div>
							</div>
						</div>
						
						
					<!-- 우편번호검색 -->	
				<div class="form-group">
				<table>
				
				<colgroup>
				<col style="width:20%"><col>
			</colgroup>
			<tbody>
				<tr>
					<th>우편번호</th>
					<td>
					    <input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
						<input type="button"  value="주소검색" onclick="goPopup();">
					</td>
				</tr>
				<tr>
					<th><label>도로명주소</label></th>
					<td><input type="text" id="roadAddrPart1" style="width:85%"></td>
				</tr>
				<tr>
					<th>상세주소</th>
						<td>
							<input type="text" id="addrDetail" style="width:40%" value="">
							<input type="text" id="roadAddrPart2"  style="width:40%" value="">
						</td>
				</tr>
			</tbody>
			</table>
					</div>	
						
						
						<div class="form-group">
							<div class="col-sm-12">
								<label class="fancy-checkbox">
									<input type="checkbox">
									<span>Subscribe me to the newsletter</span>
								</label>
							</div>
							<div class="col-sm-12">
								<label class="fancy-checkbox">
									<input type="checkbox">
									<span>I accept the <a href="#">Terms &amp; Agreement</a></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-check-circle"></i> Create Account</button>
							</div>
						</div>
					</form>
					
					
					<p><em>Already have an account? 이미 만들었어요?</em> <a href="login.action"><strong>Login</strong></a></p>
				</div>
				<!-- END REGISTER BOX -->
			</div>
		</div>
		<!-- END MAIN -->