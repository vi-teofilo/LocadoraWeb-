<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Filmes</title>
<link href="css/lista.css" rel="stylesheet">
<link href="css/cadastro.css" rel="stylesheet">
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();
		FilmeDAO dao = new FilmeDAO(bd);
	%>	
	<center>
	
	<h3>Listagem de Filmes</h3>

	<table border="0">
	
		<tr>
				<thead>
				<td>Nome</td>
				<td>Gênero</td>
				<td>Valor</td>
				</thead>
			</p>
		<% for(Filme filme : dao.buscarTodos()) { %>
		<tr>
		<p class="numberlist">
			<td><%= filme.getNome() %></td>		
			<td><%= filme.getGenero() %></td>		
			<td><%= filme.getValor() %></td>				
		</tr>
		<% } %>
	</table>

	</center>
	<a href="index.html">Voltar</a>
</body>
</html>