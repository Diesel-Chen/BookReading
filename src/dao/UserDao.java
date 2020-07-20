package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.JDBCUtils;
import vo.User;

public class UserDao {
	

	public boolean userRegister(User user) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "insert into user values(null,?,?,?,?,?,?,?)";	
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getEmail());
		pstmt.setString(4, user.getPhone());
		pstmt.setString(5, user.getName());
		pstmt.setDate(6, (Date) user.getBirthday());
		pstmt.setString(7, user.getSex());
		int result = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(result>0){
			return true;
		}else{
			return false;
		}
	}


	
	public User userLogin(String username, String password) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "select * from user where username=? and password=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		ResultSet rs = pstmt.executeQuery();
		User user =null;
		while(rs.next()){
			user = new User();
			user.setUid(rs.getInt("uid"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setPhone(rs.getString("phone"));
			user.setName(rs.getString("name"));
			user.setBirthday(rs.getDate("birthday"));
			user.setSex(rs.getString("sex"));
		}
		JDBCUtils.close(rs, pstmt, conn);
		return user;
	}

	public boolean userUpdate(User user02) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "update user set username=?,password=?,email=?,phone=?,name=?,birthday=?,sex=? where uid=?" ;
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user02.getUsername());
		pstmt.setString(2, user02.getPassword());
		pstmt.setString(3, user02.getEmail());
		pstmt.setString(4, user02.getPhone());
		pstmt.setString(5, user02.getName());
		pstmt.setDate(6, new java.sql.Date(user02.getBirthday().getTime()));
		pstmt.setString(7, user02.getSex());
		pstmt.setInt(8, user02.getUid());
		int result = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(result>0){
			return true;
		}else{
			return false;
		}
	}

	public boolean userUpdatePassword(String password, int uid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql ="update user set password =? where uid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setInt(2,uid);
		int result = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(result>0){
			return true;
		}else{
			return false;
		}
	}
}
