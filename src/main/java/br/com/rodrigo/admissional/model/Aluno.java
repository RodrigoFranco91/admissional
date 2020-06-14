/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author rodri
 */
@Entity
public class Aluno implements IUsuarios {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private Integer matricula;

    @Override
    public void definirNome(String nome) {
        this.setNome(nome);
    }

    @Override
    public String obterNome() {
        return this.getNome();
    }

    @Override
    public void definirMatricula(Integer numeroMatricula) {
        this.setMatricula(numeroMatricula);
    }

    @Override
    public Integer obterMatricula() {
        return this.getMatricula();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getMatricula() {
        return this.matricula;
    }

    public void setMatricula(Integer matricula) {
        this.matricula = matricula;
    }

}
