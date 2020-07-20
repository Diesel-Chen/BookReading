package vo;

public class Admin {
	private int aid;
	private String ausername;
	private String apassword;
	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAusername() {
		return ausername;
	}

	public void setAusername(String ausername) {
		this.ausername = ausername;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", ausername=" + ausername + ", apassword=" + apassword + "]";
	}

}
