package servlet;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeFilme extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
			
			// vai trazer o parametro que tem nome no web html
		System.out.println("Nome do Filme:" + req.getParameter("nome"));
		System.out.println("Genero do Filme:" + req.getParameter("genero"));
		System.out.println("Valor do Filme:" + req.getParameter("valor"));
		System.out.println("Disponivel:" + req.getParameter("disponivel"));
		System.out.println("Promoção:" + req.getParameter("promocao"));
		System.out.println("Valor Promoção:" + req.getParameter("valorPromocao"));
	}
	
	
}
