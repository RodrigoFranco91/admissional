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
public interface ITurma {
    
    	public boolean estaAberta();
	public void definirProfessor(Professor professor);
	public void incluirAluno(Aluno aluno);
}
