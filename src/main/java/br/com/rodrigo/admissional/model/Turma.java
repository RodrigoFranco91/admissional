/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author rodri
 */
@Entity
public class Turma implements ITurma {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String codigo;
    private String sala;

    @Temporal(TemporalType.DATE)
    private Date dataAbertura;

    @Temporal(TemporalType.DATE)
    private Date dataEncerramento;
    
    @ManyToOne
    private Professor professor;
    
    @OneToMany
    private List<Aluno> alunos = new ArrayList<Aluno>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public boolean estaAberta() {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public void definirProfessor(Professor professor) {
        this.setProfessor(professor);

    }

    @Override
    public void incluirAluno(Aluno aluno) {
        // TODO Auto-generated method stub

    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getSala() {
        return sala;
    }

    public void setSala(String sala) {
        this.sala = sala;
    }

    public Date getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(Date dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public Date getDataEncerramento() {
        return dataEncerramento;
    }

    public void setDataEncerramento(Date dataEncerramento) {
        this.dataEncerramento = dataEncerramento;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public List<Aluno> getAlunos() {
        return alunos;
    }

    public void setAlunos(List<Aluno> alunos) {
        this.alunos = alunos;
    }

}
