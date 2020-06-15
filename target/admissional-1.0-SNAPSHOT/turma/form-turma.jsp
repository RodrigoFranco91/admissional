<%-- 
    Document   : form-turma
    Created on : Jun 14, 2020, 5:26:34 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Turma</title>
    </head>
    <body>
        <h1>Cadastro de Turma</h1>
        <form action="CadastroTurmaServlet">
            <label>Codigo:</label>
            <input type="text" name="codigo"/></br></br>

            <label>Sala:</label>
            <input type="text" name="sala"/></br></br>

            <label>Data Abertura:</label>
            <input type="text" name="dataAbertura"/></br></br>

            <label>Data Encerramento:</label>
            <input type="text" name="dataEncerramento"/></br></br>

            <label> Professor:</label>
            <select name="professorId" >
                <c:forEach items="${professores}" var="professor">
                    <option value="${professor.id}">${professor.nome}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Cadastrar">
        </form>
    </body>
</html>
