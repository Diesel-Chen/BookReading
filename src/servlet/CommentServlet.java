package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDao;
import dao.CommentDao;
import vo.Book;
import vo.Comment;
import vo.User;

/**
 * Servlet implementation class CommentServlet
 */
public class CommentServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("commentUI".equals(method)){
			commentUI(request,response);
		}else if("commentAdd".equals(method)){
			commentAdd(request,response);
		}
	}

	public void commentAdd(HttpServletRequest request, HttpServletResponse response) {

		try {
			String flag = request.getParameter("flag");
			String codesc = request.getParameter("codesc");
			String bname = request.getParameter("bname");
			int bid = Integer.parseInt(request.getParameter("bid"));
			User user = (User)request.getSession().getAttribute("user");
			String username = user.getUsername();
			String name = user.getName();
			Comment comment = null;
			if("1".equals(flag)){
				//没昵称的时候用 用户名
				comment = new Comment(codesc,username,new Date(),bid,bname);
			}else{
				comment = new Comment(codesc,name,new Date(),bid,bname);
			}
			CommentDao ctDao = new CommentDao();
			boolean flag1 = ctDao.commentAdd(comment);
			if(flag1==true){
				request.setAttribute("msg", "添加评论成功！");
				request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
			}else{
				request.setAttribute("msg", "添加评论失败，请重新添加");
				request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		
		
		
	}

	public void commentUI(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int bid = Integer.parseInt(request.getParameter("bid"));
			
			User user = (User) request.getSession().getAttribute("user");
			
			BookDao bkDao =new BookDao();
			Book book = bkDao.findBooksByBid(bid);
			if(user==null){
				request.getRequestDispatcher("/jsp/comment_info.jsp").forward(request, response);
			}else{
				request.setAttribute("book", book);
				request.getRequestDispatcher("/jsp/addcomment.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
