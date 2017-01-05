package db.crowd;

import java.sql.*;
import java.text.*;
import java.util.*;

import javax.naming.*;
import javax.servlet.http.*;
import javax.sql.*;

import bean.*;

public class CrowdDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs =  null;
	SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	
//////////////////////////////////////////////////////////////////////////////
	
	/*DB연결 메소드*/
	public void getCon(){
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/pro");
			con =  ds.getConnection(); //DB연결
		} catch (Exception e) {
			System.out.println("CrowdDAO.java getCon() : "+e);
		}
	}

//////////////////////////////////////////////////////////////////////////////
	
	/*DB 해제 메소드*/
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs){
		if(rs	!=null){try {rs.	close();} catch (Exception e2) {}};
		if(con	!=null){try {con.	close();} catch (Exception e2) {}};
		if(pstmt!=null){try {pstmt.	close();} catch (Exception e2) {}};
	}	
	public void close(Connection con, PreparedStatement pstmt){
		if(con	!=null){try {con.	close();} catch (Exception e2) {}};
		if(pstmt!=null){try {pstmt.	close();} catch (Exception e2) {}};
	}
	
//////////////////////////////////////////////////////////////////////////////	

	public String insertCrowd(HttpServletRequest req) {
//		String sql="insert into crowd"
//				+ "(sellerid, cateno, sellername, croname, opendate, closedate, goalmoney, total, state, title, content)"
//				+ "values(1, 1, 'fm', 'new mac book', now(), now(), 5000, 0, 1, 'wow book', '123abc')";
		int result=0;
		String sql="insert into crowd"
				+ "(sellerid, cateno, sellername, croname, opendate, closedate, goalmoney, total, state, title, content, sellerno)"
				+ "values(?, ?, ?, ?, ?, str_to_date(?,'%Y-%m-%d'), ?, 0, 0, ?, ?, ?)";
		String sqlGetId="select max(croid) from crowd";
		String croid="";
		try {
			getCon();
			req.setCharacterEncoding("utf-8");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, req.getParameter("sellerid"));
			pstmt.setInt(2, Integer.parseInt(req.getParameter("cateno")));
			pstmt.setString(3, req.getParameter("sellername"));
			pstmt.setString(4, req.getParameter("croname"));
			pstmt.setString(5, req.getParameter("opendate"));
			pstmt.setString(6, req.getParameter("closedate"));
			pstmt.setInt(7, Integer.parseInt(req.getParameter("goalmoney")));
			pstmt.setString(8, req.getParameter("title"));
			pstmt.setString(9, req.getParameter("content"));
			pstmt.setInt(10, Integer.parseInt(req.getParameter("sellerno")));
			result = pstmt.executeUpdate();			
			
			pstmt = con.prepareStatement(sqlGetId);
			rs=pstmt.executeQuery();
			rs.next();
			croid=rs.getString(1);
			
		} catch (Exception e) {
			System.out.println("CrowdDAO.java insertCrowd(HttpServletRequest req) : "+e);
		} finally {
			close(con, pstmt);
		}
		
		
		return croid;
	}	
	
//////////////////////////////////////////////////////////////////////////////

	public String insertProd(HttpServletRequest req) {
		int result=0;
		String sql="insert into product"
				+ "(croid, cateno, prodName, sellerID, sellerName, date, qty, price, afterprice, prodInfo, img)"
				+ "values(?,?,?,?,?,now(),?,?,?,?,?)";
		String sqlGetId="select max(croid) from crowd";
		String croid="";
		try {
			getCon();
			req.setCharacterEncoding("utf-8");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, req.getParameter("croid"));
			pstmt.setInt(2, Integer.parseInt(req.getParameter("cateno")));
			pstmt.setString(3, req.getParameter("prodName"));
			pstmt.setString(4, req.getParameter("sellerid"));
			pstmt.setString(5, req.getParameter("sellername"));
			pstmt.setInt(6, Integer.parseInt(req.getParameter("qty")));
			pstmt.setInt(7, Integer.parseInt(req.getParameter("price")));
			pstmt.setInt(8, Integer.parseInt(req.getParameter("afterprice")));
			pstmt.setString(9, req.getParameter("content"));
			pstmt.setString(10, req.getParameter("img"));
			result = pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sqlGetId);
			rs=pstmt.executeQuery();
			rs.next();
			croid=rs.getString(1);
			
		} catch (Exception e) {
			System.out.println("CrowdDAO.java insertProd(HttpServletRequest req) : "+e);
		} finally {
			close(con, pstmt);
		}
		
		
		return croid;
	}

		
//////////////////////////////////////////////////////////////////////////////
	
	
	public void modiCrowd(int croid){
		String sql ="delete from crowd where crodid="+croid;
		try {
			getCon();
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("CrowdDAO.java modiCrowd : "+e);
		} finally {
			close(con, pstmt);
		}
		
	}
	
//////////////////////////////////////////////////////////////////////////////
	
	public List<CrowdDto> getCroList(){
		CrowdDto dto = new CrowdDto();
		List<CrowdDto> list = new ArrayList<CrowdDto>();		
		getCon();
		String sql = "select * from crowd";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				dto.setCroid(Integer.parseInt(rs.getString(1)));
			}
		} catch (Exception e) {
			System.out.println("CrowdDAO.java getCroList() : "+e);
		}
		
		
		return list;		
	}
	
	
}
