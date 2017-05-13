package restaurant;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restaurant.RestaurantDAO;
import restaurant.RestaurantDTO;

/**
 * Servlet implementation class RestaurantList
 */
@WebServlet("/RestaurantCategory1")
public class RestaurantCategory1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

    public RestaurantCategory1() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      int restaurant_category1 = Integer.parseInt(request.getParameter("restaurant_category1"));
      
      RestaurantDAO dao = new RestaurantDAO();
      ArrayList<RestaurantDTO> RestaurantDTO = dao.category1List(restaurant_category1);
      
      request.setAttribute("RestaurantDTO", RestaurantDTO);
      
      request.getRequestDispatcher("shop.jsp").forward(request, response);    
      
   }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

