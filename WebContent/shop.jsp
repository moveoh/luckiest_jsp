<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="restaurant.*"%>

<%@include file="header.jsp"%>

<% ArrayList<RestaurantDTO> res_dtoList = (ArrayList<RestaurantDTO>)request.getAttribute("RestaurantDTO"); %>
   <%  if(res_dtoList != null){%>
   <%    
        int i=0;
        int restaurant_id = res_dtoList.get(i).getRestaurant_id();
         String restaurant_name = res_dtoList.get(i).getRestaurant_name();
         String restaurant_adress = res_dtoList.get(i).getRestaurant_adress();
         int restaurant_category1 = res_dtoList.get(i).getRestaurant_category1();
         int restaurant_category2= res_dtoList.get(i).getRestaurant_category2();
   %>
   
      
	<!-- pages-title-start -->
	<section class="contact-img-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="con-text">
					<h2 class="page-title">Shop</h2>
					<p>
						<a href="RestaurantList?restaurant_id=1">Home</a> | shop
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- pages-title-end -->
	<!-- shop-style content section start -->
	<section class="pages products-page section-padding-top">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-lg-3 col-sm-12">
				<div class="all-shop-sidebar">
					<div class="top-shop-sidebar">
						<h3 class="wg-title">카테고리</h3>
					</div>
					
					
					<div class="shop-one">
						<h3 class="wg-title2"><a href="RestaurantCategory1?restaurant_category1=1">음식점</a></h3>
						<ul class="product-categories">
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=1">한식</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=2">중식</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=3">일식</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=4">양식</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=5">기타</a></li>
						</ul>
					</div>
					<div class="shop-one">
						<h3 class="wg-title2"><a href="RestaurantCategory1?restaurant_category1=2">카페</a></h3>
						<ul class="product-categories">
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=6">룸</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=7">개인</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=8">프렌차이즈</a></li>
						</ul>
					</div>
					<div class="shop-one">
						<h3 class="wg-title2"><a href="RestaurantCategory1?restaurant_category1=3">술집</a></h3>
						<ul class="product-categories">
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=9">일반</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=10">비어</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=11">선술집</a></li>
							<li class="cat-item"><a href="RestaurantCategory2?restaurant_category2=12">바</a></li>
						</ul>
					</div>
					
					
				</div>
			</div>
			<div class="col-md-8 col-lg-9 col-sm-12">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="features-tab">
							<!-- Nav tabs -->
							<div class="shop-all-tab">
							</div>
							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="row">
										<div class="shop-tab">
											<!-- single-product start -->
											<% for(i=0; i< res_dtoList.size(); i++){%>
											<div class="col-md-4 col-lg-4 col-sm-6">
												<div class="single-product">
													<div class="product-img">
														<div class="pro-type">
															<span>new</span>
														</div>
														<a href="MenuList?restaurant_id=<%= res_dtoList.get(i).getRestaurant_id() %>"> 
														<img src="img/restaurants/<%=res_dtoList.get(i).getRestaurant_id() %>.jpg" alt="Product Title" /> 
															<img class="secondary-image" alt="Product Title" src="img/restaurants/<%=res_dtoList.get(i).getRestaurant_id()%>.jpg">
														</a>
													</div>
													<div class="product-dsc">
														<h3>
															<a href="MenuList?restaurant_id=<%= res_dtoList.get(i).getRestaurant_id() %>"><%= res_dtoList.get(i).getRestaurant_name() %></a>
														</h3>
														<div class="star-price">
															<span class="star-right"> <i class="fa fa-star"></i>
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star-half-o"></i>
															</span>
														</div>
													</div>
												</div>
											</div>
											<%} %>
											
						
										</div>
									</div>
								</div>
							</div>
							<div class="shop-all-tab-cr shop-bottom" style="margin-top:10px;">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- shop-style  content section end -->
	
	<%@include file="footer.jsp"%>
	<%}%>