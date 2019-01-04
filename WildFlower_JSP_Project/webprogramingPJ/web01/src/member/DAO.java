package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class DAO {
	DBConnect dbconnect = null;
	String sql="";
	
	public DAO() {
		dbconnect = new DBConnect();
	}
	
	//한글화 처리
	public String pasing(String data) {
		try {
			data = new String(data.getBytes("8859_1"), "UTF-8");
		}catch (Exception e){ }
		return data;
	}
	
	//멤버정보찾기
	public VO selectmember(String id) {
		VO member = new VO();
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			sql = "SELECT * FROM member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setTel(rs.getString("tel"));
				member.setAddress(rs.getString("address"));
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return member;
	}
	
	//회원정보 수정
	public void update(VO member) { //해당 row를 수정
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;

		try {
			sql = "UPDATE member SET name=?,email=?,tel=?,address=? where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pasing(member.getName()));
			pstmt.setString(2, pasing(member.getEmail()));
			pstmt.setString(3, pasing(member.getTel()));
			pstmt.setString(4, pasing(member.getAddress()));
			pstmt.setString(5, pasing(member.getId()));
			pstmt.executeUpdate();
			con.commit();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	
}
	
}
