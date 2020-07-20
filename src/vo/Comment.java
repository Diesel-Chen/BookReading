package vo;

import java.util.Date;

public class Comment {
	private int coid;
	private String codesc;
	private String uname;
	private Date udate;
	private int bid;
	private String bname;
	public int getCoid() {
		return coid;
	}
	public void setCoid(int coid) {
		this.coid = coid;
	}
	public String getCodesc() {
		return codesc;
	}
	public void setCodesc(String codesc) {
		this.codesc = codesc;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Date getUdate() {
		return udate;
	}
	public void setUdate(Date udate) {
		this.udate = udate;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	
	
	public Comment(String codesc, String uname, Date udate, int bid, String bname) {
		super();
		this.codesc = codesc;
		this.uname = uname;
		this.udate = udate;
		this.bid = bid;
		this.bname = bname;
	}
	public Comment(int coid, String codesc, String uname, Date udate, int bid, String bname) {
		super();
		this.coid = coid;
		this.codesc = codesc;
		this.uname = uname;
		this.udate = udate;
		this.bid = bid;
		this.bname = bname;
	}
	@Override
	public String toString() {
		return "Comment [coid=" + coid + ", codesc=" + codesc + ", uname=" + uname + ", udate=" + udate + ", bid=" + bid
				+ ", bname=" + bname + "]";
	}
	public Comment() {
		// TODO Auto-generated constructor stub
	}
}
