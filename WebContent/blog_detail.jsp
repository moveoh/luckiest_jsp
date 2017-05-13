<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import="blog.*" %>
    
    <%@include file="header.jsp"%>
   <% 
   BlogDTO dto = new BlogDTO(); 
   dto = (BlogDTO)request.getAttribute("BlogDTO");
   %>
        <!-- pages-title-start -->
      <section class="contact-img-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="con-text">
                            <h2 class="page-title"><%= dto.getBlog_title() %></h2>
                            <p><%= dto.getBlog_summary() %></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- pages-title-end -->
      <!-- Blog content section start -->
      <section class="blog-area bd-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-md-offset-2 col-sm-8 col-xs-12">
                        <div class="tb-post-item ma-nn">
                            <a href="#">
                                <div class="tb-thumb">
                                    <img src="img/banner/12.jpg" alt="">
                                    <span class="tb-publish font-noraure-3"><%= dto.getBlog_date() %></span>
                                </div>
                            </a>
                            <div class="tb-content7">
                                <div class="blog-info">
                                    <span class="author-name">
                                        <i class="fa fa-user"></i>
                                        By
                                        <a>한창훈</a>
                                        <%-- <a href="#"><%= dto.getId() %></a> --%>
                                    </span>
                                    <span class="categories">
                                        <i class="fa fa-tag"></i><a href="#">엉터리생고기</a>
                                    </span>
                                    <span class="comments-number">
                              <i class="fa fa-eye"></i><%= dto.getBlog_count() %>
                                    </span>
                                </div>
                                <h4 class="tb-titlel"><%= dto.getBlog_title() %></h4>
                                <div class="blog-desc"><%= dto.getBlog_contents() %></div>
                                <div class="next-pre">
                                    <a class="blog1" href="blog">블로그 홈으로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- Blog content section end -->
   
   <%@include file="footer.jsp"%>