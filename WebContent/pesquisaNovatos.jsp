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

	<div style="text-aling: center; max-width: 850px; margin: auto">
		<form action="pesquisaNovatos.jsp">
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Mês:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="mes"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Ano:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="ano"
						placeholder=" Dale novamente">
				</div>
			</div>
			<button type="submit" class="btn btn-info">Pesquisar</button>
		</form>
	</div>
	<div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Nome</th>
					<th scope="col">Data de Nascimento</th>
					<th scope="col">Data de Cadastro</th>
				</tr>
			</thead>
			<tbody>
				<%
					SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
								String mes = request.getParameter("mes");
								String ano = request.getParameter("ano");
								  ClienteDAO dao = new ClienteDAO(); List<Cliente> clientes =dao.getNovatos(mes, ano);
								for (Cliente cliente : clientes) {
				%>
				<tr>
					<td><%=cliente.getId()%></td>
					<td><%=cliente.getNomeCompleto()%></td>
					<td><%=data.format(cliente.getDatadeNascimento().getTimeInMillis())%></td>
					<td><%=data.format(cliente.getDatadeCadastrodoSistema().getTimeInMillis())%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>