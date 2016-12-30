package bean;

import java.sql.Date;

public class CrowdDto {
	private int croid;
	private int sellerno;
	private int cateno;
	private String sellername;
	private String croname;
	private Date opendate;
	private Date closedate;
	private int goalmoney;
	private int total;
	private int state;
	private String title;
	private String content;
	private String sellerid;
	
	public int getCroid() {
		return croid;
	}
	public void setCroid(int croid) {
		this.croid = croid;
	}
	public int getSellerno() {
		return sellerno;
	}
	public void setSellerno(int sellerno) {
		this.sellerno = sellerno;
	}
	public int getCateno() {
		return cateno;
	}
	public void setCateno(int cateno) {
		this.cateno = cateno;
	}
	public String getSellername() {
		return sellername;
	}
	public void setSellername(String sellername) {
		this.sellername = sellername;
	}
	public String getCroname() {
		return croname;
	}
	public void setCroname(String croname) {
		this.croname = croname;
	}
	public Date getOpendate() {
		return opendate;
	}
	public void setOpendate(Date opendate) {
		this.opendate = opendate;
	}
	public Date getClosedate() {
		return closedate;
	}
	public void setClosedate(Date closedate) {
		this.closedate = closedate;
	}
	public int getGoalmoney() {
		return goalmoney;
	}
	public void setGoalmoney(int goalmoney) {
		this.goalmoney = goalmoney;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSellerid() {
		return sellerid;
	}
	public void setSellerid(String sellerid) {
		this.sellerid = sellerid;
	}
	
}
