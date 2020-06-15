<%-- 
    Document   : form-update
    Created on : Jun 14, 2020, 8:12:26 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterando Turma</title>
    </head>
<body>
	<h1>Alterando Cadastro da Turma: ID = ${turma.id} - Codigo = ${turma.codigo}</h1>
	<form action="AlteraTurmaServlet">
            <input type="hidden" name="id" value="${turma.id }" />
            
            <label>Codigo:</label>
            <input type="text" name="codigo" value="${turma.codigo}"/></br></br>

            <label>Sala:</label>
            <input type="text" name="sala" value="${turma.sala}"/></br></br>

            
            <label>Data Abertura:</label>
            <fmt:formatDate var="fmtDateAbertura" value="${turma.dataAbertura}" pattern="dd/MM/yyyy"/>
            <input type="text" name="dataAbertura" value="${fmtDateAbertura}"/></br></br>

            <label>Data Encerramento:</label>
            <fmt:formatDate var="fmtDateEncerramento" value="${turma.dataEncerramento}" pattern="dd/MM/yyyy"/>
            <input type="text" name="dataEncerramento" value="${fmtDateEncerramento}"/></br></br>

            <label> Professor:</label>
            <select name="professorId" >
                <c:forEach items="${professores}" var="professor">
                    <option value="${professor.id}" ${turma.professor.nome eq professor.nome ? "SELECTED" : ""}>${professor.nome}</option>
                </c:forEach>
            </select>

            <input type="submit" value="Alterar">
        </form>
</body>
</html>
