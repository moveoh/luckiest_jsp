package menu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import menu.MenuDTO;

public class MenuDAO {

   private Connection conn;
   private PreparedStatement pstmt;
   ResultSet rs = null;

   // ������
   public MenuDAO(){
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

   // �޴� �����ֱ�
   public ArrayList<MenuDTO> menuList(MenuDTO dto){
      ArrayList<MenuDTO> list = new ArrayList<MenuDTO>();
      String query ="select * from menu where restaurant_id=?";

      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, dto.getRestaurant_id());

         rs = pstmt.executeQuery();

         while(rs.next()){
            MenuDTO tmp = new MenuDTO();
            tmp.setMenu_id(rs.getInt("menu_id"));
            tmp.setMenu_name(rs.getString("menu_name"));
            tmp.setMenu_price(rs.getInt("menu_price"));
            tmp.setMenu_ave_star(rs.getDouble("menu_ave_star"));
            tmp.setMenu_summary(rs.getString("menu_summary"));
            

            list.add(tmp);

         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally{
         this.close();
      }
      return list;

   }
   
   public boolean modifymenu(int menu_id, double ave_star){
	   String query = "update menu set menu_ave_star=? where menu_id=?";
	   System.out.println(menu_id);
	   System.out.println(ave_star);
	   try {
	         pstmt = conn.prepareStatement(query);
	         
	         pstmt.setDouble(1, ave_star);
	         pstmt.setInt(2, menu_id);
	         
	         //DB변동의 유무가 있는지 
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
   
   public MenuDTO detailMenu(int menu_id){
	   
	      MenuDTO dto = new MenuDTO();
	      String query = "select * from menu where menu_id=?";
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setInt(1, menu_id);
	         rs = pstmt.executeQuery();

	         if(rs.next()){
	            dto.setMenu_id(rs.getInt("menu_id"));
	            dto.setRestaurant_id(rs.getInt("restaurant_id"));
	            dto.setMenu_name(rs.getString("menu_name"));
	            dto.setMenu_price(rs.getInt("menu_price"));
	            dto.setMenu_ave_star(rs.getDouble("menu_ave_star"));
	            dto.setMenu_summary(rs.getString("menu_summary"));
	           
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
   //�޴����
   public boolean registerMenu(MenuDTO dto){
      
      String query = "insert into menu values(null,?, ?, ?, ?,?)";
      
      try{
         pstmt = conn.prepareStatement(query);
         pstmt.setInt(1, dto.getRestaurant_id());
         pstmt.setString(2, dto.getMenu_name());
         pstmt.setInt(3, dto.getMenu_price());
         pstmt.setDouble(4, dto.getMenu_ave_star());
         pstmt.setString(5, dto.getMenu_summary());
         
         pstmt.executeUpdate();
         pstmt.close();
         conn.close();
      }catch(SQLException e){
         e.printStackTrace();
      }finally{
         this.close();
      }
      return true;
   }

   // ����
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