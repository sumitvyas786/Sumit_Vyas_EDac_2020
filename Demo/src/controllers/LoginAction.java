package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User;
import dao.UserDao;

@WebServlet("/login-action")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			User user = new User(username, password);
			UserDao dao = new UserDao();
			
			dao.authenticate(user);
			
			request.getRequestDispatcher("user-read-all").forward(request, response);
			
		} catch (IOException e) {
			response.sendRedirect("error.jsp");
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
