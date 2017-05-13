package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberPassModify
 */
@WebServlet("/MemberPassModify")
public class MemberPassModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberPassModify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		 HttpSession session = request.getSession();
		 
		 int session_id = (Integer)session.getAttribute("id");
		 String current_pass =request.getParameter("current_password");
		 String new_pass = request.getParameter("new_pass1");
		 
		 MemberDAO dao = new MemberDAO();
		
		 boolean result = dao.modifyPassword(current_pass, new_pass,session_id);
		 
		 if(result== true){
			 System.out.println("비밀번호 변경 성공");
			 response.sendRedirect("./member_passchange_success.jsp");
		 }else{
			 System.out.println("비밀번호 변경 실패");
			 response.sendRedirect("./member_passchange_fail.jsp");
		 }
	}
}