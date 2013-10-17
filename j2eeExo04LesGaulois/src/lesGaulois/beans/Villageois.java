package lesGaulois.beans;
import java.util.*;
public class Villageois {
   private int id;
   private String nom;
   private String adresse;
   private String image;
   private String specialite;
   private String lieuHabitat;
   private List<Bataille> sesBatailles;
  
   public Villageois() {
   }
	   
   public int getId() {return this.id;}
   public String getNom() {return this.nom;}
   public String getAdresse() {return this.adresse;}
   public String getImage() {return this.image;}
   public String getSpecialite() {return this.specialite;}
   public String getLieuHabitat() {return this.lieuHabitat;}
   public List<Bataille> getSesBatailles() {return this.sesBatailles;}

   public void setId(int id) {this.id = id;}
   public void setNom(String nom) {this.nom = nom;}
   public void setAdresse(String adresse) {this.adresse = adresse;}
   public void setImage(String image) {this.image = image;}
   public void setSpecialite(String specialite) {this.specialite = specialite;}   
   public void setLieuHabitat(String lieuHabitat) {this.lieuHabitat = lieuHabitat;}   
   public void setSesBatailles(List<Bataille> sesBatailles) {this.sesBatailles = sesBatailles;}   
}
