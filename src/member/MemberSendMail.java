package member;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//인증 메일 보내는 CLASS 입니다.

public class MemberSendMail {
   
   public String RandomNum(){
      StringBuffer buffer=  new StringBuffer();
      for(int i=0; i<6; i++){
         int n= (int) (Math.random()*10);
         buffer.append(n);
      }
      return buffer.toString();
   }

   public String sendMail(String registerEail){
      Properties p = System.getProperties();
      p.put("mail.smtp.starttls.enable","true");  // gmail은 무조건 true 고정, 
      p.put("mail.smtp.host","smtp.gmail.com"); // // smtp 서버 주소
      p.put("mail.smtp.auth","true");    //gmail은 무조건 true 고정, SMAP 인증 사용해야함
      p.put("mail.smtp.port","587");    // gmail 포트
      
      String authNum = "";
      authNum = RandomNum();
     
      
      // 인증 번호
      String authNumber="인증번호는[" + authNum + "]";

      Authenticator auth = new MyAuthentication(); 

      //  session 생성 및 MimeMessage 생성
      Session session = Session.getDefaultInstance(p,auth);
      MimeMessage msg = new MimeMessage(session);

      try{
         // 편지 보낸시간
         msg.setSentDate(new Date());

         InternetAddress from = new InternetAddress("luckiest.official@gmail.com");

         // 이메일 발신자
         msg.setFrom(from);
         // 이메일 수신자
         msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(registerEail));
         // 이메일 제목
         msg.setSubject("인증 번호 전송","UTF-8");
         //이메일 내용
         msg.setText(authNumber,"UTF-8");
         // 이메일 헤더
         msg.setHeader("content-Type","text/html");
         // 메일 보내기
         javax.mail.Transport.send(msg);

      }catch(AddressException addr_e){
         addr_e.printStackTrace();
      }catch(MessagingException msg_e){
         msg_e.printStackTrace();
      }
      return authNum;
   }

   class MyAuthentication extends Authenticator {

      PasswordAuthentication pa;

      public MyAuthentication(){
         String id = "luckiest.official";       // 구글 ID
         String pw = "luckiest777";          // 구글 비밀번호

         //ID와 비밀번호를 입력한다.
         pa = new PasswordAuthentication(id, pw);
      }

      // 시스템에서 사용하는 인증정보
      public PasswordAuthentication getPasswordAuthentication() {
         return pa;
      }
   }
}