package lesGaulois.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import boutique.beans.Client;

//import lesGaulois.beans.Client;
import lesGaulois.beans.Villageois;

/**
 * Servlet implementation class ServletAffichage
 */
@WebServlet("/RechGaulois")
public class RechGaulois extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RechGaulois() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Récupération identifiant et mot de passe entrés
		PrintWriter out = response.getWriter();
		out.println("appel de la servlet RechGaulois.java<br/>");	

		String ParameterNames = "";
		Map map = request.getParameterMap();
		Object[] keys = map.keySet().toArray();
		for(Enumeration e = request.getParameterNames();e.hasMoreElements(); )
		{
			ParameterNames = (String)e.nextElement();
			out.println(ParameterNames + "<br/>");
		}
		out.println("liste des paramtres : <br/>");
		String[] pars = request.getParameterValues((String) keys[0]);
		out.print("nom : '" + pars[0] + "'<br/>");
		out.print("valeur : '" + keys[0] + "'<br/>");

		// Accès base de données
		out.print("debut acces bdd<br/>");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");  	
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lesgaulois","root","");
			Statement st = conn.createStatement();
			out.print("connexion bdd<br/>");
			String requete = "SELECT * FROM villageois WHERE id_villageois = '"+keys[0]+"'";	
			out.print("requete : '" + requete + "'<br/>");
			ResultSet rec = st.executeQuery(requete);
			
			//on place le curseur sur le dernier tuple
			rec.last();
			//on récupère le numéro de la ligne
			int nbLignes = rec.getRow();
			//on repace le curseur avant la première ligne
			rec.beforeFirst();	
			
			// On a trouvé un villageois
			if(nbLignes > 0)
			{
				Villageois monVillageois = new Villageois();
				while(rec.next())
				{   	
					out.print("lecture du recordset<br/>");
					out.print("id villageois : "+rec.getInt("id_villageois") + "<br/>");
					out.print("nom villageois : "+rec.getString("nom") + "<br/>");
					
					monVillageois.setId(rec.getInt("id_villageois"));
					monVillageois.setNom(rec.getString("nom"));
					monVillageois.setAdresse(rec.getString("adresse"));
					out.print("affectation du bean <br/>");
					
					// Chargement de la requete avec un objet client
					request.setAttribute("villageois", monVillageois);
					// Appel du request dispatcher pour envoi vers la page afficheClient
					RequestDispatcher rd = request.getRequestDispatcher("afficheGaulois");
					//RequestDispatcher rd = request.getRequestDispatcher("lesSpecialites");
					// Redirection
					rd.forward(request, response);
				}
			}else{
				// Aucun client ne correspond à ce login + mot de passe
				response.sendRedirect("erreurGaulois");
			}   
			 	
		}catch (Exception e)		    
		{
			System.out.println("ERREUR BDD " + e.toString());
		}
		
			
			
	}
}
