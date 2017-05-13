package blog;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BlogDAO {
   private Connection conn;
   private PreparedStatement pstmt;
   ResultSet rs = null;

   // mysql 생성자
   public BlogDAO(){
      try {
         Class.forName("com.mysql.jdbc.Driver");

         String url = "jdbc:mysql://localhost/luckiest_test";
         String id = "root";
         String pw = "feelgood9";

         conn = DriverManager.getConnection(url,id,pw);

      } catch (Exception e) {
         e.printStackTrace();
      }   
   }

   // 블로그 글 쓰기
   public boolean writeBlog(BlogDTO dto){
      String query = "insert into blog values (null,1,?,null,?,?,1)";
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, dto.getBlog_title());
         pstmt.setString(2, dto.getBlog_summary());
         pstmt.setString(3, dto.getBlog_contents());

         int i = pstmt.executeUpdate();
         if( i != 1){
            return false;
         }

      } catch (SQLException e) {
         e.printStackTrace();
      }finally{
         this.close();
      }

      return true;
   }

   // 블로그 목록 불러오기
   public ArrayList<BlogDTO> listBlog(){
      ArrayList<BlogDTO> list = new ArrayList<>();
      String query = "select * from blog order by blog_id desc";
      try {
         pstmt = conn.prepareStatement(query);
         rs = pstmt.executeQuery();

         while(rs.next()){

            BlogDTO dto = new BlogDTO();
            dto.setBlog_id(rs.getInt("blog_id"));
            dto.setId(rs.getInt("id"));
            dto.setBlog_title(rs.getString("blog_title"));
            dto.setBlog_date(rs.getString("blog_date"));
            dto.setBlog_summary(rs.getString("blog_summary"));
            dto.setBlog_contents(rs.getString("blog_contents"));
            dto.setBlog_count(rs.getInt("blog_count"));

            list.add(dto);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      }finally{
         this.close();
      }

      return list;
   }

   // 블로그 세부 글 불러오기
   public BlogDTO detailBlog(int blog_id){
      // 조회수 증가.
      countView(blog_id);
      
      BlogDTO dto = new BlogDTO();
      String query = "select * from blog where blog_id=?";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, blog_id);
         rs = pstmt.executeQuery();

         if(rs.next()){
            dto.setBlog_id(rs.getInt("blog_id"));
            dto.setId(rs.getInt("id"));
            dto.setBlog_title(rs.getString("blog_title"));
            dto.setBlog_date(rs.getString("blog_date"));
            dto.setBlog_summary(rs.getString("blog_summary"));
            dto.setBlog_contents(rs.getString("blog_contents"));
            dto.setBlog_count(rs.getInt("blog_count"));
         }else{
            System.out.println("세부 글이 없습니다.");
         }

      } catch (SQLException e) {
         e.printStackTrace();
      }finally{
         this.close();
      }

      return dto;
   }
   
   // 조회수 1 증가.
   public void countView(int blog_id){
      try {
         String query = "update blog set blog_count = blog_count+1 where blog_id="+blog_id;

         pstmt = conn.prepareStatement(query);
         
         pstmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      }finally {
         try {
            if(pstmt != null) pstmt.close();
         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }

      }
   }

   // 종료
   private void close(){
      try {
         if(rs != null) rs.close();
         if(pstmt != null) pstmt.close();
         if(conn != null && !conn.isClosed())
            conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
}