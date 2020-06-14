/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.repository;

import br.com.rodrigo.admissional.model.Professor;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import static javax.transaction.Transactional.TxType.REQUIRED;

/**
 *
 * @author rodri
 */
@ApplicationScoped
public class ProfessorRepository {

    @PersistenceContext(unitName = "POSTGRESQL_PU")
    private EntityManager em;

    @Transactional(REQUIRED)
    public void create(Professor professor) {
        em.persist(professor);
    }

    public List<Professor> findAll() {
        return em.createQuery("SELECT p FROM Professor p", Professor.class)
                .getResultList();
    }

    public Professor find(Long id) {
        return em.find(Professor.class, id);
    }

    @Transactional(REQUIRED)
    public void remove(Professor professor) {
        Professor p = em.merge(professor);
        em.remove(p);
    }

    @Transactional(REQUIRED)
    public void update(Professor professor) {
        em.merge(professor);
    }
}
