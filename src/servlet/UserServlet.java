package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import vo.User;


public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("userRegister".equals(method)){
			userRegister(request,response);
		}else if("userLogin".equals(method)){
			userLogin(request,response);
		}else if("userUpdate".equals(method)){
			userUpdate(request,response);
		}else if("userDelete".equals(method)){
			userDelete(request,response);
		}else if("userUpdatePassword".equals(method)){
			userUpdatePassword(request,response);
		}
	}
	public void userUpdatePassword(HttpServletRequest request, HttpServletResponse response) {
		try {
			User user =(User) request.getSession().getAttribute("user");
			int uid = user.getUid();
			String password = request.getParameter("password");
			UserDao userDao = new UserDao();
			boolean flag = userDao.userUpdatePassword(password,uid);
			if(flag ==true){
				request.setAttribute("msg", "修改密码成功,请重新登录");
				request.getSession().removeAttribute("user");
			}else{
				request.setAttribute("msg", "修改密码失败,请重试");
			}
			request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void userDelete(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			request.getSession().removeAttribute("user");
			
			response.sendRedirect("https://dieselchen.top"+request.getContextPath()+"/index.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void userUpdate(HttpServletRequest request, HttpServletResponse response) {
		try {
			String phone = request.getParameter("phone");
			String name = request.getParameter("name");
			String birthday = request.getParameter("birthday");
			String sex = request.getParameter("sex");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(birthday);
			User user =(User) request.getSession().getAttribute("user");
			int uid = user.getUid();
			String username = user.getUsername();
			String password = user.getPassword();
			String email = user.getEmail();
			User user02 = new User(uid,username,password,email,phone,name,date,sex);
			UserDao userDao = new UserDao();
			boolean flag = userDao.userUpdate(user02);
			if(flag ==true){
				request.setAttribute("msg", "添加信息成功");
				request.getSession().setAttribute("user", user02);
			}else{
				request.setAttribute("msg", "添加信息失败，请重新添加");
			}
			request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public void userLogin(HttpServletRequest request, HttpServletResponse response) {
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			UserDao userDao = new UserDao();
			User user = userDao.userLogin(username,password);

			request.getSession().setAttribute("user", user);

			if(user!=null){

				response.sendRedirect("https://dieselchen.top"+request.getContextPath()+"/index.jsp");
			}else{
				request.setAttribute("msg", "用户名或者密码错误，请重新登录");
				request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void userRegister(HttpServletRequest request, HttpServletResponse response) {
		boolean flag = false;
		try {
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			User user = new User(username,password,email,null,null,null,null);
			UserDao userDao = new UserDao();
			flag = userDao.userRegister(user);
			if(flag == true){
				request.setAttribute("msg", "注册成功，请登录");
			}else{
				request.setAttribute("msg", "注册失败，请重新注册");
			}
			request.getRequestDispatcher("/jsp/info.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
