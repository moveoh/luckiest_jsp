<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.ArrayList, blog.*" %>
    
    <%@include file="header.jsp"%>
    
    <!-- pages-title-start -->
      <section class="contact-img-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="con-text">
                            <h2 class="page-title">Blog</h2>
                            <p>우리들의 이야기, 먹방투어...!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- pages-title-end -->
      
         <!-- Blog content section start -->
      <section class="blog-area">
            <div class="container">
                <div class="row">
                   <div class="col-lg-8 col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                   <% ArrayList<BlogDTO> list = (ArrayList<BlogDTO>) request.getAttribute("BlogList"); %>
                         <% for(int i=0; i< list.size(); i++){ %>
                        <div class="tb-post-item">
                            <a href="BlogDetail?blog_id=<%=list.get(i).getBlog_id() %>">
                                <div class="tb-thumb">
                                   <!-- 블로그 이미지 가로 1140 높이 330 -->
                                    <img src="img/banner/12.jpg" alt="" />
                                    <span class="tb-publish font-noraure-3"><%= list.get(i).getBlog_date() %></span>
                                </div>
                            </a>
                            <div class="tb-content7">
                                <a href="BlogDetail?blog_id=<%=list.get(i).getBlog_id() %>"><h4 class="tb-titlel"><%= list.get(i).getBlog_title() %></h4></a>
                                <div class="blog-info">
                                    <span class="author-name">
                                        <i class="fa fa-user"></i>
                                        By
                                        <a>한창훈</a>
                                        <%-- <a href="#"><%= list.get(i).getId() %></a> --%>
                                    </span>
                                    <span class="categories">
                                        <i class="fa fa-tag"></i>
                                        <a href="#">엉터리 생고기</a>
                                    </span>
                                    <span class="comments-number">
                                        <i class="fa fa-eye"></i><%= list.get(i).getBlog_count() %>
                                    </span>
                                </div>
                                <div class="tb-excerpt"><%= list.get(i).getBlog_summary() %></div>
                                <a class="blog7" href="BlogDetail?blog_id=<%=list.get(i).getBlog_id() %>">더보기</a>
                            </div>
                        </div>
                        <% } %>
                    </div>
                </div>   
            </div>
        </section>
      <!-- Blog content section end -->
    
 <%@include file="footer.jsp"%>