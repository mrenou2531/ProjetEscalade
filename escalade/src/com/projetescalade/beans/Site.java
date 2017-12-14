package com.projetescalade.beans;

public class Site {
	
	private String nomsite;
	private String departement;
	private String type;
	private int longitude;
	private int latitude;
	private int nbrsecteur;
	
	/* ------------------
	 * GETTER ET SETTER
	 -------------------- */
	public String getNomsite() {
		return nomsite;
	}
	public void setNomsite(String nomsite) {
		this.nomsite = nomsite;
	}
	public String getDepartement() {
		return departement;
	}
	public void setDepartement(String departement) {
		this.departement = departement;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getLongitude() {
		return longitude;
	}
	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}
	public int getLatitude() {
		return latitude;
	}
	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}
	public int getNbrsecteur() {
		return nbrsecteur;
	}
	public void setNbrsecteur(int nbrsecteur) {
		this.nbrsecteur = nbrsecteur;
	}
	
	

}
