<%-- 
    Document   : form-professor
    Created on : Jun 12, 2020, 8:37:42 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Professor:</title>
    </head>
<body>
	<h1>Cadastro de Professor:</h1>
	<form action="cadastroProfessor">
		<label>Nome:</label>
		<input type="text" name="nome"/></br></br>
		
		<label>Titulção:</label>
		<input type="text" name="titulacao"/></br></br>
		
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>
