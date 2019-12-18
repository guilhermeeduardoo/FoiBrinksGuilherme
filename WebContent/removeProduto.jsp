<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page
	import="java.util.*, 
br.com.guilherme.foibrinks.bd.*,
br.com.guilherme.foibrinks.model.*"%> 
<body>
<%
	String idString = request.getParameter("id");
	Long id = Long.parseLong(idString);
	ProdutoDAO dao = new ProdutoDAO();
	Produto c = new Produto();
	c.setIdproduto(id);
	dao.remove(c); 
	RequestDispatcher rd = request
			.getRequestDispatcher("/listarProduto.jsp");
	rd.forward(request, response);
%>
<p>Removido com Sucesso meu Parcero</p>
</body>
</html>