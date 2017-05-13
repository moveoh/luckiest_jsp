package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/MemberDataModify")
public class MemberDataModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberDataModify() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		 HttpSession session = request.getSession();
		 int session_id = (Integer)session.getAttribute("id");
	      	
		//개인정보 수정 칸에서 적은 data를 받아옴.
		String new_nic = request.getParameter("mod_NIC");
		String new_spicy = request.getParameter("mod_SPICY");
      	String new_salty = request.getParameter("mod_SALTY");
		String new_sweet = request.getParameter("mod_SWEET");
	
		 MemberDTO mod = new MemberDTO();
		 
		  mod.setId(session_id);  //세션id 받아오기, 회원 정보 수정에 필요
	      mod.setMember_nic(new_nic);
	      mod.setMember_salty(new_salty);
	      mod.setMember_spicy(new_spicy);
	      mod.setMember_sweet(new_sweet);
	      
	      MemberDAO dao = new MemberDAO();
	      
	      boolean result =dao.modifyMember(mod);
	      
	      if (result == true){
	    	  System.out.println("회원 정보 수정 성공");
	    	  System.out.println(new_nic);
	    	  System.out.println(session_id+"번째 회원 정보 수정 성공");
	    	  
	    	  
	    	  session.setAttribute("member_nic", mod.getMember_nic());
              session.setAttribute("member_salty", mod.getMember_salty());
              session.setAttribute("member_spicy", mod.getMember_spicy());
              session.setAttribute("member_sweet", mod.getMember_sweet());
              
              response.sendRedirect("./member_mypage.jsp");
	      }
	      else
	    	  System.out.println("'회원 정보 수정 실패");
	         
	}
}