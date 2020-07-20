package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDao;
import dao.CategoryDao;
import dao.CommentDao;
import vo.Book;
import vo.Category;
import vo.Comment;

public class BookServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("findBooksByCid".equals(method)){
			findBooksByCid(request,response);
		}else if("findBooksByBid".equals(method)){
			findBooksByBid(request,response);
		}
	}

	public void findBooksByBid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int bid = Integer.parseInt(request.getParameter("bid"));
			BookDao bkDao = new BookDao();
			
			Book book = bkDao.findBooksByBid(bid);
			request.setAttribute("book", book);
			
			//某本书的评论
			CommentDao ctDao = new CommentDao();
			
			List<Comment> list = ctDao.findCommentsByBid(bid);
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("/jsp/book_info.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void findBooksByCid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int cid = Integer.parseInt(request.getParameter("cid"));
			BookDao bkDao = new BookDao();
			List<Book> list = bkDao.findBooksByCid(cid);
			request.setAttribute("booksbycid", list);
			//根据cid查询cname
			CategoryDao ctDao = new CategoryDao();
			Category category = ctDao.findCategoryBycid(cid);
			request.setAttribute("c", category);
			request.getRequestDispatcher("/jsp/book_list.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
