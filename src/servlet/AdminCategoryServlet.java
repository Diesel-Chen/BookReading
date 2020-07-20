package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDao;
import vo.Category;


public class AdminCategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("findAllCats".equals(method)){
			findAllCats(request,response);
		}else if("categoryAdd".equals(method)){
			categoryAdd(request,response);
		}else if("findCategoryByCid".equals(method)){
			findCategoryByCid(request,response);
		}else if("categoryUpdateByCid".equals(method)){
			categoryUpdateByCid(request,response);
		}else if("categoryDeleteByCid".equals(method)){
			categoryDeleteByCid(request,response);
		}else if("findAllCatsInAdd".equals(method)){
			findAllCatsInAdd(request,response);
		}
	}

	public void findAllCatsInAdd(HttpServletRequest request, HttpServletResponse response) {
		try {
			CategoryDao ctDao = new CategoryDao();
			List<Category> list = ctDao.findAllCats();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/book/add.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void categoryDeleteByCid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int cid  = Integer.parseInt(request.getParameter("cid"));
			CategoryDao ctDao = new CategoryDao();
			boolean flag = ctDao.categoryDeleteByCid(cid);
			if(flag == true){
				response.sendRedirect("/Book/AdminCategoryServlet?method=findAllCats");
			}else{
				request.setAttribute("msg", "删除分类失败，请重新删除");
				request.getRequestDispatcher("/admin/info.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void categoryUpdateByCid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int cid  = Integer.parseInt(request.getParameter("cid"));
			String cname = request.getParameter("cname");
			CategoryDao ctDao = new CategoryDao();
			boolean flag = ctDao.categoryUpdateByCid(cid,cname);
			if(flag == true){
				response.sendRedirect("/Book/AdminCategoryServlet?method=findAllCats");
			}else{
				request.setAttribute("msg", "修改分类失败，请重新添加");
				request.getRequestDispatcher("/admin/info.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public void findCategoryByCid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int cid  = Integer.parseInt(request.getParameter("cid"));
			CategoryDao ctDao = new CategoryDao();
			Category category = ctDao.findCategoryBycid(cid);
			request.setAttribute("category", category);
			request.getRequestDispatcher("/admin/category/edit.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void categoryAdd(HttpServletRequest request, HttpServletResponse response) {
		try {
			String cname = request.getParameter("cname");
			CategoryDao ctDao = new CategoryDao();
			boolean flag = ctDao.categoryAdd(cname);
			if(flag == true){
				response.sendRedirect("/Book/AdminCategoryServlet?method=findAllCats");	
			}else{
				request.setAttribute("msg", "添加分类失败，请重新添加");
				request.getRequestDispatcher("/admin/info.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void findAllCats(HttpServletRequest request, HttpServletResponse response) {
		try {
			CategoryDao ctDao = new CategoryDao();
			List<Category> list = ctDao.findAllCats();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/category/list.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
