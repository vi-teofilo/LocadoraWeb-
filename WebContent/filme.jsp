<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Filme</title>
<link href="css/cadastro.css" rel="stylesheet">

</head>
<body>
 	
	<form action="gravaFilme.jsp">
       <img src="imagens/filmeicone.png" border="0" />
		<table border="0">
			<h1>Cadastro Filme</h1>
			<p>
				<label>Nome do Filme:</label> <input type="text" name="nome"
					placeholder="Ex: A Era do Gelo" />
			</p>
			<p>
				<label>Gênero:</label> <input type="text" name="genero"
					placeholder="Ex: Desenho" />
			</p>
			<p>
				<label>Valor:</label> <input type="text" name="valor"
					placeholder="Ex: 10,0 reais" />
			</p>
			<tr>
				<td>Disponivel:</td>
				<td><input type="radio" value="Sim" name="disponivel">SIM
					</input>&emsp;
				<td>
				<td><input type="radio" value="Não" name="disponivel">NÃO
					</input>&emsp;
			</tr>

			<td>Promoção:</td>
			<td><input type="radio" value="Sim" name="promocao">SIM
				</input>&emsp;
			<td>
			<td><input type="radio" value="Não" name="promocao">NÃO
				</input>&emsp;
			</tr>

			<p>
				<label>Valor Promoção</label> <input type="text"
					name="valorPromocao" placeholder="Ex: 5,00 reais" />
			</p>

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