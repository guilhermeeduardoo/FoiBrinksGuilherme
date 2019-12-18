
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
		<h1>Adicionar Produto</h1>
		<br>
		<br>
		<form action="adicionaProduto">
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Nome
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="NomeProduto"
						placeholder=" So dale">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Marca
				</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="marca"
						placeholder=" Dale de novo">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Faixa Etaria Indicada
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="FaixaEtariaIndicada"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Altura
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="altura"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Largura
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="largura"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Profundidade
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="profundidade"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Peso
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="peso"
						placeholder=" Dale novamente">
				</div>
			</div>
			<div class="form-group row">
				<label for="colFormLabel" class="col-sm-2 col-form-label">Preço
					: </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="preco"
						placeholder=" Dale novamente">
				</div>
			</div>
			<button type="submit" class="btn btn-info">Adicionar</button>

		</form>
	</div>
</body>
</html>