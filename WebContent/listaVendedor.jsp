<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*, dao.*, util.*, java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Vendedores</title>
<link href="css/lista.css" rel="stylesheet">
<link href="css/cadastro.css" rel="stylesheet">
</head>
<body>
	<%
		Connection bd = ConnectionFactory.getConnection();
		VendedorDAO dao = new VendedorDAO(bd);
	%>	
	<center>
	
	<h1>Listagem de Vendedor</h1>

	<table border="1">
		<tr>
		<thead>
			<td>Nome</td>
			<td>Area Venda</td>
			<td>Cidade</td>	
			</thead>
		</tr>
	
		<% for(Vendedor vendedor : dao.buscarTodos()) { %>
		<tr>
			<td><%= vendedor.getNome() %></td>		
			<td><%= vendedor.getAreaVenda() %></td>		
			<td><%= vendedor.getCidade() %></td>					
		</tr>
		<% } %>
	</table>

	</center>
	<a href="index.html">Voltar</a>
</body>
</html>