package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberExit
 */
@WebServlet("/MemberExit")
public class MemberExit extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberExit() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      
      String member_email = request.getParameter("member_email");
      String member_pw = request.getParameter("member_pw");
      
      MemberDTO dto = new MemberDTO(member_email, member_pw);
      MemberDAO dao = new MemberDAO();
      boolean result =dao.quitMember(dto);
      if(result){
         System.out.println(member_email+"님 회원 탈퇴 성공");
         request.getSession().invalidate();
         response.sendRedirect("member_exit_success.jsp");
      }else{
         System.out.println(member_email+"님 회원 탈퇴 실패");
         response.sendRedirect("index.jsp");
      }
   }

}