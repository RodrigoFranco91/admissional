<%-- 
    Document   : list-professor
    Created on : Jun 12, 2020, 8:54:24 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Professores Cadastrados</title>
    </head>
<body>
	<h1>Professores Cadastrados no Sistema:</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Titulação</th>
			<th></th>
		</tr>
		<c:forEach items="${professores}" var="professor">
			<tr>
				<th>${professor.id}</th>
				<th>${professor.nome}</th>
				<th>${professor.titulacao}</th>
				<th></th>
				<td><a href="DeletaProfessorServlet?id=${professor.id}">Deletar</a></td>
				<td><a href="FormUpdateProfessorServlet?id=${professor.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="FormProfessorServlet">Cadastrar novo Professor</a>
	<br />
	<br />
</body>
</html>
