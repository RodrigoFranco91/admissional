/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.rodrigo.admissional.repository;


import br.com.rodrigo.admissional.model.Turma;
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
public class TurmaRepository {
    @PersistenceContext(unitName = "POSTGRESQL_PU")
    private EntityManager em;

    @Transactional(REQUIRED)
    public void create(Turma turma) {
        em.persist(turma);
    }

    public List<Turma> findAll() {
        return em.createQuery("SELECT t FROM Turma t", Turma.class)
                .getResultList();
    }

    public Turma find(Long id) {
        return em.find(Turma.class, id);
    }

    @Transactional(REQUIRED)
    public void remove(Turma turma) {
        Turma t = em.merge(turma);
        em.remove(t);
    }

    @Transactional(REQUIRED)
    public void update(Turma turma) {
        em.merge(turma);
    }
    
    public List<Turma> status(Turma turma){
        return em.createQuery("SELECT t FROM Turma t WHERE t.dataAbertura > CURRENT_DATE AND t.id = :turmaId").setParameter("turmaId", turma.getId()).getResultList();

    }
}
