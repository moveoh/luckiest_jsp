<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="menu.*"%>
<%@ page import="review.*"%>


<%@include file="header.jsp"%>

<%
	MenuDTO dto = new MenuDTO();
	dto = (MenuDTO) request.getAttribute("MenuDTO");
	int menu_id = dto.getMenu_id();
	ArrayList<ReviewDTO> list = (ArrayList<ReviewDTO>)request.getAttribute("ReviewList");
	String restaurant_name = (String) request.getAttribute("restaurant_name");
%>

<!-- pages-title-start -->
<section class="contact-img-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="con-text">
					<h2 class="page-title"><%= dto.getMenu_name() %></h2>
					<p>
						<a href="RestaurantList?restaurant_id=1">Home</a> | <%= restaurant_name %>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- pages-title-end -->
<!-- single peoduct content section start -->
<section class="single-product-area sit">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-6 col-sm-6 none-si-pro">
						<div class="pro-img-tab-content tab-content">
							<div class="tab-pane active" id="image-1">
								<div class="simpleLens-big-image-container">
									<a class="simpleLens-lens-image" data-lightbox="roadtrip"
										data-lens-image="img/products/<%=dto.getMenu_id() %>.jpg"
										href="img/products/<%=dto.getMenu_id() %>.jpg"> 
										<img src="img/products/<%=dto.getMenu_id() %>.jpg" alt="" class="simpleLens-big-image">
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6" style="margin-top:15px;">
						<div class="cras">
							<div class="product-name">
								<h2><%=dto.getMenu_name()%></h2>
							</div>
							<div class="pro-rating cendo-pro">
								<div class="pro_one">


									<%double num = 0;
									for(int j=1; j<dto.getMenu_ave_star(); j++){%>
									<span class="fa fa-stack"> <i
										class="fa fa-star fa-stack-2x"></i> <i
										class="fa fa-star-o fa-stack-2x"></i></span>
									<% num++;}
									double sosu = (double)dto.getMenu_ave_star() - num;
									System.out.println((double)dto.getMenu_ave_star());
									System.out.println(num);
									System.out.println(sosu);
									if(sosu!=0){
										if(sosu<=0.3)
										{%>
									<span class="fa fa-stack"> <i
										class="fa fa-star-o fa-stack-2x"></i>
									</span>
									<%}
										else if(sosu <= 0.6)
										{%>
									<span class="fa fa-stack"> <i class="fa-fa-star-half-o"></i>
										<i class="fa fa-star-half-o fa-stack-2x"></i>
									</span>
									<%}else
									   {%>
									<span class="fa fa-stack"> <i
										class="fa fa-star fa-stack-2x"></i> <i
										class="fa fa-star-o fa-stack-2x"></i></span>
									<%}}%>

									<% for(int j = 1; j<=5-dto.getMenu_ave_star(); j++){%>
									<span class="fa fa-stack"> <i
										class="fa fa-star-o fa-stack-2x"></i>
									</span>
									<%} %>
									<h2><%=dto.getMenu_ave_star()%></h2>
								</div>
								<p class="rating-links">
									<a href="#"><%= list.size() %> Reviews</a>
								</p>
							</div>
							<div class="short-description">
								<p><%= dto.getMenu_summary() %></p>
							</div>
							<div class="pre-box">
								<span class="special-price"><%=dto.getMenu_price()%>원</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="text">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Write Review
								</a>
								</li>
							</ul>
							<form method="post" action="ReviewWrite" id="sky-form2" class="sky-form">
										<!--  <input type="text" size="50"
													name="comment_content">-->
										<div class="buttons si-button">
											<label>
											<span style="margin: 10px;"><%=session.getAttribute("member_nic")%>
											</span>|<span style="margin: 10px;">Bad</span> 
											<input type="radio" value="1" name="star_score"> 
											<input type="radio" value="2" name="star_score"> 
											<input type="radio" value="3" name="star_score"> 
											<input type="radio" value="4" name="star_score"> 
											<input type="radio" value="5" name="star_score"> Good</label>
											<div class="pull-right" style="margin-bottom:10px;">
												<input type="hidden" value="<%=menu_id%>" name="menu_id"><br />
												<input type="submit" value="댓글 쓰기">
											</div>
										<textarea style="width: 100%" id="input-review" class="form-control" rows="3"
											name="comment_content" ></textarea>

										</div>
									</form>
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Reviews (<%=list.size() %>)
								</a>
								</li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content tab-con2">
								<div role="tabpanel" class="tab-pane active" id="home">


									<% if(list != null){%>
									<% int i=0;
									int review_id = list.get(i).getReview_id();
									String member_nic = list.get(i).getMember_nic();
							        String comment_date = list.get(i).getComment_date();
							        String comment_content = list.get(i).getComment_content();
							        double star_score = list.get(i).getStar_score();
							        
							       %>
									<!--  반본문 시작 -->
									<% for(i=0; i< list.size(); i++){%>
									<div id="review">
										<table class="table table-striped table-bordered">
											<tr>
												<td style="width: 50%;"><strong><%=list.get(i).getMember_nic()%></strong></td>
												<td class="text-right"><%=list.get(i).getComment_date()%></td>
											</tr>
											<tr>
												<td colspan="2">
													<p class="text an-text"><%=list.get(i).getComment_content()%></p>

													<% for(int j = 0; j<list.get(i).getStar_score(); j++){%> <span
													class="fa fa-stack"> <i
														class="fa fa-star fa-stack-2x"></i> <i
														class="fa fa-star-o fa-stack-2x"></i></span> <% } %> <% for(int j = 0; j<5 - list.get(i).getStar_score(); j++){%>
													<span class="fa fa-stack"> <i
														class="fa fa-star-o fa-stack-2x"></i></span> <%}%>

												</td>
											</tr>
										</table>
										<div class="text-right"></div>
									</div>

									<%} }%>
									<!--  반본문 끝 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</section>


<%@include file="footer.jsp"%>
