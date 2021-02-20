package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User;
import dao.UserDao;

@WebServlet("/user-delete")
public class UserDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String id1 = request.getParameter("id");
			int id = Integer.parseInt(id1);
			
			System.out.println(id);
			
			UserDao dao = new UserDao();
			User user = new User(null, null);
			
			user.setId(id);
			
			dao.deleteUser(user);
	
//			response.sendRedirect("user-read-all");
			request.getRequestDispatcher("user-read-all").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
