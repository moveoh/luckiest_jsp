package menu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restaurant.RestaurantDAO;
import review.ReviewDAO;
import review.ReviewDTO;
/**
 * Servlet implementation class SingleList
 */
@WebServlet("/MenuDetail")
public class MenuDetail extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   public MenuDetail(){
        super();
        // TODO Auto-generated constructor stub
    }
     
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
	  request.setCharacterEncoding("UTF-8"); 
      int menu_id = Integer.parseInt(request.getParameter("menu_id"));
      
      MenuDAO dao = new MenuDAO();
      MenuDAO menuDao = new MenuDAO();
      MenuDTO dto = new MenuDTO();
      ArrayList<ReviewDTO> reviewList = new ArrayList<>();
      ReviewDAO reviewDao = new ReviewDAO();
      
      dto = dao.detailMenu(menu_id);
      reviewList = reviewDao.reviewList(menu_id);
      
      RestaurantDAO rDao = new RestaurantDAO();
      String name = rDao.restaurantName(dto.getRestaurant_id());
      
      double ave = 0;
      
      for(int i = 0; i<reviewList.size(); i++)
      {
    	  ave += (double)reviewList.get(i).getStar_score();
      }
      ave = ave/reviewList.size();
      ave= Math.round(ave*100d)/100d;
      System.out.println(ave);
      
      boolean bool = menuDao.modifymenu(menu_id, ave);
      if(bool)
    	  System.out.println("변경성공!");
      else
    	  System.out.println("변경 실패 ㅠㅠ");
      
      request.setAttribute("MenuDTO", dto);
      request.setAttribute("ReviewList", reviewList);
      request.setAttribute("restaurant_name", name);
      
      request.getRequestDispatcher("single-product.jsp").forward(request, response);
      
   }
   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}
