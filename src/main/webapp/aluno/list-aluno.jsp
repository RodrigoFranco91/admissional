<%-- 
    Document   : list-aluno
    Created on : Jun 12, 2020, 9:00:29 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alunos Cadastrados</title>
    </head>
<body>
	<h1>Alunos Cadastrados no Sistema:</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Matricula</th>
			<th></th>
		</tr>
		<c:forEach items="${alunos}" var="aluno">
			<tr>
				<th>${aluno.id}</th>
				<th>${aluno.nome}</th>
				<th>${aluno.matricula}</th>
				<th></th>
				<td><a href="DeletaAlunoServlet?id=${aluno.id}">Deletar</a></td>
				<td><a href="FormUpdateAlunoServlet?id=${aluno.id}">Alterar</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="FormAlunoServlet">Cadastrar novo Aluno</a>
	<br />
	<br />
</body>
</html>
