package lesGaulois.beans;

import java.util.Date;

public class Bataille {
	   private int id;
	   private String nom;
	   private Date date;
	   
	   public Bataille() {
	   }
		   
	   public int getId() {return this.id;}
	   public String getNom() {return this.nom;}
	   public Date getDate() {return this.date;}

	   public void setId(int id) {this.id = id;}
	   public void setNom(String nom) {this.nom = nom;}
	   public void setDate(Date date) {this.date = date;}
}