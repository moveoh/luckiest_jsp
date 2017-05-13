<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="header.jsp"%>
        <!-- pages-title-start -->
      <section class="contact-img-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="con-text">
                            <h2 class="page-title">로그인</h2>
                            <p><a href="index.jsp">메인</a> | 로그인</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- pages-title-end -->
      <!-- login content section start -->
      <div class="login-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-xs-12">
                        <div class="tb-login-form ">
                            <h5 class="tb-title">로그인</h5>
                            <p>안녕하세요, 환영합니다</p>
                            <div class="tb-social-login">
                                <a class="tb-facebook-login" href="#">
                                    <i class="fa fa-facebook"></i>
                                    페이스북으로 로그인하기
                                </a>
                                <a class="tb-twitter-login res" href="#">
                                    <i class="fa fa-twitter"></i>
                                    트위터로 로그인하기
                                </a>
                            </div>
                            <form action="MemberLogin" method="post">
                                <p class="checkout-coupon top log a-an">
                                    <label class="l-contact">
                                        Email 주소
                                        <em>*</em>
                                    </label>
                                    <input type="email" name="member_email">
                                </p>
                                <p class="checkout-coupon top-down log a-an">
                                    <label class="l-contact">
                                        비밀번호
                                        <em>*</em>
                                    </label>
                                    <input type="password" name="member_pw">
                                </p>
                                <div class="forgot-password1">
                                    <label class="inline2">
                                        <input type="checkbox" name="rememberme7"  value="checked">
                                        로그인 상태 저장 <em>*</em>
                                    </label>
                                    <a class="forgot-password" href="#">비밀번호를 잊으셨나요?</a>
                                </div>
                                <p class="login-submit5" style="float:left;">
                                   <a href="member_register.jsp">회원가입</a>
                                </p>
                                <p class="login-submit5" style="float:right;">
                                    <input class="button-primary" type="submit" value="로그인" >
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- login  content section end -->
        <!-- quick view start -->
      <div class="quick-view modal fade in" id="quick-view">
         <div class="container">
            <div class="row">
               <div id="view-gallery" class="owl-carousel product-slider owl-theme">
                  <div class="col-xs-12">
                     <div class="d-table">
                        <div class="d-tablecell">
                           <div class="modal-dialog">
                              <div class="main-view modal-content">
                                 <div class="modal-footer" data-dismiss="modal">
                                    <span>x</span>
                                 </div>
                                 <div class="row">
                                    <div class="col-xs-12 col-sm-5">
                                       <div class="quick-image">
                                          <div class="single-quick-image tab-content text-center">
                                             <div class="tab-pane  fade in active" id="sin-pro-1">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-2">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-3">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-4">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                          </div>
                                          <div class="quick-thumb">
                                             <div class="nav nav-tabs">
                                                <ul>
                                                   <li><a data-toggle="tab" href="#sin-pro-1"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-2"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-3"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-4"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                </ul>
                                             </div>
                                          </div>
                                       </div>                     
                                    </div>
                                    <div class="col-xs-12 col-sm-7">
                                       <div class="quick-right">
                                          <div class="quick-right-text">
                                             <h3><strong>product name title</strong></h3>
                                             <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <a href="#">06 Review</a>
                                                <a href="#">Add review</a>
                                             </div>
                                             <div class="amount">
                                                <h4>$65.00</h4>
                                             </div>
                                             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrames bled it make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>
                                             <div class="row m-p-b">
                                                <div class="col-sm-12 col-md-6">
                                                   <div class="por-dse responsive-strok clearfix">
                                                      <ul>
                                                         <li><span>Availability</span><strong>:</strong> In stock</li>
                                                         <li><span>Condition</span><strong>:</strong> New product</li>
                                                         <li><span>Category</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                                <div class="col-sm-12 col-md-6">
                                                   <div class="por-dse color">
                                                      <ul>
                                                         <li><span>color</span><strong>:</strong> <a href="#">Red</a> <a href="#">Green</a> <a href="#">Blue</a> <a href="#">Orange</a></li>
                                                         <li><span>size</span><strong>:</strong>  <a href="#">SL</a> <a href="#">SX</a> <a href="#">M</a> <a href="#">XL</a></li>
                                                         <li><span>tag</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="dse-btn">
                                                <div class="row">
                                                   <div class="col-sm-12 col-md-6">
                                                      <div class="por-dse clearfix">
                                                         <ul>
                                                            <li class="share-btn qty clearfix"><span>quantity</span>
                                                               <form action="#" method="POST">
                                                                  <div class="plus-minus">
                                                                     <a class="dec qtybutton">-</a>
                                                                     <input type="text" value="02" name="qtybutton" class="plus-minus-box">
                                                                     <a class="inc qtybutton">+</a>
                                                                  </div>
                                                               </form>
                                                            </li>
                                                            <li class="share-btn clearfix"><span>share</span>
                                                               <a href="#"><i class="fa fa-facebook"></i></a>
                                                               <a href="#"><i class="fa fa-twitter"></i></a>
                                                               <a href="#"><i class="fa fa-google-plus"></i></a>
                                                               <a href="#"><i class="fa fa-linkedin"></i></a>
                                                               <a href="#"><i class="fa fa-instagram"></i></a>
                                                            </li>
                                                         </ul>
                                                      </div>
                                                   </div>
                                                   <div class="col-sm-12 col-md-6">
                                                      <div class="por-dse clearfix responsive-othre">
                                                         <ul class="other-btn">
                                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                                                         </ul>
                                                      </div>
                                                      <div class="por-dse add-to">
                                                         <a href="#">add to cart</a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- single-product item end -->
                  <div class="col-xs-12">
                     <div class="d-table">
                        <div class="d-tablecell">
                           <div class="modal-dialog">
                              <div class="main-view modal-content">
                                 <div class="modal-footer" data-dismiss="modal">
                                    <span>x</span>
                                 </div>
                                 <div class="row">
                                    <div class="col-xs-12 col-sm-5">
                                       <div class="quick-image">
                                          <div class="single-quick-image tab-content text-center">
                                             <div class="tab-pane  fade in active" id="sin-pro-5">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-6">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-7">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                             <div class="tab-pane fade in" id="sin-pro-8">
                                                <img src="img/quick-view/10.jpg" alt="" />
                                             </div>
                                          </div>
                                          <div class="quick-thumb">
                                             <div class="nav nav-tabs">
                                                <ul>
                                                   <li><a data-toggle="tab" href="#sin-pro-5"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-6"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-7"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                   <li><a data-toggle="tab" href="#sin-pro-8"> <img src="img/quick-view/10.jpg" alt="quick view" /> </a></li>
                                                </ul>
                                             </div>
                                          </div>
                                       </div>                     
                                    </div>
                                    <div class="col-xs-12 col-sm-7">
                                       <div class="quick-right">
                                          <div class="quick-right-text">
                                             <h3><strong>product name title</strong></h3>
                                             <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                                <i class="fa fa-star-o"></i>
                                                <a href="#">06 Review</a>
                                                <a href="#">Add review</a>
                                             </div>
                                             <div class="amount">
                                                <h4>$65.00</h4>
                                             </div>
                                             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has beenin the stand ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrames bled it make a type specimen book. It has survived not only five centuries, but also the leap into electronic type setting, remaining essentially unchanged It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p>
                                             <div class="row m-p-b">
                                                <div class="col-sm-6">
                                                   <div class="por-dse">
                                                      <ul>
                                                         <li><span>Availability</span><strong>:</strong> In stock</li>
                                                         <li><span>Condition</span><strong>:</strong> New product</li>
                                                         <li><span>Category</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                                <div class="col-sm-6">
                                                   <div class="por-dse color">
                                                      <ul>
                                                         <li><span>color</span><strong>:</strong> <a href="#">Red</a> <a href="#">Green</a> <a href="#">Blue</a> <a href="#">Orange</a></li>
                                                         <li><span>size</span><strong>:</strong>  <a href="#">SL</a> <a href="#">SX</a> <a href="#">M</a> <a href="#">XL</a></li>
                                                         <li><span>tag</span><strong>:</strong> <a href="#">Men</a> <a href="#">Fashion</a> <a href="#">Shirt</a></li>
                                                      </ul>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="dse-btn">
                                                <div class="row">
                                                   <div class="col-sm-6">
                                                      <div class="por-dse">
                                                         <ul>
                                                            <li class="share-btn qty clearfix"><span>quantity</span>
                                                               <form action="#" method="POST">
                                                                  <div class="plus-minus">
                                                                     <a class="dec qtybutton">-</a>
                                                                     <input type="text" value="02" name="qtybutton" class="plus-minus-box">
                                                                     <a class="inc qtybutton">+</a>
                                                                  </div>
                                                               </form>
                                                            </li>
                                                            <li class="share-btn clearfix"><span>share</span>
                                                               <a href="#"><i class="fa fa-facebook"></i></a>
                                                               <a href="#"><i class="fa fa-twitter"></i></a>
                                                               <a href="#"><i class="fa fa-google-plus"></i></a>
                                                               <a href="#"><i class="fa fa-linkedin"></i></a>
                                                               <a href="#"><i class="fa fa-instagram"></i></a>
                                                            </li>
                                                         </ul>
                                                      </div>
                                                   </div>
                                                   <div class="col-sm-6">
                                                      <div class="por-dse clearfix">
                                                         <ul class="other-btn">
                                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-refresh"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-envelope-o"></i></a></li>
                                                         </ul>
                                                      </div>
                                                      <div class="por-dse add-to">
                                                         <a href="#">add to cart</a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- single-product item end -->
               </div>
            </div>
         </div>
      </div>
      <!-- quick view end -->


<%@include file="footer.jsp"%>