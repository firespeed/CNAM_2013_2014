package beans;

import java.util.*;

public class Video {
	
	private int      id;
    private String    titre;
    private int    duree;
    private String    ficher;
    private String image;
    private String synopsys;
    private int annee;
    
    public Video(){
	}
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public int getDuree() {
		return duree;
	}
	public void setDuree(int duree) {
		this.duree = duree;
	}
	public String getFicher() {
		return ficher;
	}
	public void setFicher(String ficher) {
		this.ficher = ficher;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getSynopsys() {
		return synopsys;
	}
	public void setSynopsys(String synopsys) {
		this.synopsys = synopsys;
	}
	public int getAnnee() {
		return annee;
	}
	public void setAnnee(int annee) {
		this.annee = annee;
	}

	

	
    

}
