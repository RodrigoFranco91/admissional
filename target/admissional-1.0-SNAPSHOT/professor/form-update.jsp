<%-- 
    Document   : form-update
    Created on : Jun 12, 2020, 8:53:30 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração Professor</title>
    </head>
<body>
	<h1>Alterando Cadastro do Professor: ID = ${professor.id} - Nome = ${professor.nome}</h1>
	<form action="AlteraProfessorServlet">
		<input type="hidden" name="id" value="${professor.id }" />
		
		<label >Nome:</label>
		<input type="text" name="nome" value="${professor.nome}"/></br></br>
		
		<label>Titulção:</label>
		<input type="text" name="titulacao" value="${professor.titulacao }"/></br></br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>
