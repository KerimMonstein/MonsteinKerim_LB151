/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ch.bbbaden.monsteinkerim_lb151;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author monst
 */
@Stateless
public class SpieleFacade extends AbstractFacade<Spiele> {

    @PersistenceContext(unitName = "ch.bbbaden_MonsteinKerim_LB151_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SpieleFacade() {
        super(Spiele.class);
    }
    
}
