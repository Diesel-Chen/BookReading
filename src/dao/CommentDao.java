package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import utils.JDBCUtils;
import vo.Comment;

public class CommentDao {

	public List<Comment> findCommentsByBid(int bid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Comment> list=new ArrayList<Comment>();
		String sql = "select * from comment where bid =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bid);
		ResultSet rs = pstmt.executeQuery();
		Comment comment = null;
		while(rs.next()){
			comment = new Comment();
			comment.setCoid(rs.getInt("coid"));
			comment.setCodesc(rs.getString("codesc"));
			comment.setUname(rs.getString("uname"));
			comment.setUdate(rs.getDate("udate"));
			comment.setBid(rs.getInt("bid"));
			comment.setBname(rs.getString("bname"));
			list.add(comment);
		}
		JDBCUtils.close(rs, pstmt, conn);
		return list;
	}

	public boolean commentAdd(Comment comment) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "insert into comment values(null,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, comment.getCodesc());
		pstmt.setString(2, comment.getUname());
		pstmt.setDate(3, new java.sql.Date(comment.getUdate().getTime()));
		pstmt.setInt(4, comment.getBid());
		pstmt.setString(5, comment.getBname());
		int flag = pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
		if(flag>0){
			return true;
		}else{
			return false;
		}
	}

	public List<Comment> findAllComments(int currentPage, int pageSize) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Comment> list = new ArrayList<Comment>();
		String sql ="select * from comment limit ?,?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, (currentPage-1)*pageSize);
		pstmt.setInt(2, pageSize);
		ResultSet rs = pstmt.executeQuery();
		Comment comment = null;
		while(rs.next()){
			comment = new Comment();
			comment.setCoid(rs.getInt("coid"));
			comment.setCodesc(rs.getString("codesc"));
			comment.setUname(rs.getString("uname"));
			comment.setUdate(rs.getDate("udate"));
			comment.setBid(rs.getInt("bid"));
			comment.setBname(rs.getString("bname"));
			list.add(comment);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public void commentDeleteByCoid(int coid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql ="delete from comment where coid =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, coid);
		pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);	
	}

	public int findAllCounts() throws SQLException {
		int i = 0;
		Connection conn = JDBCUtils.getConnection();
		String sql = "select * from comment";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			i++;
		}
		return i;
	}

}
