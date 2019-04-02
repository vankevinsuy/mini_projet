package AuthServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;

/**
 * Servlet implementation class Authentification
 */
@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String log = (String) request.getParameter("log");
		String uname = (String) request.getParameter("uname");		

		User prof = new User("prof", "1234" );
		User eleve = new User("eleve", "invite" );
		

		switch (log) {
		case "connexion":
			if (uname.equals(prof.getName()) || uname.equals(eleve.getName())) {
				System.out.println("connexion reussie");
					request.getRequestDispatcher("/welcome.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
			
			break;
			
		case "deconnexion":
			System.out.println("déconnexion reussie");
			request.getRequestDispatcher("/goodbye.html").forward(request, response);

		default:
			break;
		}

		


	}

}
