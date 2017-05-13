package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Member")
public class MemberRegister extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public MemberRegister() {
      super();
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");

      String member_email = request.getParameter("member_email");
      String member_pw = request.getParameter("member_pw");
      String member_nic = request.getParameter("member_nic");
      String member_salty = request.getParameter("member_salty");
      String member_sweet = request.getParameter("member_sweet");
      String member_spicy = request.getParameter("member_spicy");

      MemberDTO dto = new MemberDTO();
      dto.setMember_email(member_email);
      dto.setMember_pw(member_pw);
      dto.setMember_nic(member_nic);
      dto.setMember_salty(member_salty);
      dto.setMember_sweet(member_sweet);
      dto.setMember_spicy(member_spicy);

      MemberDAO dao = new MemberDAO();
      boolean bool = dao.registerMember(dto);
      if(bool){
         System.out.println("'" + member_email + "' 회원 가입 성공");
         response.sendRedirect("./member_register_success.jsp");
      }else{
         System.out.println("'" + member_email + "' 회원 가입 실패");
      }
   }
}