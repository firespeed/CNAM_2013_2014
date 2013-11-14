package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BDD.Connect_BDD;
import beans.Video;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class SerVideo
 */
@WebServlet("/cinema")
public class ListCinema extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con = null;
	private Statement stmt = null;
	private ResultSet rs = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListCinema() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Video> arrVideo = new ArrayList<Video>();
		con = Connect_BDD.getConnection();
		try {
			stmt = (Statement) con.createStatement();
			rs = stmt.executeQuery("select * from video");
			while ( rs.next()){
				Video maVideo = new Video();
				maVideo.setId(rs.getInt("ID_VIDEO"));
				maVideo.setTitre(rs.getString("TITRE_VIDEO"));
				maVideo.setDuree(rs.getInt("DUREE"));
				maVideo.setFicher(rs.getString("FICHIER"));
				maVideo.setImage(rs.getString("IMAGE"));
				maVideo.setSynopsys(rs.getString("SYNOPSIS"));
				maVideo.setAnnee(rs.getInt("ANNEE"));
				System.out.print("affectation du bean <br/>");
				System.out.println("test log : "+ rs.getString("TITRE_VIDEO"));
				arrVideo.add(maVideo);
			}
			// Chargement de la requete avec un objet client
			request.setAttribute("arrVideo", arrVideo);
			// Appel du request dispatcher pour envoi vers la page cinema ( voir web.xml cinemaview )
			RequestDispatcher rd = request.getRequestDispatcher("cinemaview");
			// Redirection
			rd.forward(request, response);
			
		} catch (SQLException e) {
//			e.printStackTrace();
			System.out.println("erreur sql");
		}
		System.out.println("passe !");
	
	}

}
