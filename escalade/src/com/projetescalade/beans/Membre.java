package com.projetescalade.beans;

import java.sql.Timestamp;

public class Membre {
	
	private Long id;
	private String pseudo;
	private String mail;
	private String pass;
	private Timestamp dateInscription;
	
	
	/* ------------------
	 * GETTER ET SETTER
	 -------------------- */
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public Timestamp getDateInscription() {
		return dateInscription;
	}
	public void setDateInscription(Timestamp dateInscription) {
		this.dateInscription = dateInscription;
	}
	
	
	

}
