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
import vo.Book;
import vo.Category;


public class IndexServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		try {
			BookDao bkDao = new BookDao();
			List<Book> list = bkDao.findHots();
			List<Book> list02 = bkDao.findNews();
			List<Book> list03 = bkDao.findpaihangbang();
			CategoryDao ctDao = new CategoryDao();
			
			
			List<Category> list5 = ctDao.findAllCats();
			
			request.getSession().setAttribute("category", list5);
			
			request.setAttribute("MostHots", list);
			request.setAttribute("MostNews", list02);
			request.setAttribute("paihangbang", list03);
			request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
