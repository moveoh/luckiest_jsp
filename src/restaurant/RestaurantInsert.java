package restaurant;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RestaurantRegister
 */
@WebServlet("/RestaurantInsert")
public class RestaurantInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantInsert() {
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
		request.setCharacterEncoding("UTF-8");
		//      
		//      String requestURI= request.getRequestURI(); //��ü�ּ�
		//      String contextPath= request.getContextPath(); //ª�� �ּ�
		//      String com =requestURI.substring(contextPath.length());
		//                             //�ڸ���

		String restaurant_name = request.getParameter("restaurant_name");
		String restaurant_adress = request.getParameter("restaurant_adress");
		int restaurant_category1 = Integer.parseInt(request.getParameter("restaurant_category1"));
		int restaurant_category2 = Integer.parseInt(request.getParameter("restaurant_category2"));

		RestaurantDTO dto = new RestaurantDTO();
		dto.setRestaurant_name(restaurant_name);
		dto.setRestaurant_adress(restaurant_adress);
		dto.setRestaurant_category1(restaurant_category1);
		dto.setRestaurant_category2(restaurant_category2);

		RestaurantDAO dao = new RestaurantDAO();
		
		boolean bool = dao.registerRestaurant(dto);
		if(bool){
			System.out.println("restaurant!");
		}
		
		
		
	}

}
