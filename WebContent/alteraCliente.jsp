<%@ page
	import="java.util.*,br.com.guilherme.foibrinks.bd.*,br.com.guilherme.foibrinks.model.*,java.text.SimpleDateFormat"
%>
<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	ClienteDAO dao = new ClienteDAO();
	String id = request.getParameter("id");
	Cliente cliente = dao.getContatoById(id);
%>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-color: #E0FFFF">
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="text-aling: center; max-width: 700px; margin: auto">
		<h1>Alterar Dados do Cliente</h1>
		<br> <br>
		<form action="altera">
		<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">ID:
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="id"
						value="<%=cliente.getId()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Nome:
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nome"
						value="<%=cliente.getNomeCompleto()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Estado
					Civil: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="estadocivil"
						value="<%=cliente.getEstadoCivil()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Genero
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="genero"
						value="<%=cliente.getGenero()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Rua
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="rua"
						value="<%=cliente.getRua()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Bairro
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="bairro"
						value="<%=cliente.getBairro()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">CEP
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="CEP"
						value="<%=cliente.getCEP()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Estado
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="estado"
						value="<%=cliente.getEstado()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">CPF
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="CPF"
						value="<%=cliente.getCPF()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Data
					de nascimento : </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="datanascimento"
						value="<%=data.format(cliente.getDatadeNascimento().getTimeInMillis())%>">
				</div>
			</div>
			<button type="submit" class="btn btn-info">Adicionar</button>

		</form>
	</div>
</body>
</html>