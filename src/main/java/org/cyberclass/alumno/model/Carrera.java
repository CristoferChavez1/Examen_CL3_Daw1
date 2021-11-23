package org.cyberclass.alumno.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_carrera")
public class Carrera {
	
	@Id
	private int cod_carre;
	
	private String nom_carre;
		

	@Override
	public String toString() {
		return "Carrera [cod_carre=" + cod_carre + ", nom_carre=" + nom_carre + "]";
	}

	public int getCod_carre() {
		return cod_carre;
	}

	public void setCod_carre(int cod_carre) {
		this.cod_carre = cod_carre;
	}

	public String getNom_carre() {
		return nom_carre;
	}

	public void setNom_carre(String nom_carre) {
		this.nom_carre = nom_carre;
	}
	
	

}
