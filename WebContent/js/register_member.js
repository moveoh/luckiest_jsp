
//회원가입 폼 체크.

function registerCheck(){
   var frm = document.register_member;
   var pw = frm.member_pw.value;
   var pw2 = frm.member_pw2.value;
   var email = frm.member_email.value;
   var check = frm.check.value;
   
   // 이메일 입력 확인.
   if(!email){
      sweetAlert("이메일을 입력해주세요.");
      frm.member_email.focus();
      return false;
   }
   // 비밀번호 입력 확인.
   if(!pw){
      sweetAlert("비밀번호를 입력해주세요.");
      frm.member_pw.focus();
      return false;
   }
   // 비밀번호 확인 입력 확인.
   if(!pw2){
      sweetAlert("비밀번호 확인을 입력해주세요.");
      frm.member_pw2.focus();
      return false;
   }

   // 별명 입력 확인
   if(!frm.member_nic.value){
      sweetAlert("별명을 입력해주세요.");
      frm.member_nic.focus();
      return false;
   }

   // 짠맛 입력 확인.
   if(!frm.member_salty.value){
      sweetAlert("짠맛을 입력해주세요.");
      frm.member_salty.focus();
      return false;
   }

   // 단 맛 입력 확인.
   if(!frm.member_sweet.value){
      sweetAlert("단맛을 입력해주세요.");
      frm.member_sweet.focus();
      return false;
   }

   // 매운 맛 입력 확인.
   if(!frm.member_spicy.value){
      sweetAlert("매웃맛을 입력해주세요.");
      frm.member_spicy.focus();
      return false;
   }


   // 이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우
   var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

   if(!exptext.test(email)){      
      sweetAlert("이 메일형식이 올바르지 않습니다.");
      frm.member_email.focus();
      return false;
   }
   if(pw != pw2){
      sweetAlert("비밀번호가 일치하지 않습니다. 비밀번호를 확인해 주세요");
      frm.member_pw.focus();
      return false;
   }
   if(check=="ok"){
	   swal({
				   title: "입력하신 내용이 맞나요?",
				   text: "맞다면 확인을, 아니라면 취소하고 다시 입력해주세요",
				   type: "warning", showCancelButton: true,
				   confirmButtonColor: "#56DC6A",
				   confirmButtonText: "확인",
				   cancelButtonText: "취소",
				   closeOnConfirm: false
			   },
			   function(){
				      frm.method = "post";
				      frm.submit();
			   }
	   )
   }else{
	      sweetAlert("이메일 인증을 완료해주세요.");
		  return false;
   }
}