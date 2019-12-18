
<%@page import="br.com.guilherme.foibrinks.bd.ProdutoDAO"%>
<%@page import="br.com.guilherme.foibrinks.model.Produto"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	ProdutoDAO dao = new ProdutoDAO();
	Produto produto = dao.getProdutoById(request.getParameter("id"));
%>
<body style="background-color: #E0FFFF">
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="text-aling: center; max-width: 700px; margin: auto">
		<h1>Altera Dados do Produto</h1>
		<br>
		<br>
		<form action="alteraProduto">
		<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">ID
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="idproduto"
						value="<%=produto.getIdproduto()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Nome
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="NomeProduto"
						value="<%=produto.getNomeProduto()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Marca
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="marca"
						value="<%=produto.getMarca()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Faixa Etaria Indicada
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="FaixaEtariaIndicada"
						value="<%=produto.getFaixaEtariaIndicada()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Altura
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="altura"
						value="<%=produto.getAltura()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Largura
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="largura"
						value="<%=produto.getLargura()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Profundidade
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="profundidade"
						value="<%=produto.getProfundidade()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Peso
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="peso"
						value="<%=produto.getPeso()%>">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Preço
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="preco"
						value="<%=produto.getPreco()%>">
				</div>
			</div>
			<button type="submit" class="btn btn-info">Alterar</button>

		</form>
	</div>
</body>
</html>