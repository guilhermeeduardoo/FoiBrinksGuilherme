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
      <th scope="col">Estado Civil</th>
      <th scope="col">Genero</th>
      <th scope="col">Rua</th>
      <th scope="col">Bairro</th>
      <th scope="col">CEP</th>
      <th scope="col">Estado</th>
      <th scope="col">CPF</th>
      <th scope="col">Data de Nascimento</th>
      <th scope="col">Data de Cadastro</th>
      <th scope="col">Remover</th>
      <th scope="col">Alterar</th>
    </tr>
  </thead>
  <tbody>
  <% 
  SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
  ClienteDAO dao = new ClienteDAO(); List<Cliente> clientes =dao.getLista();
for (Cliente cliente : clientes) { %>
    <tr>
    		<td><%=cliente.getId() %></td>
			<td><%=cliente.getNomeCompleto() %></td>
			<td><%=cliente.getEstadoCivil() %></td>
			<td><%=cliente.getGenero() %></td>
			<td><%=cliente.getRua() %></td>
			<td><%=cliente.getBairro() %></td>
			<td><%=cliente.getCEP() %></td>
			<td><%=cliente.getEstado() %></td>
			<td><%=cliente.getCPF() %></td>
			<td><%=data.format(cliente.getDatadeNascimento().getTimeInMillis()) %></td>
			<td><%=data.format(cliente.getDatadeCadastrodoSistema().getTimeInMillis()) %></td>
			<td><a href="removeCliente.jsp?id=<%=cliente.getId()%>">Remover</a></td>
			<td><a href="alteraCliente.jsp?id=<%=cliente.getId()%>">Alterar</a></td>
		</tr>
		<% } %>
  </tbody>
</table>
</div>
</body>
</html>