//이메일이 중복인지 확인하는 서블릿입니다
package member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberMailAuth
 */
@WebServlet("/MemberMailAuth")
public class MemberMailAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberMailAuth() {
		super();
		// TODO Auto-generated constructor stub
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter(); 
		String new_email = request.getParameter("member_email");
		System.out.println("서블릿에서 수신된 이메일(내가 회원가입창에 적은) :"+new_email);

		MemberDAO dao = new MemberDAO();

		boolean result = dao.MemberMailAuth(new_email);
		if(result == true){
			System.out.println("이메일이 중복이 아닙니다");
			out.println("<HTML>");
			out.println("<BODY>") ;
			out.println("<script>") ;
			out.println("window.open('member_authpage.jsp?email="+new_email+"','new','resizable=no,toolbar=no,status=no,location=0,directories=no,width=370, height=360');");
			out.println("</script>") ;
			out.println("</BODY>") ;
			out.println("</HTML>");
		}else{
			System.out.println("이메일이 중복입니다.");
			response.sendRedirect("./Member_mail_overlap.jsp");
		}

	}

}