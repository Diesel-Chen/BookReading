package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import dao.BookDao;
import dao.CategoryDao;
import utils.MyBeanUtils;
import vo.Book;
import vo.Category;
import vo.Page;


public class AdminBookServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("findAllBooksByPage".equals(method)){
			findAllBooksByPage(request, response);
		}else if("bookAdd".equals(method)){
			bookAdd(request,response);
		}else if("findBooksByBid".equals(method)){
			findBooksByBid(request,response);
		}else if("bookUpdate".equals(method)){
			bookUpdate(request,response);
		}else if("bookDeleteByBid".equals(method)){
			bookDeleteByBid(request,response);
		}
	}
	public void bookDeleteByBid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int bid  = Integer.parseInt(request.getParameter("bid"));
			BookDao bkDao = new BookDao();
			bkDao.bookDeleteByBid(bid);
			request.getRequestDispatcher("/AdminBookServlet?method=findAllBooksByPage&currentPage=1").forward(request, response);
			//response.sendRedirect("/Book/AdminBookServlet?method=findAllBooks");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
	}

	public void bookUpdate(HttpServletRequest request, HttpServletResponse response) {
		try {
			int bid  = Integer.parseInt(request.getParameter("bid"));
			String bname = request.getParameter("bname");
			String bauthor = request.getParameter("bauthor");
			String bpress = request.getParameter("bpress");
			String bpbtime = request.getParameter("bpbtime");
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(bpbtime);
			int bpage =Integer.parseInt(request.getParameter("bpage"));
			Double bprice = Double.parseDouble(request.getParameter("bprice"));
			String bcontent = request.getParameter("bcontent");
			String bauthordesc = request.getParameter("bauthordesc");
			int is_hot = Integer.parseInt(request.getParameter("is_hot"));
			int cid  = Integer.parseInt(request.getParameter("cid"));
			Book book = new Book(bid,bname,bauthor,bpress,date,bpage,bprice,bcontent,bauthordesc,is_hot,cid);
			BookDao bkDao = new BookDao();
			bkDao.bookUpdate(book);
			request.getRequestDispatcher("/AdminBookServlet?method=findAllBooksByPage&currentPage=1").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public void findBooksByBid(HttpServletRequest request, HttpServletResponse response) {
		try {
			int bid = Integer.parseInt(request.getParameter("bid"));
			BookDao bkDao = new BookDao();
			Book book = bkDao.findBooksByBid(bid);
			CategoryDao ctDao = new CategoryDao();
			List<Category> list = ctDao.findAllCats();
			request.setAttribute("list", list);
			request.setAttribute("book", book);
			request.getRequestDispatcher("/admin/book/edit.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void bookAdd(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			DiskFileItemFactory fac = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fac);
			List<FileItem> list = upload.parseRequest(request);
			Map<String,String> map = new HashMap<String,String>();
			String fileName = null;
			for(FileItem item:list){
				if(item.isFormField()){
					//普通项
					String name = item.getFieldName();
					String value = item.getString("utf-8");
					map.put(name,value);
				}else{
					//上传项
					fileName = item.getName();
					InputStream is = item.getInputStream();
					String realPath = this.getServletContext().getRealPath("/books/1/");
					File file = new File(realPath,fileName);
					if(!file.exists()){
						file.createNewFile();
					}
					OutputStream os = new FileOutputStream(file);
					IOUtils.copy(is, os);
					IOUtils.closeQuietly(is);
					IOUtils.closeQuietly(os);
					map.put("bimage", "books/1/"+fileName);	
				}
			}
			Book book = new Book();
			MyBeanUtils.populate(book, map);
			book.setBdate(new Date());
			BookDao bkDao = new BookDao();
			bkDao.bookAdd(book);
			request.getRequestDispatcher("/AdminBookServlet?method=findAllBooksByPage&currentPage=1").forward(request, response);;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public void findAllBooksByPage(HttpServletRequest request, HttpServletResponse response) {
		try {
			//分页查询数据
			int currentPage =Integer.parseInt(request.getParameter("currentPage"));
			int pageSize = 5;
			BookDao bkDao = new BookDao();
			List<Book> list = bkDao.findAllBooksByPage(currentPage,pageSize);
			request.setAttribute("list", list);
			
			//查询总记录
			int totalRecord = bkDao.findAllCounts();
			int totalPage = totalRecord%pageSize == 0 ? totalRecord/pageSize : (totalRecord/pageSize) +1;
			String url = "AdminBookServlet?method=findAllBooksByPage";
			//封装页面数据 4个 当前页 ，总页数，每一页显示多少数据，总记录 ,url
			Page page = new Page(currentPage,totalPage,pageSize,totalRecord,url);
			request.setAttribute("pageInfo", page);
			request.getRequestDispatcher("/admin/book/list.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
