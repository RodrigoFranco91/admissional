package br.com.rodrigo.admissional.model;

import br.com.rodrigo.admissional.model.Aluno;
import br.com.rodrigo.admissional.model.Professor;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-06-14T22:09:15")
@StaticMetamodel(Turma.class)
public class Turma_ { 

    public static volatile SingularAttribute<Turma, String> codigo;
    public static volatile SingularAttribute<Turma, Professor> professor;
    public static volatile SingularAttribute<Turma, Date> dataEncerramento;
    public static volatile SingularAttribute<Turma, String> sala;
    public static volatile ListAttribute<Turma, Aluno> alunos;
    public static volatile SingularAttribute<Turma, Long> id;
    public static volatile SingularAttribute<Turma, Date> dataAbertura;

}