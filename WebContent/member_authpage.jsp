<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.MemberSendMail"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
		<script src="dist/sweetalert.min.js"></script> 
		<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">
    <%  
		String email = request.getParameter("email");
		MemberSendMail msm = new MemberSendMail();
		String authNumber = msm.sendMail(email); //sendmail메소드에의해 보내지는 "email"을 authNumber라고 한다
	%>
    <script>
	   function check(){
	      var authNum = document.getElementById("auth_num").value;  //메일로 도착한 인증번호
	      var authNumber = document.getElementById("authNumber").value; //사용자가 기입할 인증번호
	      
	      if(!authNum){
	    	  sweetAlert("인증번호를 입력하세요");
	         return false;
	      }
	      if(authNum != authNumber){
	    	  sweetAlert("틀린 인증번호입니다.", "다시 입력하세요");
	         authNum.value="";
	         return false;
	      }
	      if(authNum == authNumber){
	    	  sweetAlert("인증완료"); 
	         opener.document.getElementById("check").value="ok";
	         window.close();
	      }
	   }
	</script>
    
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>메일 인증 페이지</title>
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
        </head>
<body>


     <!-- login content section start -->
      <div class="login-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-xs-12">
                        <div class="tb-login-form ">
                            <h5 class="tb-title">이메일 인증 창입니다</h5>
                           <%=email %> <p>로 발송된 인증번호를 입력해주세요 </p>
                            
                            <!-- 인증번호 확인하는 버튼 LOGIN이 SUBMIT이다 -->
                            <form action="MemberLogin" method="post">
                                <p class="checkout-coupon top log a-an">
                                    <label class="l-contact">
                                        	인증 번호
                                        <em>*</em>
                                    </label>
                                    <input type="hidden" name="authNumber" id="authNumber" value="<%= authNumber %>" >
                                    <input type="text" name="auth_num" id="auth_num">
                                </p>
                                <p class="login-submit5" style="float:left;">
                                <input type="button" value="취소"  onClick= "window.close()"/>
                                </p>
                                <p class="login-submit5" style="float:right;">
                                    <input class="button-primary" type="button" value="확인"  onclick="check()">
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- login  content section end -->
</body>
</html>