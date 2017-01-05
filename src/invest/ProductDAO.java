package invest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.CrowdDto;
import bean.ProductDto;

public class ProductDAO {
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
	
	private ProductDto setProductDTO(ResultSet rs){
		ProductDto pdto = new ProductDto();		
		try {
//			prodid	int(11)
//			croid	int(11)
//			cateno	int(11)
//			prodName	varchar(50)
//			sellerID	varchar(20)
//			sellerName	varchar(15)
//			date	date
//			price	int(11)
//			afterprice	int(11)
//			prodInfo	text
//			img	varchar(15)
			pdto.setProid(rs.getInt("prodid"));
			pdto.setCroid(rs.getInt("croid"));
			pdto.setCateno(rs.getInt("cateno"));
			pdto.setProdName(rs.getString("prodName"));
			pdto.setSellerID(rs.getString("sellerID"));
			pdto.setSellerName(rs.getString("sellerName"));
			pdto.setDate(rs.getDate("date"));
//			pdto.setQty(rs.getInt("qty"));
			pdto.setPrice(rs.getInt("price"));
			pdto.setAfterprice(rs.getInt("afterprice"));
			pdto.setProdInfo(rs.getString("prodInfo"));
			pdto.setImg(rs.getString("img"));			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pdto;
	}//setProductDTO(ResultSet rs)
	
	public ProductDto getContent(int croid) {
		ProductDto pdto = new ProductDto();
		try {
			con = getConnection();
			sql = "select * from product where croid="+croid;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) pdto = setProductDTO(rs);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			freeConnection(con, pstmt, rs);
		}
		return pdto;
	}//getContent(int croid)
	
}//class ProductDAO
