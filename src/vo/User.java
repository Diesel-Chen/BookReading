package vo;

import java.util.Date;

public class User {
	private int uid;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String name;
	private Date birthday;
	private String sex;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", phone=" + phone + ", name=" + name + ", birthday=" + birthday + ", sex=" + sex + "]";
	}
	
	public User(String username, String password, String email, String phone, String name, Date birthday, String sex) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
	}
	
	public User(int uid, String username, String password, String email, String phone, String name, Date birthday,
			String sex) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.name = name;
		this.birthday = birthday;
		this.sex = sex;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	
}
