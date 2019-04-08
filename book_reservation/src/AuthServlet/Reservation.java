package AuthServlet;

import java.io.IOException;
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
		Book les_miserables = new Book("Les Miserables","Victo Hugo",1862,"Albert Lacroix et Cie","img/Les_miserables.png", "le remsumé");
		Book les_trois_mousquetaires = new Book("les_trois_mousquetaires","Alexandre Dumas",1844,"Baudry","img/Les_trois_mousquetaires.png", "le remsumé");
		Book oliver_twist = new Book("oliver_twist","Charles Dickens",1839,"Baudry","img/oliver_twist.png", "le remsumé");
		
		String title = (String) request.getParameter("chosen_book");
		
		request.getRequestDispatcher("/books.html").forward(request, response);

	}

}
