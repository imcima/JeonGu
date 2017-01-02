package invest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.MemberDto;

public class MemberDAO {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	private Connection getConnection() throws Exception{
		Connection con=null;
		Context inti=new InitialContext();
		DataSource ds=(DataSource)inti.lookup("java:comp/env/jdbc/pro");
		con=ds.getConnection();
		return con;
	}//getConnection()
	private void freeConnection(Connection con, PreparedStatement pstmt, ResultSet rs){
		if(rs!=null){try {rs.close();} catch (SQLException e) {e.printStackTrace();}}
		if(con!=null){try {con.close();} catch (SQLException e) {e.printStackTrace();}}
		if(pstmt!=null){try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}}
	}//freeConnection(Connection con, PreparedStatement pstmt, ResultSet rs)
	
	private MemberDto setMemberDTO(ResultSet rs){
		MemberDto mdto = new MemberDto();		
		try {
			mdto.setMemberno(rs.getInt("memberno"));
			mdto.setId(rs.getString("id"));
			mdto.setPass(rs.getString("pass"));
			mdto.setName(rs.getString("name"));
			mdto.setEmail(rs.getString("email"));
			mdto.setMobile(rs.getString("mobile"));
			mdto.setGender(rs.getString("gender"));
			mdto.setPostcode(rs.getString("postcode"));
			mdto.setAddress(rs.getString("address"));
			mdto.setType(rs.getInt("type"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mdto;
	}//setCrowdDTO(ResultSet rs)
	
	// getting memberno with id.
	public int getMemberNo(String mid) {
		int memberno=0;
		try {
			con = getConnection();
			sql = "select memberno from member where id = '"+mid+"'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) memberno = rs.getInt("memberno");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);			
		}
		return memberno;
	}//getMemberNo(String mid)
		
}//class MemberDAO
