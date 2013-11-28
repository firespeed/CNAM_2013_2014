/**
 * LesGauloisSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package localhost.lesgaulois;

import java.sql.*;
import java.util.Vector;

/**
 * LesGauloisSkeleton java skeleton for the axisService
 */
public class LesGauloisSkeleton implements LesGauloisSkeletonInterface {

	/**
	 * Auto generated method signature
	 * 
	 * @param donneGaulois0
	 * @return donneGauloisReponse1
	 */

	public localhost.lesgaulois.DonneGauloisReponse donneGaulois(
			localhost.lesgaulois.DonneGaulois LeGaulois) {
		// Initialisations
		System.out
				.println("GOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
		DonneGauloisReponse reponse = new DonneGauloisReponse();
		String nom = LeGaulois.getNom();

		UnGaulois monGaulois = new UnGaulois();
		String adresse = null;
		String specialite;
		String lieuHabitation;

		Vector Batailles = new Vector();
		System.out.println("nom: " + nom);
		String nomBataille;
		java.util.Date dateBataille;
		String nomLieu;

		String requete;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/lesgaulois", "root", "");
			Statement stmt = conn.createStatement();
			requete = "SELECT * ";
			requete += "FROM villageois,specialite, lieu ";
			requete += "WHERE villageois.id_specialite = specialite.id_specialite ";
			requete += "AND villageois.id_lieu = lieu.id_lieu ";
			requete += "AND nom = '" + nom + "';";
			ResultSet resultat = stmt.executeQuery(requete);
			while (resultat.next()) {
				adresse = resultat.getString("ADRESSE");
				specialite = resultat.getString("NOM_SPECIALITE");
				lieuHabitation = resultat.getString("NOM_LIEU");
				monGaulois.setNom(nom);
				monGaulois.setAdresse(adresse);
				monGaulois.setLeurHabitation(lieuHabitation);
				monGaulois.setSpecialite(specialite);
			}
			System.out.println("adresse: " + adresse);
			System.out.println("adresse: " + adresse);

			requete = "SELECT DISTINCT NOM_BATAILLE, NOM_LIEU, DATE_BATAILLE ";
			requete += "FROM villageois, prise_casque, bataille, lieu ";
			requete += "WHERE villageois.id villageois =prise_casque.id villageois ";
			requete += "AND prise_casque.id_bataille = bataille.id_bataille ";
			requete += "AND bataille.id_lieu = lieu.id_lieu ";
			requete += "AND nom = '" + nom + "';";
			resultat = stmt.executeQuery(requete);
			while (resultat.next()) {
				nomBataille = resultat.getString("NOM_BATAILLE");
				dateBataille = resultat.getDate("DATE_BATAILLE");
				nomLieu = resultat.getString("NOM_LIEU");
				LesBatailles UneBataille = new LesBatailles();
				UneBataille.setDataBataille(dateBataille);
				UneBataille.setLeurBataille(nomLieu);
				UneBataille.setNomBataille(nomBataille);
				Batailles.add(UneBataille);
				LesBatailles[] tabBataille = new LesBatailles[Batailles.size()];
				for (int i = 0; i < Batailles.size(); i++) {
					tabBataille[i] = (LesBatailles) Batailles.get(i);
				}
				monGaulois.setSesBatailles(tabBataille);
				conn.close();
			}
		} catch (Exception e) {
			System.out.println("Error -- " + e.toString());
		}

		reponse.setLeGaulois(monGaulois);
		return reponse;
	}

}