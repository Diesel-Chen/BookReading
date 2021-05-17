package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDao;
import vo.Admin;

public class AdminServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("adminLogin".equals(method)){
			adminLogin(request,response);
		}else if("adminDelete".equals(method)){
			adminDelete(request,response);
		}
	}

	public void adminDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().invalidate();
		response.sendRedirect("https://dieselchen.top"+request.getContextPath()+"/admin/index.jsp");
	}


	public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			AdminDao adminDao = new AdminDao();
			Admin admin = adminDao.findAdminByUsernameAndPassword(username,password);
			if(admin!=null){
				request.getSession().setAttribute("admin", admin);
				request.getRequestDispatcher("/admin/home.jsp").forward(request, response);
			}else{
				request.setAttribute("msg", "用户名密码错误，请重新输入");
				request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
