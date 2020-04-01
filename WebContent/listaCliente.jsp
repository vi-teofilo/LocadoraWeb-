<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Clientes</title>
<link href="css/lista.css" rel="stylesheet">
<link href="css/cadastro.css" rel="stylesheet">
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();
		ClienteDAO dao = new ClienteDAO(bd);
	%>	
	<center>
	
	<h3>Listagem de Clientes</h3>

	<table border="1">
		<tr>
			<thead>
			<td>Nome</td>
			<td>Telefone</td>
			<td>Idade</td>	
			</thead>
		</tr>
	
		<% for(Cliente cliente : dao.buscarTodos()) { %>
		<tr>
			<td><%= cliente.getNome() %></td>		
			<td><%= cliente.getTelefone() %></td>		
			<td><%= cliente.getIdade() %></td>				
		</tr>
		<% } %>
	</table>

	</center>
	<a href="index.html">Voltar</a>
</body>
</html>