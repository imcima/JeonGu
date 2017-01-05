package bean;

import java.sql.Date;

public class FundingDto {
//	funno	int(11)
//	croid	int(11)
//	prodid	int(11)
//	memberno	int(11)
//	date	date
//	invmoney	int(11)
//	qty	int(3)
//	state	int(2)
	private int funno;
	private int croid;
	private int prodid;
	private int memberno;
	private Date date;
	private int invmoney;
	private int qty;
	private int state;
	
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
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
