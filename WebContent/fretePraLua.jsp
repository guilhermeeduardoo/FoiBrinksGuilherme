<%@page import="java.text.SimpleDateFormat"%>
<%@ page
	import="java.util.*, 
br.com.guilherme.foibrinks.bd.*,br.com.guilherme.foibrinks.model.*"%> 

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-color: #E0FFFF">
<h1>Frete para A Lua</h1>
<div>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Peso</th>
      <th scope="col">Preço</th>
      <th scope="col">Total Frete</th>
      <th scope="col">Preço Com Frete</th>
    </tr>
  </thead>
  <tbody>
  <% 
  SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
  ProdutoDAO dao = new ProdutoDAO(); 
  List<Produto> produtos =dao.getListaFretePraLua();
for (Produto produto : produtos) { %>
    <tr>
    		<td><%=produto.getIdproduto()%></td>
			<td><%=produto.getNomeProduto()%></td>
			<td><%=produto.getPeso()%></td>
			<td><%=produto.getPreco()%></td>
			<%
				double valorFreteGrama,ValorFrete, totalComFrete;
				valorFreteGrama = 123456.00;
				ValorFrete = produto.getPeso() * valorFreteGrama;
				totalComFrete = ValorFrete + produto.getPreco();
				String valorFreteFormatado = String.format("%.2f", ValorFrete);
				String freteFormatado = String.format("%.2f", totalComFrete);
			%>
			<td><%=valorFreteFormatado%></td>
			<td><%=freteFormatado%></td>
		</tr>
		<% } %> 
  </tbody>
</table>
</div>
</body>
</html>