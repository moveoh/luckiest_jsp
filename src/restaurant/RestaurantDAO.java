package restaurant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import menu.MenuDTO;
import restaurant.RestaurantDTO;

public class RestaurantDAO {

	private Connection conn;
	private ResultSet rs=null;
	private PreparedStatement pstmt;

	public RestaurantDAO(){

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		

		String url = "jdbc:mysql://localhost/luckiest_test";
		String id = "root";
		String pw = "feelgood9";

		try {
			conn = DriverManager.getConnection(url, id, pw);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	//���Ժ����ֱ�
	public ArrayList<RestaurantDTO> restaurantList(RestaurantDTO dto){
		ArrayList<RestaurantDTO> res_list = new ArrayList<RestaurantDTO>();
		String query ="select * from restaurant";

		try {
			pstmt = conn.prepareStatement(query);
			//pstmt.setInt(1,dto.getRestaurant_id());

			rs = pstmt.executeQuery();

			while(rs.next()){
				RestaurantDTO tmp = new RestaurantDTO();
				tmp.setRestaurant_id(rs.getInt("restaurant_id"));
				tmp.setRestaurant_name(rs.getString("restaurant_name"));
				tmp.setRestaurant_adress(rs.getString("restaurant_adress"));
				tmp.setRestaurant_category1(rs.getInt("restaurant_category1"));
				tmp.setRestaurant_category2(rs.getInt("restaurant_category2"));

				res_list.add(tmp);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.close();
		}
		return res_list;

	}
	
	public ArrayList<RestaurantDTO> category1List(int restaurant_category1){
		ArrayList<RestaurantDTO> res_list = new ArrayList<RestaurantDTO>();
		String query ="select * from restaurant where restaurant_category1=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,restaurant_category1);

			rs = pstmt.executeQuery();

			while(rs.next()){
				RestaurantDTO tmp = new RestaurantDTO();
				tmp.setRestaurant_id(rs.getInt("restaurant_id"));
				tmp.setRestaurant_name(rs.getString("restaurant_name"));
				tmp.setRestaurant_adress(rs.getString("restaurant_adress"));
				tmp.setRestaurant_category1(rs.getInt("restaurant_category1"));
				tmp.setRestaurant_category2(rs.getInt("restaurant_category2"));

				res_list.add(tmp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.close();
		}
		return res_list;
	}
	
	public ArrayList<RestaurantDTO> category2List(int restaurant_category2){
		ArrayList<RestaurantDTO> res_list = new ArrayList<RestaurantDTO>();
		String query ="select * from restaurant where restaurant_category2=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,restaurant_category2);

			rs = pstmt.executeQuery();

			while(rs.next()){
				RestaurantDTO tmp = new RestaurantDTO();
				tmp.setRestaurant_id(rs.getInt("restaurant_id"));
				tmp.setRestaurant_name(rs.getString("restaurant_name"));
				tmp.setRestaurant_adress(rs.getString("restaurant_adress"));
				tmp.setRestaurant_category1(rs.getInt("restaurant_category1"));
				tmp.setRestaurant_category2(rs.getInt("restaurant_category2"));

				res_list.add(tmp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.close();
		}
		return res_list;
	}
	
	// 가게 이름 받아오기
	public String restaurantName(int restaurant_id){
		String query ="select restaurant_name from restaurant where restaurant_id=?";
		String name=null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,restaurant_id);

			rs = pstmt.executeQuery();
			rs.next();
			name = rs.getString("restaurant_name");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return name;
	}

	//���Ե��
	public boolean registerRestaurant(RestaurantDTO dto){

		String query = "insert into restaurant values (null,?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getRestaurant_name());
			pstmt.setString(2, dto.getRestaurant_adress());
			pstmt.setInt(3, dto.getRestaurant_category1());
			pstmt.setInt(4, dto.getRestaurant_category2());
			pstmt.executeUpdate();
			pstmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return true;
	}

	private void close(){
		try {
			if(rs !=null)rs.close();
			if(pstmt != null)pstmt.close();
			if(conn != null && !conn.isClosed())
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}