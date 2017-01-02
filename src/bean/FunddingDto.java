package bean;

import java.sql.Date;

public class FunddingDto {
	private int funno;
	private int croid;
	private int prodid;
	private int memberno;
	private Date date;
	private int invmoney;
	
	public int getFunno() {
		return funno;
	}
	public void setFunno(int funno) {
		this.funno = funno;
	}
	public int getCroid() {
		return croid;
	}
	public void setCroid(int croid) {
		this.croid = croid;
	}
	public int getProdid() {
		return prodid;
	}
	public void setProdid(int prodid) {
		this.prodid = prodid;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getInvmoney() {
		return invmoney;
	}
	public void setInvmoney(int invmoney) {
		this.invmoney = invmoney;
	}
}
