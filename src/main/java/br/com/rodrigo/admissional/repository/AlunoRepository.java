/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.repository;

import br.com.rodrigo.admissional.model.Aluno;
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
public class AlunoRepository {

    @PersistenceContext(unitName = "POSTGRESQL_PU")
    private EntityManager em;

    @Transactional(REQUIRED)
    public void create(Aluno aluno) {
        em.persist(aluno);
    }

    public List<Aluno> findAll() {
        return em.createQuery("SELECT a FROM Aluno a", Aluno.class)
                .getResultList();
    }

    public Aluno find(Long id) {
        return em.find(Aluno.class, id);
    }

    @Transactional(REQUIRED)
    public void remove(Aluno aluno) {
        Aluno a = em.merge(aluno);
        em.remove(a);
    }

    @Transactional(REQUIRED)
    public void update(Aluno aluno) {
        em.merge(aluno);
    }
}
