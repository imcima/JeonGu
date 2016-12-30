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

import bean.CrowdDto;

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
	
	private CrowdDto setCrowdDTO(ResultSet rs){
		CrowdDto cdto = new CrowdDto();		
		try {
			cdto.setCroid(rs.getInt("croid"));
			cdto.setSellerno(rs.getInt("sellerno"));
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
			cdto.setSellerid(rs.getString("sellerid"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cdto;
	}//setCrowdDTO(ResultSet rs)

	public List<CrowdDto> getCrowdList() {
		List<CrowdDto> list = new ArrayList<CrowdDto>();
		try {
			con = getConnection();
			sql = "select * from crowd";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			CrowdDto cdto = null;
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
	
	public CrowdDto getContent(int croid) {
		
		CrowdDto cdto = new CrowdDto();
		
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

























