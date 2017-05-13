package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import blog.BlogDTO;
import review.ReviewDTO;


public class ReviewDAO {
	private Connection conn;
	private ResultSet rs=null;
	private PreparedStatement pstmt;

	public ReviewDAO(){
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
	
	public ArrayList<ReviewDTO> reviewList(int menu_id){
		ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
		String query ="select * from review where menu_id="+menu_id;

		try {
			pstmt = conn.prepareStatement(query);

			rs = pstmt.executeQuery();

			while(rs.next()){
				ReviewDTO tmp = new ReviewDTO();
				tmp.setReview_id(rs.getInt("review_id"));
				tmp.setMember_nic(rs.getString("member_nic"));
				tmp.setMenu_id(rs.getInt("menu_id"));
				tmp.setComment_date(rs.getString("coment_date"));
				tmp.setComment_content(rs.getString("coment_content"));
				tmp.setStar_score(rs.getDouble("star_score"));

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
	public boolean writeReview(ReviewDTO dto){
	      String query = "insert into review values (null,?,?,null,?,?)";
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, dto.getMember_nic());
	         pstmt.setInt(2, dto.getMenu_id());
	         pstmt.setString(3, dto.getComment_content());
	         pstmt.setDouble(4, dto.getStar_score());
	        

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
	
	public boolean Review_insert(ReviewDTO dto){

		String query = "insert into review values (null,?,?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getMember_nic());
			pstmt.setInt(2, dto.getMenu_id());
			pstmt.setString(3, dto.getComment_date());
			pstmt.setString(4, dto.getComment_content());
			pstmt.setDouble(5, dto.getStar_score());
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
