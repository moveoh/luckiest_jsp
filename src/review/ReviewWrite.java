package review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import review.ReviewDAO;
import review.ReviewDTO;
import menu.MenuDAO;
import menu.MenuDTO;

/**
 * Servlet implementation class Review_write
 */
@WebServlet("/ReviewWrite")
public class ReviewWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReviewWrite() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		String member_nic = (String)session.getAttribute("member_nic");
		int menu_id = Integer.parseInt(request.getParameter("menu_id"));
		Double star_score = Double.parseDouble(request.getParameter("star_score"));
		String comment_content = request.getParameter("comment_content");
		
		
		


		ReviewDTO dto = new ReviewDTO();
		dto.setMember_nic(member_nic);
		dto.setMenu_id(menu_id);
		dto.setStar_score(star_score);
		dto.setComment_content(comment_content);

		System.out.println(member_nic);
		System.out.println(menu_id);
		System.out.println(star_score);
		System.out.println(comment_content);

		ReviewDAO dao = new ReviewDAO();
		boolean b = dao.writeReview(dto);

		if(b){
			System.out.println("후기 쓰기 성공");
			response.sendRedirect("MenuDetail?menu_id=1");
		}else{
			System.out.println("후기 쓰기 실패");
		}
	}

}
