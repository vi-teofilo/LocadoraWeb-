<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Vendedor</title>
<link href="css/cadastro.css" rel="stylesheet">
</head>
<body>
	<form action="gravaVendedor.jsp">
		
		<table border="0">
		<img src="imagens/vendedor.png" border="0" />
			<h1>Cadastro Vendedor</h1>
			<p>
				<label for="nome">Nome</label> <input type="text" name="nome"
					placeholder="Ex: Pedro Teófilo" />
			</p>
			<p>
				<label for="areaVenda">Area Venda</label> <input type="text" name="areaVenda"
					placeholder="Ex: Gerente" />
			</p>
			<p>
				<label for="cidade">Cidade</label> <input type="text" name="cidade"
					placeholder="Ex: Alphaville" />
			</p>
			
			<p>
				<label for="estado">Estado</label> <input type="text" name="estado"
					placeholder="Ex: São Paulo" />
			</p>
			
				
				<p>
				<label for="idade">Idade</label> <input type="text" name="idade"
					placeholder="Ex: 18 anos" />
			</p>
			<p>
				<label for="salario">Salário</label> <input type="text" name="salario"
					placeholder="Ex:R$ 1.600,00 " />
			<tr>
				<label for="sexo">Sexo</label>
				<td><input type="radio" value="feminino" name="sexo">F
					</input>
				<input type="radio" value="masculino" name="sexo">M
					</input></td>
					</tr>
		</table>
			</p>
		
				<td><input type="submit" value="Salvar Dados" /></td>

			</tr>
		


	</form>
<table>
	<td><p class="css3button">
	<a href="index.html" title="Voltar">Voltar</a>
	</p></td>
</table>

</body>
</html>