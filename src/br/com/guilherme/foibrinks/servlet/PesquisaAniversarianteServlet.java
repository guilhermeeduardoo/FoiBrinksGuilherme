/**
 * 
 */
package br.com.guilherme.foibrinks.servlet;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.guilherme.foibrinks.bd.ClienteDAO;

/**
 * @author guilh
 * 
 */
public class PesquisaAniversarianteServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		String mes = request.getParameter("mes");
	    ClienteDAO daozin = new ClienteDAO();
	    daozin.getPesquisaAniversariante(mes);
		RequestDispatcher rd = request
				.getRequestDispatcher("/listarProduto.jsp");
		rd.forward(request, response);
	}

}
