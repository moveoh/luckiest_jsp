package blog;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BlogWrite")
public class BlogWrite extends HttpServlet {
   private static final long serialVersionUID = 1L;

    public BlogWrite() {
        super();
        // TODO Auto-generated constructor stub
    }


   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
      
      String blog_title = request.getParameter("blog_title");
      String blog_summary = request.getParameter("blog_summary");
      String blog_contents = request.getParameter("blog_contents");
      
      BlogDTO dto = new BlogDTO(blog_title, blog_summary , blog_contents);
      BlogDAO dao = new BlogDAO();
      boolean b = dao.writeBlog(dto);
      if(b){
         System.out.println("글 쓰기 성공");
         response.sendRedirect("blog");
      }else{
         System.out.println("글 쓰기 실패");
      }
      
   }

}