package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExibeHtml extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	
		// capturo a referencia ao objeto response utilizando a escrita PrintWriter
		PrintWriter gravador = resp.getWriter();
		
		// escrevendo o codigo Html 
		
		gravador.println("<html>");
		gravador.println("<head>");
		gravador.println("<title>Filme Gravado</title>");
		gravador.println("<body>");
		
		gravador.println("<h3>Filme Gravado com Sucesso!</h3><br><br>");
		
		
		gravador.println("Nome do Filme:" + req.getParameter("nome")+"<br>");
		gravador.println("Genero do Filme:" + req.getParameter("genero")+"<br>");
		gravador.println("Valor do Filme:" + req.getParameter("valor")+"<br>");
		gravador.println("Disponivel:" + req.getParameter("disponivel")+"<br>");
		gravador.println("Promoção:" + req.getParameter("promocao")+"<br>");
		gravador.println("Valor da Promoção:" + req.getParameter("valorPromocao")+"<br><br>");
		
		gravador.println("<a href='http://localhost:8080/LocadoraWeb'>Voltar</a>");// aqui vai direto pra pagina na web que vc deseja 
		
		gravador.println("</body>");
		gravador.println("</head>");
		gravador.println("</html>");
		
	}
	
}
