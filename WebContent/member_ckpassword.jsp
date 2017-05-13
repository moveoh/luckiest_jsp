<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.MemberSendMail"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    	<script src="dist/sweetsweetAlert.min.js"></script> 
		<link rel="stylesheet" type="text/css" href="dist/sweetsweetAlert.css">
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
                            <h5 class="tb-title">비밀번호 변경</h5>
                            <p>수정하실 정보를 정확히 입력해주세요 </p>
                            
							<form method="post" name="member_password_change" action="MemberPassModify" onsubmit="checkPass(); return false;">
                                <p class="checkout-coupon top log a-an">
                                    <label class="l-contact">
                                        현재 비밀번호 입력
                                        <em>*</em>
                                    </label>
                                    <input type="password" name="current_password" placeholder="현재 비밀번호"  id="current_pass">
                                </p>
                                 <p class="checkout-coupon top log a-an">
                                    <label class="l-contact">
                                        새로운 비밀번호
                                        <em>*</em>
                                    </label>
                                    <input type="password" name="new_pass1" placeholder="새로운 비밀번호" id="new_pass1">
                                </p>
                                   <p class="checkout-coupon top log a-an">
                                    <label class="l-contact">
                                        새로운 비밀번호 확인
                                        <em>*</em>
                                    </label>
                                    <input type="password" name="new_pass2" placeholder="새로운 비밀번호 확인" id="new_pass2">
                                </p>
                                <p class="login-submit5" style="float:left;">
                                <input type="button" value="취소"  onClick= "window.close()"/>
                                </p>
                                <p class="login-submit5" style="float:right;">
                                    <input class="button-primary" type="submit" value="확인" >
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- login  content section end -->
       <script>
			 function checkPass(){
			     var current_pass = document.getElementById("current_pass").value; // 사용자가 입력한 기존 비밀번호 값
				 var new_pass1 = document.getElementById("new_pass1").value;  // 새로운 비밀번호
			     var new_pass2 = document.getElementById("new_pass2").value;  // 새로운 비밀번호 확인
			    

				function move(){
					 location.href="member_ckpassword.jsp";
				}
			     
			     if(!current_pass){
			        sweetAlert("현재 비밀번호를 입력하세요.");
			        setTimeout("move()",2000);
			        return false;
			     }
			     if(!new_pass1){
			    	 sweetAlert("새로운 비밀번호를 입력해주세요.");
			    	 setTimeout("move()",2000);
			    	 return false;
			     }
			     if(!new_pass2){
			    	 sweetAlert("새로운 비밀번호를 입력해주세요.");
			    	 setTimeout("move()",2000);
			    	 return false;
			     }
			     if(new_pass1 != new_pass2){
			        sweetAlert("새로운 비밀번호가 서로 다릅니다. 다시 입력해주세요");
			        new_pass1.value="";
			        new_pass2.value="";
			        setTimeout("move()",2000);
			        return false;
			     }
			     if(new_pass1 == new_pass2){
			        var frm = document.member_password_change;
			        frm.method="post";
			        frm.submit();
			        
			        //window.close();
			     }
			 }
 	</script>
</body>
</html>