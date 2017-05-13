package menu;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class menuRegister
 */
@WebServlet("/MenuRegister")
public class MenuInsert extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuInsert() {
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
      
      int restaurant_id = Integer.parseInt(request.getParameter("restaurant_id"));
      String menu_name = request.getParameter("menu_name");
      int menu_price = Integer.parseInt(request.getParameter("menu_price"));
      double menu_ave_star = Double.parseDouble(request.getParameter("menu_ave_star"));
      String menu_summary = request.getParameter("menu_summary");
      

      MenuDTO dto = new MenuDTO();
      dto.setRestaurant_id(restaurant_id);
      dto.setMenu_name(menu_name);
      dto.setMenu_price(menu_price);
      dto.setMenu_ave_star(menu_ave_star);
      dto.setMenu_summary(menu_summary);

      MenuDAO dao = new MenuDAO();
      boolean bool1 = dao.registerMenu(dto);
      if(bool1){
         System.out.println("insert Menu!");
      }
      
      MenuDAO dao2 = new MenuDAO();
      ArrayList<MenuDTO> menuDTO = dao2.menuList(dto);
      if(menuDTO != null){
         System.out.println("Menu!");
      }

   }

}