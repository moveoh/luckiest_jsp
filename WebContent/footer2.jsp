<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- footer section start -->
<footer class="re-footer-section" style="margin-top: 50px;">
   <!-- footer-top area start -->
   <div class="footer-top section-padding-top" style="padding-top:30px;">
      <div class="footer-dsc">
         <div class="container">
            <div class="row">
               <div class="col-xs-12 col-sm-12 col-md-12">
                  <div class="single-text res-text">
                     <div class="footer-title">
                        <h4>Contact us</h4>
                        <hr class="dubble-border" />
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-xs-12 col-sm-6 col-md-4">
                  <div class="single-text res-text">
                     <div class="footer-text">
                        <ul>
                           <li>
                              <i class="pe-7s-map-marker"></i>
                              <p>대한민국 부산광역시 남구 대연동</p>
                              <p class="rs">부경대학교</p>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-4">
                  <div class="single-text res-text">
                     <div class="footer-text">
                        <ul>
                           <li>
                              <i class="pe-7s-call"></i>
                              <p>+201 (987) 6641 053</p>
                              <p>+202 (987) 6641 056</p>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-4">
                  <div class="single-text res-text">
                     <div class="footer-text">
                        <ul>
                           <li>
                              <i class="pe-7s-mail-open"></i>
                              <p>LUCKIEST OFFICIAL</p>
                              <p>luckiest.official@gmail.com</p>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <hr class="dubble-border" />
      </div>
   </div>
   <!-- footer-top area end -->
   <!-- footer-bottom area start -->
   <div class="footer-bottom">
      <div class="container">
         <div class="row">
            <div class="col-xs-12 text-center">
               <p>&copy; 2016 LUCKIEST.</p>
            </div>
         </div>
      </div>
   </div>
   <!-- footer-bottom area end -->
</footer>
<!-- footer section end -->

<!-- all js here -->
<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- parallax js -->
<script src="js/parallax.min.js"></script>
<!-- owl.carousel js -->
<script src="js/owl.carousel.min.js"></script>
<!-- Img Zoom js -->
<script src="js/img-zoom/jquery.simpleLens.min.js"></script>
<!-- meanmenu js -->
<script src="js/jquery.meanmenu.js"></script>
<!-- jquery.countdown js -->
<script src="js/jquery.countdown.min.js"></script>
<!-- Nivo slider js
          ============================================ -->
<script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="lib/home.js" type="text/javascript"></script>
<!-- jquery-ui js -->
<script src="js/jquery-ui.min.js"></script>
<!-- sticky js -->
<script src="js/sticky.js"></script>
<!-- plugins js -->
<script src="js/plugins.js"></script>
<!-- main js -->
<script src="js/main.js"></script>

  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
   
     <script>
       $(document).ready(function() {
           $('#summernote').summernote({
              height: 300,                // set editor height
              minHeight: null,             // set minimum height of editor
              maxHeight: null,             // set maximum height of editor
              focus: true  
           });
       });
   
       function sendContent(){
          var blog_contents = $('#summernote').summernote('code');
          document.getElementById("contents").value = blog_contents;
       }
   </script>

</body>
</html>