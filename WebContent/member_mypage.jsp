<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>

<% //cookie 받아오기
   Cookie[] cookies = request.getCookies();

   for(int i=1; i<cookies.length; i++){   //2번째 쿠키부터 본다 *1번째는 JSESSIONID쿠키
      Cookie reme = cookies[i];
      
      String cName = reme.getName();
      String cValue = reme.getValue();
   }
%>

<%  //session 받아오기
       int sID = (Integer)session.getAttribute("id");
      String is_getsalty = (String)session.getAttribute("member_salty"); 
      String is_getspicy = (String)session.getAttribute("member_spicy");
      String is_getsweet = (String)session.getAttribute("member_sweet");
      String is_getmail = (String)session.getAttribute("member_email"); 
      String is_getnic = (String)session.getAttribute("member_nic"); 
    %>




<!-- pages-title-start -->
<section class="contact-img-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="con-text">
					<h2 class="page-title">내 정보</h2>
					<p>
						<a href="index.jsp">Home</a> | 내 정보
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- pages-title-end -->
<!-- my account content section start -->
<section class="collapse_area coll2">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="check">
					<h2>내 정보 보기</h2>
				</div>
				<div class="faq-accordion">
					<div class="panel-group pas7" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a class="collapsed method" role="button"
										data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne" aria-expanded="false"
										aria-controls="collapseOne"> 내 계정 정보 - 정보수정 <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne"
								aria-expanded="false">
								<div class="row">
									<div class="easy2">

										<!-- 수정하기 버튼을 누르면 post형식으로 MemberDataModify 서블릿으로  -->
										<form class="form-horizontal" method="post"
											action="MemberDataModify">
											<fieldset>

												<div class="form-group">
													<label class="col-sm-3 control-label">회원 이메일 </label>
													<div class="col-sm-9">
														<p><%=is_getmail %></p>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">회원 닉네임</label>
													<div class="col-sm-9">
														<input class="form-control" type="text" name="mod_NIC"
															value=<%=is_getnic %>>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">매운맛</label>
													<div class="col-sm-9">
														<input class="form-control" type="range" name="mod_SPICY"
															max="5" value=<%=is_getspicy %>>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">짠맛</label>
													<div class="col-sm-9">
														<input class="form-control" type="range" name="mod_SALTY"
															max="5" value=<%=is_getsalty %>>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">단맛</label>
													<div class="col-sm-9">
														<input class="form-control" type="range" name="mod_SWEET"
															max="5" value=<%=is_getspicy %>>
													</div>
												</div>
											</fieldset>
											<div class="buttons clearfix">

												<!-- 비밀번호 확인 popup창 띄우는 기능 -->
												<script type="text/javascript">
                              function ckpasspop(){
                                 //var frm = document.register_member;
                                 //var email = frm.member_email.value;
                            	  window.open("member_ckpassword.jsp","new","width=328, height=428,resizable=no,scrollbars=no,status=no,location=no,directories=no;");
                              }
                              </script>
												<input class="btn btn-priary ce5" type="button"
													value="비밀번호 변경" onClick='ckpasspop()'>
												<div class="pull-right">
													<input class="btn btn-primary ce5" type="submit"
														value="계정 정보 수정">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>


						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">탈퇴하기 <i
										class="fa fa-caret-down"></i></a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingTwo"
								aria-expanded="false" style="height: 0px;">
								<div class="row">
									<div class="easy2">
										<h2>먹정너를 정말 탈퇴하시겠습니까?</h2>
										<form method="post" class="form-horizontal"
											action="MemberExit">
											<fieldset>
												<legend>본인 확인을 위해 비밀번호를 한번 더 입력해 주세요.</legend>
												<div class="form-group required">
													<label class="col-sm-2 control-label">비밀번호</label>
													<div class="col-sm-10">
														<input class="form-control" type="password"
															placeholder="비밀번호" name="member_pw"> <input
															type="hidden" name="member_email"
															value="<%= is_getmail %>">
													</div>
												</div>
											</fieldset>
											<div class="buttons clearfix">
												<div class="pull-right">
													<input class="btn btn-primary ce5" type="submit"
														value="탈퇴하기">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<!-- my account  content section end -->
<!-- quick view start -->


<%@include file="footer.jsp"%>