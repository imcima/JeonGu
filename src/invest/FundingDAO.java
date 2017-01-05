package invest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.FundingDto;


public class FundingDAO {
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
	
	private FundingDto setFundingDto(ResultSet rs){
		FundingDto fdto = new FundingDto();		
		try {
//			funno	int(11)
//			croid	int(11)
//			prodid	int(11)
//			memberno	int(11)
//			date	date
//			invmoney	int(11)
//			qty	int(3)
//			state	int(2)
			fdto.setFunno(rs.getInt("funno"));
			fdto.setCroid(rs.getInt("croid"));
			fdto.setProdid(rs.getInt("prodid"));
			fdto.setMemberno(rs.getInt("memberno"));
			fdto.setDate(rs.getDate("date"));
			fdto.setInvmoney(rs.getInt("invmoney"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return fdto;
	}//setProductDTO(ResultSet rs)
	
	public FundingDto getContent(String id) {
		FundingDto fdto = new FundingDto();
		try {
			con = getConnection();
			MemberDAO mdao = new MemberDAO();
			int memberno = mdao.getMemberNo(id);
			sql = "select * from fundding where memberno = "+memberno;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) fdto=setFundingDto(rs);
		} catch (Exception e) {
			e.printStackTrace();			
		} finally {
			freeConnection(con, pstmt, rs);			
		}
		return fdto;
	}//getContent(String id)
	
	
	
}//class FunddingDAO
