package invest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CrowdDAO {
	
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
	
	private CrowdDTO setCrowdDTO(ResultSet rs){
		CrowdDTO cdto = new CrowdDTO();		
		try {
			cdto.setCroid(rs.getInt("croid"));
			cdto.setSellerid(rs.getInt("sellerid"));
			cdto.setCateno(rs.getInt("cateno"));
			cdto.setSellername(rs.getString("sellername"));
			cdto.setCroname(rs.getString("croname"));
			cdto.setOpendate(rs.getDate("opendate"));
			cdto.setClosedate(rs.getDate("closedate"));
			cdto.setGoalmoney(rs.getInt("goalmoney"));
			cdto.setTotal(rs.getInt("total"));
			cdto.setState(rs.getInt("state"));
			cdto.setTitle(rs.getString("title"));
			cdto.setContent(rs.getString("content"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cdto;
	}//setCrowdDTO(ResultSet rs)

	public List<CrowdDTO> getCrowdList() {
		List<CrowdDTO> list = new ArrayList<CrowdDTO>();
		try {
			con = getConnection();
			sql = "select * from crowd";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			CrowdDTO cdto = null;
			while(rs.next()){
				cdto = setCrowdDTO(rs);
				list.add(cdto);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);			
		}
		return list;
	}//getCrowdList()	
	
	public CrowdDTO getContent(int croid) {
		
		CrowdDTO cdto = new CrowdDTO();
		
		sql = "select * from crowd where croid = "+croid;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) cdto = setCrowdDTO(rs);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);			
		}		
		return cdto;
	}//getContent(int croid)
	
}//class CrowdDAO

























