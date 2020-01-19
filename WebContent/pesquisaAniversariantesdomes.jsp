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
		<form action="pesquisaAniversariantesdomes.jsp">
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Mês
					de Aniversário:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="mes"
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

					<th scope="col">Nome</th>
					<th scope="col">Data de Nascimento</th>
					<th scope="col">Idade</th>
				</tr>
			</thead>
			<tbody>
				<%
					SimpleDateFormat data= new SimpleDateFormat("dd/MM/yyyy");
								String mes = request.getParameter("mes");
								  ClienteDAO dao = new ClienteDAO(); List<Cliente> clientes =dao.getPesquisaAniversariante(mes);
								for (Cliente cliente : clientes) {
				%>
				<tr>

					<td><%=cliente.getNomeCompleto()%></td>
					<td><%=data.format(cliente.getDatadeNascimento().getTimeInMillis())%></td>
					<td>substituir</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>