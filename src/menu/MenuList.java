package menu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restaurant.RestaurantDAO;

/**
 * Servlet implementation class MenuList
 */
@WebServlet("/MenuList")
public class MenuList extends HttpServlet {
	
   private static final long serialVersionUID = 1L;

    public MenuList() {
        super();
        // TODO Auto-generated constructor stub
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
	   request.setCharacterEncoding("UTF-8");
	   
      int restaurant_id = Integer.parseInt(request.getParameter("restaurant_id"));
     
      MenuDTO dto = new MenuDTO();
      dto.setRestaurant_id(restaurant_id);

      
      MenuDAO dao = new MenuDAO();
      ArrayList<MenuDTO> menuDTO = dao.menuList(dto);
      
      RestaurantDAO rDao = new RestaurantDAO();
      String name = rDao.restaurantName(restaurant_id);
      
      request.setAttribute("menuDTO", menuDTO);
      request.setAttribute("restaurant_name", name);
      
      request.getRequestDispatcher("shop-list.jsp").forward(request, response);
      // 다른 jsp로보내기.
   }
   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}
