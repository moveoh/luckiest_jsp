package blog;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BlogDetail
 */
@WebServlet("/BlogDetail")
public class BlogDetail extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public BlogDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      int blog_id = Integer.parseInt((String)request.getParameter("blog_id"));
      
      BlogDAO dao = new BlogDAO();
      BlogDTO dto = new BlogDTO();
      dto = dao.detailBlog(blog_id);
      request.setAttribute("BlogDTO", dto);
      
      request.getRequestDispatcher("blog_detail.jsp").forward(request, response);
      
   
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}