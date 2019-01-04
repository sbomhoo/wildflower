package board;

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
	
	//�Խ��� �� �Ѽ�
	public int count() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		
		try {
			sql = "SELECT count(*) FROM notice";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return cnt;
	}
	
	//�ѱ�ȭ ó��
	public String pasing(String data) {
		try {
			data = new String(data.getBytes("8859_1"), "UTF-8");
		}catch (Exception e){ }
		return data;
	}
	
	//�Խ��Ǹ��
	public ArrayList<VO> getMemberList() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<VO> alist = new ArrayList<VO>();
		
		try {
			sql = "SELECT NUM, id, TITLE, ndate, HIT from notice order by num desc, step asc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				boolean dayNew = false;
				vo.setNum(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setTitle(rs.getString(3));
				
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
				String year = (String)simpleDate.format(date);
				String yea = rs.getString(4).substring(0,10);
				
				if(year.equals(yea)){
					dayNew = true;
				}
				
				vo.setNdate(yea);
				vo.setHit(rs.getInt(5));
				vo.setDayNew(dayNew);
				alist.add(vo);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return alist;
	}
	
	
	//??????????
	public int getMax() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int max = 0;
		
		try {
			sql = "SELECT MAX(NUM) FROM notice";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				max=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return max;
	}
	
	//�۾��� -> �� �۾��Ⱑ �ȵ���.. �ϴ��� write_ok�� �� ����
//	public void insertWrite(VO vo) {
//		Connection con = dbconnect.getConnection();
//		PreparedStatement pstmt = null;
//		
//		try {
//			sql = "INSERT INTO notice(id,title,memo) VALUES(?,?,?)";
//			pstmt = con.prepareStatement(sql);
//			
//			pstmt.setString(1, pasing(vo.getId()));
//			pstmt.setString(2, pasing(vo.getTitle()));
//			pstmt.setString(3, pasing(vo.getMemo()));
//			
//			pstmt.executeUpdate();
//		}catch(Exception e) {
//			
//		}finally {
//			DBClose.close(con,pstmt);
//		}
//	}
	
	//�� ��ũ Ÿ����� ����
	public VO getView(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		VO vo = null;
		
		try {
			sql = "SELECT id,TITLE, MEMO, ndate, HIT FROM notice WHERE NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new VO();
				vo.setId(rs.getString(1));
				vo.setTitle(rs.getString(2));
				vo.setMemo(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setHit(rs.getInt(5)+1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return vo;
	}
	
	//��ȸ�� ����
	public void UpdateHit(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE notice SET HIT=HIT+1 where NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	

	//�� ����
	public void delete(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "DELETE FROM notice WHERE NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//�ۼ���
	public void modify(VO vo, int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE notice SET TITLE=?, MEMO=? where NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pasing(vo.getTitle()));
			pstmt.setString(2, pasing(vo.getMemo()));
			pstmt.setInt(3, idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//����¡ó��
	public void UpdateStep(int step) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE notice SET STEP=STEP+1 where STEP>?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, step);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	


}
