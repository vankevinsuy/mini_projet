package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User prof = new User("prof", "1234" );
		User eleve = new User("eleve", "invite" );
		
		String uname = (String) request.getParameter("uname");		

		if (uname.equals(prof.getName()) || uname.equals(eleve.getName())) {
			System.out.println("connexion reussie");
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		}
		
		else {
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

}
