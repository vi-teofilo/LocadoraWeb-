<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Cliente</title>

<link href="css/cadastro.css" rel="stylesheet">

</head>
<body>
	<form action="gravaCliente.jsp">
			<img src="imagens/cliente.jpg" border="0" />
			<h1>Cadastro Cliente</h1>
			<p>
				<label>Nome</label> <input type="text" name="nome"
					placeholder="Ex: Luiz Augusto" />
			</p>

			<p>
				<label>RG</label> <input type="text" name="rg"
					placeholder="Ex: 00.000.000" />
			</p>
			<p>
				<label>CPF</label> <input type="text" name="cpf"
					placeholder="Ex: 000.000.000-00" />
			</p>
			<p>
				<label>Data Nacimento</label> <input type="text"
					name="dataNascimento" placeholder="Ex: 00/00/0000" />
			</p>
			<p>
				<label>Idade</label> <input type="text" name="idade"
					placeholder="Ex: 20 anos" />
			</p>

			<p>
				<label>Logradouro:</label> <input type="text"
					name="logradouro" placeholder="Ex: Rua João" />
			</p>
			<p>
				<label>Numero</label> <input type="text" name="numero"
					placeholder="Ex: 123" />
			</p>
			<p>
				<label>Bairro</label> <input type="text" name="bairro"
					placeholder="Ex: Jd São Luiz" />
			</p>
			<p>
				<label>Cidade</label> <input type="text" name="cidade"
					placeholder="Ex: Barueri" />
			</p>
			<p>
				<label>Estado</label> <input type="text" name="estado"
					placeholder="Ex: São Paulo" />
			</p>
			<p>
				<label>Telefone</label> <input type="text"
					name="telefone" placeholder="Ex: (  ) 00000-0000" />
			</p>
			<table>
			<tr>
				<label >Sexo:</label>
				<td><input type="radio" value="feminino" name="sexo">F
					</input>
				<input type="radio" value="masculino" name="sexo">M
					</input></td>
					</tr>
				</table>
			<p>
				<td><input type="submit" value="Salvar Dados" /></td>
			</p>
			


	</form>
	<table>
	<td><p class="css3button">
	<a href="index.html" title="Voltar">Voltar</a>
	</p></td>
</table>
</body>
</html>