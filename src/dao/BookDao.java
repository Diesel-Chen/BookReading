package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import utils.JDBCUtils;
import vo.Book;

public class BookDao {

	public List<Book> findHots() throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Book> list=new ArrayList<Book>();
		String sql = "SELECT * FROM book  WHERE is_hot =1  ORDER BY bdate DESC LIMIT 0,6";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		while(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
			list.add(book);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public List<Book> findNews() throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Book> list=new ArrayList<Book>();
		String sql = "SELECT * FROM book  ORDER BY bdate DESC LIMIT 0,6";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		while(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
			list.add(book);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public List<Book> findpaihangbang() throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Book> list=new ArrayList<Book>();
		String sql ="SELECT * FROM book WHERE bid IN (SELECT  bid FROM COMMENT GROUP BY bid ORDER BY COUNT(*) DESC)  LIMIT 0,7";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		while(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
			list.add(book);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public List<Book> findBooksByCid(int cid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Book> list=new ArrayList<Book>();
		String sql ="SELECT * FROM book WHERE cid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cid);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		while(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
			list.add(book);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public Book findBooksByBid(int bid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql ="SELECT * FROM book WHERE bid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bid);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		if(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
		}
		JDBCUtils.close(pstmt, conn);
		// TODO Auto-generated method stub
		return book ;
	}

	public List<Book> findAllBooksByPage(int currentPage, int pageSize) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		List<Book> list=new ArrayList<Book>();
		String sql ="SELECT * FROM book limit ?,? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, (currentPage-1)*pageSize);
		pstmt.setInt(2, pageSize);
		ResultSet rs = pstmt.executeQuery();
		Book book =null;
		while(rs.next()){
			book = new Book();
			book.setBid(rs.getInt("bid"));
			book.setBname(rs.getString("bname"));
			book.setBimage(rs.getString("bimage"));
			book.setBauthor(rs.getString("bauthor"));
			book.setBpress(rs.getString("bpress"));
			book.setBpbtime(rs.getDate("bpbtime"));
			book.setBpage(rs.getInt("bpage"));
			book.setBprice(rs.getDouble("bprice"));
			book.setBcontent(rs.getString("bcontent"));
			book.setBauthordesc(rs.getString("bauthordesc"));
			book.setBdate(rs.getDate("bdate"));
			book.setIs_hot(rs.getInt("is_hot"));
			book.setCid(rs.getInt("cid"));
			list.add(book);
		}
		JDBCUtils.close(pstmt, conn);
		return list;
	}

	public void bookAdd(Book book) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql ="insert into book values(null,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, book.getBname());
		pstmt.setString(2, book.getBimage());
		pstmt.setString(3, book.getBauthor());
		pstmt.setString(4, book.getBpress());
		pstmt.setDate(5, new java.sql.Date(book.getBpbtime().getTime()));
		pstmt.setInt(6, book.getBpage());
		pstmt.setDouble(7, book.getBprice());
		pstmt.setString(8,book.getBcontent());
		pstmt.setString(9, book.getBauthordesc());
		pstmt.setDate(10, new java.sql.Date(book.getBdate().getTime()));
		pstmt.setInt(11, book.getIs_hot());
		pstmt.setInt(12, book.getCid());
		pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
	}

	public void bookUpdate(Book book) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "update book set bname=?,bauthor=?,bpress=?,bpbtime=?,bpage=?,bprice=?,bcontent=?,bauthordesc=?,is_hot=?,cid=? where bid=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, book.getBname());
		pstmt.setString(2, book.getBauthor());
		pstmt.setString(3, book.getBpress());
		pstmt.setDate(4, new java.sql.Date(book.getBpbtime().getTime()));
		pstmt.setInt(5, book.getBpage());
		pstmt.setDouble(6, book.getBprice());
		pstmt.setString(7,book.getBcontent());
		pstmt.setString(8, book.getBauthordesc());
		pstmt.setInt(9, book.getIs_hot());
		pstmt.setInt(10, book.getCid());
		pstmt.setInt(11, book.getBid());
		pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
	}

	public void bookDeleteByBid(int bid) throws SQLException {
		Connection conn = JDBCUtils.getConnection();
		String sql = "delete from book where bid =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,bid);
		pstmt.executeUpdate();
		JDBCUtils.close(pstmt, conn);
	}

	public int findAllCounts() throws SQLException {
		int i = 0;
		Connection conn = JDBCUtils.getConnection();
		String sql = "select * from book";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			i++;
		}
		return i;
	}
}
