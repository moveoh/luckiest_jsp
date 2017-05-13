package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/MemberLogin")
public class MemberLogin extends HttpServlet {
   private static final long serialVersionUID = 1L;
   		
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");

         String member_email = request.getParameter("member_email");
         String member_pw = request.getParameter("member_pw");
         String[] remember =  request.getParameterValues("rememberme7");

         MemberDTO dto = new MemberDTO();
         dto.setMember_email(member_email);
         dto.setMember_pw(member_pw);

         MemberDAO dao = new MemberDAO();
         dto = dao.loginMember(dto);
         

         if(dto != null){  //로그인 성공했을때
        	 if(remember != null){   //체크박스에 체크했을때
        		 Cookie reme = new Cookie("rememberme",member_email); //쿠키의이름은 'rememberme'이고 값은 login.jsp에서 입력한member_email이다
        		 response.addCookie(reme); //쿠키 추가
        		 reme.setMaxAge(3652460*60); //쿠키의 생명을 1년으로 설정->단위는 초
        		 
        		  System.out.println("'" + member_email + "'로그인 성공.");
                  HttpSession session = request.getSession();
                  session.setAttribute("member_email", member_email);
                  session.setAttribute("id", dto.getId());
                  session.setAttribute("member_nic", dto.getMember_nic());
                  session.setAttribute("member_salty", dto.getMember_salty());
                  session.setAttribute("member_spicy", dto.getMember_spicy());
                  session.setAttribute("member_sweet", dto.getMember_sweet());
                  
                  response.sendRedirect("./index.jsp");
        	 }else{  //체크박스에 체크안했을때
        		 
        		 Cookie kill = new Cookie("rememberme",null);
        		 kill.setMaxAge(0);
        		 response.addCookie(kill);
        		 
         		  System.out.println("'" + member_email + "'로그인 성공.");
                  HttpSession session = request.getSession();
                  session.setAttribute("member_email", member_email);
                  session.setAttribute("id", dto.getId());
                  session.setAttribute("member_nic", dto.getMember_nic());
                  session.setAttribute("member_salty", dto.getMember_salty());
                  session.setAttribute("member_spicy", dto.getMember_spicy());
                  session.setAttribute("member_sweet", dto.getMember_sweet());
                  
                  response.sendRedirect("./index.jsp");
        	 }
         }else{	
        	response.sendRedirect("./member_login_fail.jsp");
            System.out.println("'" + member_email + "'로그인 실패");
         }
   }

}