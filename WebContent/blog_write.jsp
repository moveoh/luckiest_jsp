<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>

   <!-- pages-title-start -->
   <section class="contact-img-area">
      <div class="container">
         <div class="row">
            <div class="col-md-12 text-center">
               <div class="con-text">
                  <h2 class="page-title">블로그 글쓰기</h2>
                  <p>자유롭게 재밌게! </p>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- pages-title-end -->
   <section class="blog-area bd-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-md-offset-1 col-sm-8 col-xs-12">

               <form method="post" action="BlogWrite" id="sky-form2" class="sky-form">
                  <label>제목</label>
                  <input type="text" name="blog_title" />
                  <label>짧은 설명</label>
                  <input type="text" name="blog_summary" />
                  <label>내용</label>
                  <div id="summernote"><p>글 쓰기</p></div>
                  <input type="text" name="blog_contents" id="contents" value="" style="visibility: hidden;">
                  <input type="submit" value="글쓰기" onclick="sendContent()" />
               </form>
            </div>
         </div>
      </div>
   </section>

<%@include file="footer2.jsp"%>