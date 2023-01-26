/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ch.bbbaden.monsteinkerim_lb151;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author monst
 */
@Entity
@Table(name = "spiele")
@NamedQueries({
    @NamedQuery(name = "Spiele.findAll", query = "SELECT s FROM Spiele s"),
    @NamedQuery(name = "Spiele.findById", query = "SELECT s FROM Spiele s WHERE s.id = :id"),
    @NamedQuery(name = "Spiele.findBySpieler", query = "SELECT s FROM Spiele s WHERE s.spieler = :spieler")})
public class Spiele implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "spieler")
    private String spieler;

    public Spiele() {
    }

    public Spiele(Integer id) {
        this.id = id;
    }

    public Spiele(Integer id, String spieler) {
        this.id = id;
        this.spieler = spieler;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSpieler() {
        return spieler;
    }

    public void setSpieler(String spieler) {
        this.spieler = spieler;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Spiele)) {
            return false;
        }
        Spiele other = (Spiele) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ch.bbbaden.monsteinkerim_lb151.Spiele[ id=" + id + " ]";
    }
    
}
