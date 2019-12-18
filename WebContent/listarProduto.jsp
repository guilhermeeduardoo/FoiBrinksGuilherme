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
<div>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Marca</th>
      <th scope="col">Faixa Etaria Indicada</th>
      <th scope="col">Altura</th>
      <th scope="col">Largura</th>
      <th scope="col">Profundidade</th>
      <th scope="col">Peso</th>
      <th scope="col">Preço</th>
      <th scope="col">Data de Cadastro</th>
      <th scope="col">Remover</th>
      <th scope="col">Alterar</th>
    </tr>
  </thead>
  <tbody>
  <% 
  SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
  ProdutoDAO dao = new ProdutoDAO(); 
  List<Produto> produtos =dao.getLista();
for (Produto produto : produtos) { %>
    <tr>
    		<td><%=produto.getIdproduto()%></td>
			<td><%=produto.getNomeProduto()%></td>
			<td><%=produto.getMarca()%></td>
			<td><%=produto.getFaixaEtariaIndicada()%></td>
			<td><%=produto.getAltura()%></td>
			<td><%=produto.getLargura()%></td>
			<td><%=produto.getProfundidade()%></td>
			<td><%=produto.getPeso()%></td>
			<td><%=produto.getPreco()%></td>
			<td><%=data.format(produto.getDataCadastro().getTimeInMillis()) %></td>
			<td><a href="removeProduto.jsp?id=<%=produto.getIdproduto()%>">Remover</a></td>
			<td><a href="alteraProduto.jsp?id=<%=produto.getIdproduto()%>">Alterar</a></td>
		</tr>
		<% } %>
  </tbody>
</table>
</div>
</body>
</html>