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
@WebServlet("/RestaurantList")
public class RestaurantList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

    public RestaurantList() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      int restaurant_id = Integer.parseInt(request.getParameter("restaurant_id"));
      
      RestaurantDTO dto = new RestaurantDTO();
      dto.setRestaurant_id(restaurant_id);
      
      RestaurantDAO dao = new RestaurantDAO();
      ArrayList<RestaurantDTO> RestaurantDTO = dao.restaurantList(dto);
      
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
