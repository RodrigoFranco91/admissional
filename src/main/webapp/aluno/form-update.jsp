<%-- 
    Document   : form-update
    Created on : Jun 12, 2020, 8:58:29 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alteração Aluno</title>
    </head>
<body>
	<h1>Alterando Cadastro do Aluno: ID = ${aluno.id} - Nome = ${aluno.nome}</h1>
	<form action="alteraAluno">
		<input type="hidden" name="id" value="${aluno.id }" />
		
		<label >Nome:</label>
		<input type="text" name="nome" value="${aluno.nome}"/></br></br>
		
		<label>Matricula::</label>
		<input type="text" name="matricula" value="${aluno.matricula }"/></br></br>
		
		<input type="submit" value="Alterar">
	</form>
</body>
</html>
