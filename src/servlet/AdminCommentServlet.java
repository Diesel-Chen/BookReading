package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CommentDao;
import vo.Comment;
import vo.Page;


public class AdminCommentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("findAllCommentsByPage".equals(method)){
			findAllCommentsByPage(request,response);
		}else if("commentDeleteByCoid".equals(method)){
			commentDeleteByCoid(request,response);
		}
	}

	public void commentDeleteByCoid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int coid = Integer.parseInt(request.getParameter("coid"));
			CommentDao ctDao = new CommentDao();
			ctDao.commentDeleteByCoid(coid);
			request.getRequestDispatcher("/AdminCommentServlet?method=findAllCommentsByPage&currentPage=1").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void findAllCommentsByPage(HttpServletRequest request, HttpServletResponse response) {
		try {
			//��ҳ��ѯ����
			int currentPage =Integer.parseInt(request.getParameter("currentPage"));
			int pageSize = 5;
			CommentDao ctDao = new CommentDao();
			List<Comment> list = ctDao.findAllComments(currentPage,pageSize);
			request.setAttribute("list", list);
			
			//��ѯ�ܼ�¼
			int totalRecord = ctDao.findAllCounts();
			int totalPage = totalRecord%pageSize == 0 ? totalRecord/pageSize : (totalRecord/pageSize) +1;
			String url = "AdminCommentServlet?method=findAllCommentsByPage";
			
			//��װҳ������ 4�� ��ǰҳ ����ҳ����ÿһҳ��ʾ�������ݣ��ܼ�¼ ,url
			Page page = new Page(currentPage,totalPage,pageSize,totalRecord,url);
			request.setAttribute("pageInfo", page);
			
			request.getRequestDispatcher("/admin/comment/list.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
