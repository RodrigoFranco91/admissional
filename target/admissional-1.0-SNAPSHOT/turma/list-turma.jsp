<%-- 
    Document   : list-turma
    Created on : Jun 14, 2020, 7:07:50 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Turmas Cadastradas</title>
    </head>
<body>
	<h1>Turmas Cadastradas no Sistema:</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Codigo</th>
			<th>Sala</th>
                        <th>Data de Abertura</th>
			<th>Data de Encerramento</th>
			<th>Professor</th>
			<th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
		</tr>
		<c:forEach items="${turmas}" var="turma">
			<tr>
				<th>${turma.id}</th>
                                <th>${turma.codigo}</th>
                                <th>${turma.sala}</th>
                                <th>
                                    <fmt:formatDate value="${turma.dataAbertura}" pattern="dd/MM/yyyy"/>
                                </th>
                                <th>
                                    <fmt:formatDate value="${turma.dataEncerramento}" pattern="dd/MM/yyyy"/>
                                </th>
                                <th>${turma.professor.nome}</th>
				<th></th>
				<td><a href="DeletaTurmaServlet?id=${turma.id}">Deletar</a></td>
				<td><a href="FormUpdateTurmaServlet?id=${turma.id}">Alterar</a></td>
                                <td><a href="AdicionaAlunoServlet?id=${turma.id}">Adicionar Alunos</a></td>
				<td><a href="ListaAlunoServlet?id=${turma.id}">Ver Alunos</a></td>
                                <td><a href="VerStatusServlet?id=${turma.id}">Ver Status</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="FormTurmaServlet">Cadastrar nova Turma</a>
	<br />
	<br />
</body>
</html>
