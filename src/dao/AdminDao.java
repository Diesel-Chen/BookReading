package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utils.JDBCUtils;
import vo.Admin;

public class AdminDao {

	public Admin findAdminByUsernameAndPassword(String username, String password) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "select * from admin where ausername=? and apassword=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		ResultSet rs = pstmt.executeQuery();
		Admin admin = null;
		if(rs.next()){
			admin = new Admin();
			admin.setAid(rs.getInt("aid"));
			admin.setAusername(rs.getString("ausername"));
			admin.setAusername(rs.getString("apassword"));
		}
		JDBCUtils.close(pstmt, conn);
		return admin;
	}

}
