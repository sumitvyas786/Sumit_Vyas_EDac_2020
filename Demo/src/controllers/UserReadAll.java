package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User;
import dao.UserDao;

@WebServlet("/user-read-all")
public class UserReadAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			UserDao dao = new UserDao();
			
			List<User> userList = dao.readAll();
			
			request.setAttribute("userList", userList);
			
			if(userList!=null)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userSession", session);
				
				request.getRequestDispatcher("Home.jsp?r=1").forward(request, response);
			}else
				response.sendRedirect("Login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
