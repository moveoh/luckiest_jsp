<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="menu.*"%>

<% 
ArrayList<MenuDTO> dtoList = (ArrayList<MenuDTO>)request.getAttribute("menuDTO"); 
String restaurant_name = (String)request.getAttribute("restaurant_name");
%>

		<% if(dtoList != null){%>
		<% int i=0;
         int menu_id = dtoList.get(i).getMenu_id();
         int restaurant_id = dtoList.get(i).getRestaurant_id();
         String menu_name = dtoList.get(i).getMenu_name();
         int menu_price = dtoList.get(i).getMenu_price();
         double menu_ave_star = dtoList.get(i).getMenu_ave_star();
         String menu_summery = dtoList.get(i).getMenu_summary();
       %>

<%@include file="header.jsp"%>


       
        <!-- pages-title-start -->
		<section class="contact-img-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="con-text">
                            <h2 class="page-title"><%= restaurant_name %></h2>
                            <p><a href="RestaurantList?restaurant_id=1">Home</a> | Menu List</p>
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
                                                    <% for(i=0;i < dtoList.size();i++){%>
                                                    <div class="col-md-4 col-lg-4 col-sm-6">
                                                        <div class="single-product" style="margin-bottom:50px;">
                                                            <div class="product-img">
                                                                <div class="pro-type">
                                                                    <span>new</span>
                                                                </div>
                                                                <a href="MenuDetail?menu_id=<%= dtoList.get(i).getMenu_id()%>">
                                                                    <img src="img/products/<%=dtoList.get(i).getMenu_id()%>.jpg" alt="Product Title" />
                                                                    <img class="secondary-image" alt="Product Title" src="img/products/<%=dtoList.get(i).getMenu_id()%>.jpg">
                                                                </a>
                                                            </div>
                                                            <div class="product-dsc">
                                                                <h3><a href="MenuDetail?menu_id=<%= dtoList.get(i).getMenu_id()%>"><%=dtoList.get(i).getMenu_name()%></a></h3>
                                                                <div class="star-price">
                                                                    <span class="price-left"><%=dtoList.get(i).getMenu_price()%>원</span>
                                                                    <span class="star-right">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star-half-o"></i>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%} %>
                                                    <!-- single-product end -->		
                                                            
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-product end -->
                                    </div>
                                    <div class="shop-all-tab-nor" style="margin-top:10px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</section>
		<!-- shop-style  content section end -->
	<%}%>
      <%@include file="footer.jsp"%>
