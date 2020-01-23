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
<h1>Pre�os com Desconto</h1>
<div>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Nome</th>
      <th scope="col">Pre�o</th>
      <th scope="col">Pre�o com Desconto</th>
      <th scope="col">Data de Cadastro</th>
    </tr>
  </thead>
  <tbody>
  <% 
  SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
  ProdutoDAO dao = new ProdutoDAO(); 
  List<Produto> produtos =dao.getListacomDesconto();
for (Produto produto : produtos) { %>
    <tr>
			<td><%=produto.getNomeProduto()%></td>
			<td><%=produto.getPreco()%></td>
			<% 
			//Calculando o desconto na m�o
			double desconto, valorDesconto, precoComDesconto;
			valorDesconto = 3.018735;
			desconto = (valorDesconto * produto.getPreco())/100;
			String valorDescontoFormatado = String.format("%.2f", produto.getPreco()-desconto ); // formatei o valor para ficar duas casas apos a virgula
			%>
			<td><%=valorDescontoFormatado%></td>
			<td><%=data.format(produto.getDataCadastro().getTimeInMillis()) %></td>
		</tr>
		<% } %>
  </tbody>
</table>
</div>
</body>
</html>