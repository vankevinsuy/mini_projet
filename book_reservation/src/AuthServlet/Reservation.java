package AuthServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Book;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Book les_miserables = new Book("Les Miserables","Victo Hugo",1862,"Albert Lacroix et Cie","img/Les_Miserables.jpg", "le remsumé");
		Book les_trois_mousquetaires = new Book("Les Trois Mousquetaires","Alexandre Dumas",1844,"Baudry","img/Les_Trois_Mousquetaires.jpg", "le remsumé");
		Book oliver_twist = new Book("Oliver Twist","Charles Dickens",1839,"Baudry","img/Oliver_Twist.jpg", "le remsumé");
		
		String title = (String) request.getParameter("chosen_book");
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/books.jsp");

		
		switch (title) {
		case "Les Miserables":
			request.setAttribute("book", les_miserables);
			dispatcher.include(request, response);
			break;
			
		case "Les Trois Mousquetaires":
			request.setAttribute("book", les_trois_mousquetaires);
			dispatcher.include(request, response);
			break;
			
		case "Oliver Twist":
			request.setAttribute("book", oliver_twist);
			dispatcher.include(request, response);
			break;

		}
		request.getRequestDispatcher("/books.jsp").forward(request, response);

	}

}
