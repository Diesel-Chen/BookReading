package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import utils.JDBCUtils;
import vo.Category;

public class CategoryDao {

	public List<Category> findAllCats() throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Category> list=new ArrayList<Category>();
		String sql = "select * from category";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		Category category = null;
		while(rs.next()){
			category = new Category();
			category.setCid(rs.getInt("cid"));
			category.setCname(rs.getString("cname"));
			list.add(category);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public Category findCategoryBycid(int cid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "select * from category where cid =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cid);
		ResultSet rs = pstmt.executeQuery();
		Category category = null;
		if(rs.next()){
			category = new Category();
			category.setCid(rs.getInt("cid"));
			category.setCname(rs.getString("cname"));
		}
		JDBCUtils.close(pstmt, conn);
		return category;
	}

	public boolean categoryAdd(String cname) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "insert into category values(null,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cname);
		int i = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}

	public boolean categoryUpdateByCid(int cid, String cname) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "update category set cname=? where cid = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cname);
		pstmt.setInt(2, cid);
		int i = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}

	public boolean categoryDeleteByCid(int cid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "delete from category where cid =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cid);
		int i = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	
}
