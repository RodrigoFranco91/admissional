<%-- 
    Document   : status.jsp
    Created on : Jun 14, 2020, 9:36:40 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Situação da Turma</title>
    </head>
    <body>
        <h1>Situação da Turma: ID = ${turma.id} - Codigo = ${turma.codigo}</h1>
        <h2>Status : ${status}</h2>
        <br/>
        <br/>
        <br/>
        <a href="ListaTurmaServlet">Listar Todas as Turmas</a>
    </body>
</html>
