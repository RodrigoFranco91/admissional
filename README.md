# admissional
Repositório para o Projeto Teste Admissional da empresa B2ML.

Configuração Inicial para executar a aplicação:
-Criar o pool: postgresqlpool;
-JNDI Name: jdbc/postgrespool;
-Baco de dados: Irá usar o padrão do postgres (com o mesmo nome).
-Toda configuração de Banco foi feita dentro do servidor, não há nada no código.

Paths das requisições: 

Cadastrar Professor = http://localhost:8080/admissional/FormProfessorServlet

Listar Professores = http://localhost:8080/admissional/ListaProfessoresServlet

Cadastar Aluno = http://localhost:8080/admissional/FormAlunoServlet

Listar Alunos = http://localhost:8080/admissional/ListaAlunoServlet

Cadastrar Turma = http://localhost:8080/admissional/FormTurmaServlet

Listar Turmas = http://localhost:8080/admissional/ListaTurmaServlet

Obs: Na página de listagem de todos Modelos (professor, aluno e turma) haverá links para as demais requisições.
