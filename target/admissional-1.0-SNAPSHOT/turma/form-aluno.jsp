<%-- 
    Document   : form-aluno
    Created on : Jun 14, 2020, 11:22:13 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionando Aluno</title>
    </head>
    <body>
        <h1>Adicionando Alunos na Turma: ID = ${turma.id} - Codigo = ${turma.codigo}</h1>
        <form action="AdcionaAlunoServlet">
            <input type="hidden" name="id" value="${turma.id}"/>
            <h2>Selecione os Alunos:</h2>
            <c:forEach items="${alunos}" var="aluno">
                <input type='checkbox' name='alunoId' value='${aluno.id}' /> ${aluno.nome} </br>
            </c:forEach>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
