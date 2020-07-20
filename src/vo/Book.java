package vo;

import java.util.Date;

public class Book {
	private int bid;
	private String bname;
	private String bimage;
	private String bauthor;
	private String bpress;
	private Date bpbtime;
	private int bpage;
	private double bprice;
	private String bcontent;
	private String bauthordesc;
	private Date bdate;
	private int is_hot;
	private int cid;
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
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBpress() {
		return bpress;
	}
	public void setBpress(String bpress) {
		this.bpress = bpress;
	}
	public Date getBpbtime() {
		return bpbtime;
	}
	public void setBpbtime(Date bpbtime) {
		this.bpbtime = bpbtime;
	}
	public int getBpage() {
		return bpage;
	}
	public void setBpage(int bpage) {
		this.bpage = bpage;
	}
	public double getBprice() {
		return bprice;
	}
	public void setBprice(double bprice) {
		this.bprice = bprice;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBauthordesc() {
		return bauthordesc;
	}
	public void setBauthordesc(String bauthordesc) {
		this.bauthordesc = bauthordesc;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(int is_hot) {
		this.is_hot = is_hot;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public Book(int bid, String bname, String bimage, String bauthor, String bpress, Date bpbtime, int bpage,
			double bprice, String bcontent, String bauthordesc, Date bdate, int is_hot, int cid) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bimage = bimage;
		this.bauthor = bauthor;
		this.bpress = bpress;
		this.bpbtime = bpbtime;
		this.bpage = bpage;
		this.bprice = bprice;
		this.bcontent = bcontent;
		this.bauthordesc = bauthordesc;
		this.bdate = bdate;
		this.is_hot = is_hot;
		this.cid = cid;
	}
	public Book() {
		// TODO Auto-generated constructor stub
	}
	
	public Book(int bid, String bname, String bauthor, String bpress, Date bpbtime, int bpage, double bprice,
			String bcontent, String bauthordesc, int is_hot, int cid) {
		super();
		this.bid = bid;
		this.bname = bname;
		this.bauthor = bauthor;
		this.bpress = bpress;
		this.bpbtime = bpbtime;
		this.bpage = bpage;
		this.bprice = bprice;
		this.bcontent = bcontent;
		this.bauthordesc = bauthordesc;
		this.is_hot = is_hot;
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "book [bid=" + bid + ", bname=" + bname + ", bimage=" + bimage + ", bauthor=" + bauthor + ", bpress="
				+ bpress + ", bpbtime=" + bpbtime + ", bpage=" + bpage + ", bprice=" + bprice + ", bcontent=" + bcontent
				+ ", bauthordesc=" + bauthordesc + ", bdate=" + bdate + ", is_hot=" + is_hot + ", cid=" + cid + "]";
	}
	
}
