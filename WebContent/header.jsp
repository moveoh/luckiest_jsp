<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>먹정너</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <!-- favicon
          ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
        <!-- google fonts -->
        <link href='https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'/>
        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- animate css -->
        <link rel="stylesheet" href="css/animate.css"/>
        <!-- pe-icon-7-stroke -->
        <link rel="stylesheet" href="css/pe-icon-7-stroke.min.css"/>
        <!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css"/>
        <!-- Image Zoom CSS
          ============================================ -->
        <link rel="stylesheet" href="css/img-zoom/jquery.simpleLens.css"/>
        <!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css"/>
        <!-- nivo slider CSS
          ============================================ -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css"/>
        <link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen"/>
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
            <!-- font-awesome css -->
            <link rel="stylesheet" href="css/font-awesome.min.css"/>
            <!-- style css -->
            <link rel="stylesheet" href="style.css"/>
            <!-- responsive css -->
            <link rel="stylesheet" href="css/responsive.css"/>
            <!-- modernizr css -->
            <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        
        <!-- 팝업 라이브러리     -->
        <script src="dist/sweetalert.min.js"></script> 
		<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">
        </head>
        <body>
            <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

            <!-- header section start -->
            <header>
                <div class="header-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-4">
                                <div class="left-header clearfix">
                                    <ul>
                                        <% String email = (String)session.getAttribute("member_nic"); %>
                                        <li class="hd-none">
                                           <% if(email != null){ %>
                                           <p><%=email %>님, 환영합니다.</p>
                                            <% } else { %>
                                            <p>We Are LUCKIEST</p>
                                            <% } %>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-8">
                                <div class="right-header">
                                    <ul>
                                    <% if(email != null){ %>
                                        <li><a href="member_mypage.jsp"><i class="fa fa-user"></i>내 정보 보기</a></li>
                                        <li><a href="member_logout.jsp"><i class="fa fa-unlock"></i>로그아웃</a></li>
                                      <% }else{ %>
                                        <li><a href="member_login.jsp"><i class="fa fa-lock"></i>로그인</a></li>
                                        <li><a href="member_register.jsp"><i class="fa fa-pencil-square-o"></i>회원가입</a></li>
                                        <% } %>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-bottom header-bottom-one" id="sticky-menu">
                    <div class="container relative">
                        <div class="row">
                            <div class="col-sm-2 col-md-2 col-xs-4">
                                <div class="logo">
                                    <%-- 로고이미지 --%>
                                    <a href="index.jsp"><img src="img/logo.png" alt=""/></a>
                                </div>
                            </div>
                            <div class="col-sm-10 col-md-10 col-xs-8 static">
                                <div class="all-manu-area">
                                    <div class="mainmenu clearfix hidden-sm hidden-xs">
                                        <nav>
                                            <ul>
                                                <li>
                                                    <a href="index.jsp">Home</a>
                                                </li>
                                                <li>
													<a href="RestaurantList?restaurant_id=1">Shop</a>
                                                    <div class="magamenu ">
                                                        <ul class="again">
                                                            <li class="single-menu colmd4">
                                                                <a href="RestaurantCategory1?restaurant_category1=1"><span>음식점</span></a>
                                                                <a href="RestaurantCategory2?restaurant_category2=1">한식</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=2">중식</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=3">일식</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=4">양식</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=5">기타</a>
                                                            </li>
                                                            <li class="single-menu colmd4">
                                                                <a href="RestaurantCategory1?restaurant_category1=2"><span>카페</span></a>
                                                                <a href="RestaurantCategory2?restaurant_category2=6">룸</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=7">개인</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=8">프렌차이즈</a>
                                                            </li>
                                                            <li class="single-menu colmd4">
                                                                <a href="RestaurantCategory1?restaurant_category1=3"><span>술집</span></a>
                                                                <a href="RestaurantCategory2?restaurant_category2=9">일반</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=10">비어</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=11">선술집</a>
                                                                <a href="RestaurantCategory2?restaurant_category2=12">바</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li>
                                                    <a href="blog">Blog</a>
                                                </li>
                                                <li>
                                                    <a href="about.jsp">About</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <%-- 모바일 메뉴 --%>
                                    <!-- mobile menu start -->
                                    <div class="mobile-menu-area hidden-lg hidden-md">
                                        <div class="mobile-menu">
                                            <nav id="dropdown">
                                                <ul>
                                                    <li>
                                                        <a href="index.jsp">Home</a>
                                                    </li>
                                                    <li>
                                                        <a href="shop.jsp">Shop</a>
                                                        <ul>
                                                            <li>
                                                                <a href="#">all products</a>
                                                                <ul>
                                                                    <li>
                                                                        <span>음식점</span>
                                                                        <a href="#">한식</a>
                                                                        <a href="#">중식</a>
                                                                        <a href="#">일식</a>
                                                                        <a href="#">양식</a>
                                                                        <a href="#">기타</a>
                                                                    </li>
                                                                    <li>
                                                                        <span>카페</span>
                                                                        <a href="#">룸</a>
                                                                        <a href="#">개인</a>
                                                                        <a href="#">프렌차이즈</a>
                                                                    </li>
                                                                    <li>
                                                                        <span>술집</span>
                                                                        <a href="#">일반</a>
                                                                        <a href="#">비어</a>
                                                                        <a href="#">선술집</a>
                                                                        <a href="#">바</a>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a href="blog.jsp">Blog</a>
                                                    </li>
                                                    <li>
                                                        <a href="about.jsp">About</a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                    <!-- mobile menu end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- header section end -->