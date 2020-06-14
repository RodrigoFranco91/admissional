/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.model;

/**
 *
 * @author rodri
 */
public interface IUsuarios {

    public void definirNome(String nome);

    public String obterNome();

    public void definirMatricula(Integer numeroMatricula);

    public Integer obterMatricula();

}
