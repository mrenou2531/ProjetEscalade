package com.projetescalade.beans;

public class Voie extends Secteur {
	
	private String nomvoie;
	private String cotation;
	private String nbrrelais;
	
	/* ------------------
	 * GETTER ET SETTER
	 -------------------- */
	public String getNomvoie() {
		return nomvoie;
	}
	public void setNomvoie(String nomvoie) {
		this.nomvoie = nomvoie;
	}
	public String getCotation() {
		return cotation;
	}
	public void setCotation(String cotation) {
		this.cotation = cotation;
	}
	public String getNbrrelais() {
		return nbrrelais;
	}
	public void setNbrrelais(String nbrrelais) {
		this.nbrrelais = nbrrelais;
	}

}
