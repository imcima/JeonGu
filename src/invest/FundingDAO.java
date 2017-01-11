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

import bean.FundingDto;
import bean.ProductDto;


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
			fdto.setQty(rs.getInt("qty"));
			fdto.setState(rs.getInt("state"));
			
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
			sql = "select * from funding where memberno = "+memberno;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) fdto=setFundingDto(rs);
		} catch (Exception e) {
			System.out.println("FundingDAO getContent() 에러 ");
			e.printStackTrace();			
		} finally {
			freeConnection(con, pstmt, rs);			
		}
		return fdto;
	}//getContent(String id)
	
	public void payFunding(int croid, int qty, String id){
		try {
			con = getConnection();
			MemberDAO mdao = new MemberDAO();
			int memberno = mdao.getMemberNo(id);
			
			ProductDAO pdao = new ProductDAO();
			ProductDto pdto = pdao.getContent(croid);
			
			sql = "insert into funding(croid, prodid, memberno, date, invmoney, qty, state) "
					+ "values (?,?,?,now(),?,?,0)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, croid);
			pstmt.setInt(2, pdto.getProid());
			pstmt.setInt(3, memberno);
			pstmt.setInt(4, pdto.getPrice()*qty);
			pstmt.setInt(5, qty);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);
		}
	}//payFunding(int croid, int qty, String id)
	public List<FundingDto> getFundingList(int croid, String id) {
		List<FundingDto> flist = new ArrayList<>();
		System.out.println("getFundingList 진입");
		try {
			
			con = getConnection();
			MemberDAO mdao = new MemberDAO();
			int memberno = mdao.getMemberNo(id);
			
			sql = "select * from funding where croid=? and memberno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, croid);
			pstmt.setInt(2, memberno);			
			rs = pstmt.executeQuery();
						
			while (rs.next()) flist.add(setFundingDto(rs));
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);
		}
		
		return flist;
	}//getFundingList(int croid, String id)
	
	public int cancelFunding(int funno) {
		int croid=0;
		try {
			con = getConnection();
			sql = "select croid from funding where funno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, funno);
			rs = pstmt.executeQuery();
			if(rs.next()) croid = rs.getInt("croid");
			
			sql = "delete from funding where funno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, funno);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();			
		} finally {
			freeConnection(con, pstmt, rs);
		}
		return croid;
	}//cancelFunding(int funno)
	
}//class FunddingDAO
