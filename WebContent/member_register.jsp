<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@include file="header.jsp"%>
    
    <script src="js/register_member.js"></script>
    
    <!-- register_member js -->
    
        <!-- pages-title\	-start -->
      <section class="contact-img-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="con-text">
                            <h2 class="page-title">회원 가입</h2>
                            <p>반가워요, 먹정너와 함께해요!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <!-- pages-title-end -->

   
<script type="text/javascript">
function authpop(){
   var frm = document.register_member;
   var email = frm.member_email.value;
   var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

   if(!email){
	   sweetAlert("이메일을 입력해주세요");
	   return false;
   }
   
   if(!exptext.test(email)){      
	  sweetAlert("메일형식이 올바르지 않습니다.");
      return false;
   }
   
   $.ajax({
	   url:'MemberMailAuth',
	   method:'POST',
	   data:{member_email:email},
	   success:function(ret){
		   $('#temp').html(ret);
	   },
	   error:function(a, b,c){$('#temp').html(a.responseText);},
	   dataType:'text.html'
   })
}
var d;
</script>
	<div id="temp"></div>
      <!--    회 원 가 입 SECTION 시작 -->
      <div class="login-area" style="margin-top:0px; padding-top:15px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-2 col-md-8 col-xs-12">
                        <div class="tb-login-form res">
                            <h5 class="tb-title" style="margin-left:15px;">회원가입</h5>
                            
                            <!-- FORM 태그 안의 내용을 post 형으로 Member로 매핑된 서블릿으로 보낸다, submit을 눌렀을때 import되어있는 js의 registerCehck메소드를 실행한다 -->
                            <form method="post" name="register_member" onsubmit="registerCheck(); return false;" action="Member">
                                <div class="col-md-10 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">이메일</label>
	                                    <input type="email" name="member_email" />
	                                </p>
                                </div>
	                                <div class="col-md-2 col-xs-12">
		                                <p class="checkout-coupon top log a-an">
		                                    <input type='button'  value='이메일 인증' style="height:42px; margin-top:24px;" class="button-primary" onClick='authpop()'>
		                                </p>
	                                </div>
                                <div class="col-md-6 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">비밀번호</label>
	                                    <input type="password" name="member_pw">
	                                </p>
                                </div>
                                <div class="col-md-6 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">비밀번호 확인</label>
	                                    <input type="password" name="member_pw2" >
	                                </p>
                                </div>
                                <div class="col-md-12 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">별명</label>
	                                    <input type="text" name="member_nic">
	                                </p>
                                </div>
                                <div class="col-md-4 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">짠 맛</label>&nbsp<a class="fa fa-question-circle" href="#" title="좌측일수록 짠 음식을 못먹고 우측일수록 잘먹습니다"></a>
	                                    <input type="range" min="1" max="5" name="member_salty">
	                                </p>
                                </div>
                                <div class="col-md-4 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">단 맛</label>&nbsp<a class="fa fa-question-circle" href="#" title="좌측일수록 단 음식을 못먹고 우측일수록 잘먹습니다"></a>
	                                    <input type="range" min="1" max="5" name="member_sweet">
	                                </p>
                                </div>
                                <div class="col-md-4 col-xs-12">
	                                <p class="checkout-coupon top log a-an">
	                                    <label class="l-contact">매운 맛</label>&nbsp<a class="fa fa-question-circle" href="#" title="좌측일수록 매운 음식을 못먹고 우측일수록 잘먹습니다"></a>
	                                    <input type="range" min="1" max="5" name="member_spicy">
	                                </p>
                                </div>
	                                <p class="login-submit5 ress" style="margin-left:15px;">
	                                   <input type="hidden" id="check" value="">
	                                    <input value="회원가입" class="button-primary" type="submit">
	                                </p>
                            </form>
                            <!--    회 원 가 입 SECTION 끝 -->
                            <div class="tb-info-login ">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
         <%@include file="footer.jsp"%>
      <!-- login  content section end -->