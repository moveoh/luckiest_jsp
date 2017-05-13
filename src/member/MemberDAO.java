package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	ResultSet rs = null;

	// mysql 생성자
	public MemberDAO(){
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

	// 회원 가입
	public boolean registerMember(MemberDTO dto){
		String query = "insert into member values (null,?,?,?,null,?,?,?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getMember_email());
			pstmt.setString(2, dto.getMember_pw());
			pstmt.setString(3, dto.getMember_nic());
			pstmt.setString(4, dto.getMember_salty());
			pstmt.setString(5, dto.getMember_sweet());
			pstmt.setString(6, dto.getMember_spicy());

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

	//메일 중복 검사
	public boolean MemberMailAuth( String new_email){
		String query = "select member_email from member where member_email='"+new_email+"'";

		try{
			pstmt = conn.prepareStatement(query);

			rs = pstmt.executeQuery();

			if(!rs.next()){
				return true;  //중복되는 메일이 없는 경우
			}else
				return false;
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return true;
	}

	// 회원 로그인
	public MemberDTO loginMember(MemberDTO dto){
		String query = "select member_pw,id,member_nic,member_salty,member_spicy,member_sweet from member where member_email=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getMember_email());

			rs = pstmt.executeQuery();
			if(rs.next()){
				if(rs.getString("member_pw").equals(dto.getMember_pw())){
					MemberDTO tmp = new MemberDTO();
					tmp.setId(rs.getInt("id"));
					tmp.setMember_nic(rs.getString("member_nic"));
					tmp.setMember_salty(rs.getString("member_salty"));
					tmp.setMember_spicy(rs.getString("member_spicy"));
					tmp.setMember_sweet(rs.getString("member_sweet"));
					return tmp;
				}else{
					System.out.println("비밀번호가 틀렸습니다.");
					return null;
				}
			}else{
				System.out.println("이메일이 존재하지 않습니다.");
				return null;
			}       
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return dto;
	}

	// 회원 탈퇴
	public boolean quitMember(MemberDTO dto){
		String query = "delete from member where member_email=? and member_pw=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getMember_email());
			pstmt.setString(2, dto.getMember_pw());

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


	// 회원 수정
	public boolean modifyMember(MemberDTO dto){
		String query = "update member set member_nic=?,member_spicy=?,member_salty=?,member_sweet=? where id="+dto.getId();

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, dto.getMember_nic());
			pstmt.setString(2, dto.getMember_spicy());
			pstmt.setString(3, dto.getMember_salty());
			pstmt.setString(4, dto.getMember_sweet());

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

	//비밀번호 수정
	public boolean modifyPassword(String current_pass, String new_pass, int session_id){

		String query = "select member_pw from member where id="+session_id;

		try{
			pstmt = conn.prepareStatement(query);

			rs = pstmt.executeQuery();
			rs.next();
			if(rs.getString("member_pw").equals(current_pass)){
				String query2 = "update member set member_pw=? where id="+session_id;
				try {
					pstmt = conn.prepareStatement(query2);
					pstmt.setString(1, new_pass);

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
			}else{
				return false;
			}
		} catch(SQLException e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return true;
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

