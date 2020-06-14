<%-- 
    Document   : form-aluno
    Created on : Jun 12, 2020, 8:57:45 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Aluno</title>
    </head>
<body>
	<h1>Cadastro de Aluno:</h1>
	<form action="CadastroAlunoServlet">
		<label>Nome:</label>
		<input type="text" name="nome"/></br></br>
		
		<label>Matricula:</label>
		<input type="text" name="matricula"/></br></br>
		
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html>
