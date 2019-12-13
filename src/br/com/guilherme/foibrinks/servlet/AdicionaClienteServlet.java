/**
 * 
 */
package br.com.guilherme.foibrinks.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.guilherme.foibrinks.bd.ClienteDAO;
import br.com.guilherme.foibrinks.model.Cliente;

/**
 * @author guilh
 *
 */
public class AdicionaClienteServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		// pegando os parâmetros do request
		String nome = request.getParameter("nome");
		String estadocivil = request.getParameter("estadocivil");
		String genero = request.getParameter("genero");
		String rua = request.getParameter("rua");
		String bairro = request .getParameter("bairro");
		String CEP = request .getParameter("CEP");
		String estado = request .getParameter("estado");
		String CPF = request .getParameter("CPF");
		String dataEmTexto = request.getParameter("datanascimento");
		Calendar dataCadastro = Calendar.getInstance();
		Calendar dataNascimento = null;
		// fazendo a conversão da data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão da data");
			return; // para a execução do método
		}
		// monta um objeto contato
		Cliente cliente = new Cliente();
		cliente.setNomeCompleto(nome);
		cliente.setEstadoCivil(estadocivil);
		cliente.setGenero(genero);
		cliente.setRua(rua);
		cliente.setBairro(bairro);
		cliente.setCEP(CEP);
		cliente.setEstado(estado);
		cliente.setCPF(CPF);
		cliente.setDatadeNascimento(dataNascimento);
		cliente.setDatadeCadastrodoSistema(dataCadastro);
		// salva o contato
		ClienteDAO dao = new ClienteDAO();
		dao.adiciona(cliente);
		// imprime o nome do contato que foi adicionado
		RequestDispatcher rd = request
				.getRequestDispatcher("/lista-contatos.jsp");
		rd.forward(request, response);

	}
}
