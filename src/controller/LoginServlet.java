package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.*;

import dao.UserDAO;
import dao.UserDAOImpl;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private final UserDAO userDAO = new UserDAOImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/pizzaShop/");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		int check = 0;
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("user")) {
				check=1;
			}
		}
		
		if(check==1) {
			response.sendRedirect("/pizzaShop/");
		}else {
			User user = new User();
			String emailAddress = request.getParameter("emailAddress").toString();
			String password = request.getParameter("password").toString();
			user.setEmailAddress(emailAddress);
			user.setPassword(password);
			try {
				User loggedUser = userDAO.login(user);
				if(loggedUser!=null) {
//	                ObjectMapper objectMapper=new ObjectMapper();
//	                String jsonInString = objectMapper.writeValueAsString(loggedUser);
	                Cookie loginCookie = new Cookie("user",loggedUser.getDisplayName());
					loginCookie.setMaxAge(30*60);
					response.addCookie(loginCookie);
					response.sendRedirect("/pizzaShop/promotions.jsp");
				}else {
					request.setAttribute("er", "Login failed please try again!");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				request.setAttribute("er", "Database connection failed!");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				e.printStackTrace();
			}
		}
		
	}

}
