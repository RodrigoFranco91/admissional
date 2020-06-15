<%-- 
    Document   : alunos
    Created on : Jun 14, 2020, 10:47:27 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alunos da Turma</title>
    </head>
    <body>
        <h1>Alunos da Turma: ID = ${turma.id} - Codigo = ${turma.codigo}</h1>
        <c:if test = "${empty turma.alunos}">
         <h2>Não há alunos nesta turma.</h2>
        </c:if>
        <c:if test = "${not empty turma.alunos}">
         <c:forEach items="${turma.alunos}" var="aluno">
		<ul>
                    <li>${aluno.nome}</li>
		</ul>
	</c:forEach>
        </c:if>
        <a href="FormAdcionaAlunoServlet?id=${turma.id}">Inscrever Alunos</a><br/>
        <a href="ListaTurmaServlet">Listar Todas as Turmas</a>
    </body>
</html>
