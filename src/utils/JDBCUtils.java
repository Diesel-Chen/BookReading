package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtils {
	private static final String driver="com.mysql.jdbc.Driver";
	private static final String url="jdbc:mysql://localhost:3306/book?characterEncoding=utf8";
	private static final String user="root";
	private static final String password="root";
	
	public static Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {			
			System.out.println("驱动程序加载有误");
		}	
		try {
			conn = DriverManager.getConnection(url,user,password);
			//conn = DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {	
			e.printStackTrace();
//			System.out.println("数据库连接失败");
		}
		return conn;
	}
	/**
	 * 关闭rs，pstmt和conn三个资源，适用于select
	 * @param rs
	 * @param pstmt
	 * @param conn
	 */
	public static void close(ResultSet rs,PreparedStatement pstmt,Connection conn){
		try {
			if(rs!=null)  	rs.close();				
		} catch (SQLException e) {
			System.out.println("关闭rs失败");
		}
		close(pstmt,conn);
	}
	
	/**
	 * 关闭pstmt和conn两个资源，适用于insert，update，delete
	 * @param pstmt
	 * @param conn
	 */
	
	public static void close(PreparedStatement pstmt,Connection conn){
		try {			
			if(pstmt!=null)  pstmt.close();
				
		} catch (SQLException e) {
			System.out.println("关闭pstmt失败");
		}		
			try {
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				System.out.println("关闭conn失败");
			}	
	}

}
