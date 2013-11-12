/**
 * WebContractHelpdeskSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package localhost.webcontracthelpdesk.server;

import java.util.Date;
import localhost.webcontracthelpdesk.*;
import localhost.webcontracthelpdesk.*;

/**
 * WebContractHelpdeskSkeleton java skeleton for the axisService
 */
public class WebContractHelpdeskSkeleton implements
		WebContractHelpdeskSkeletonInterface {

	/**
	 * Auto generated method signature
	 * 
	 * @param GetQuestionWithid
	 * @return getQuestionWithidResponse
	 */
	
	public localhost.webcontracthelpdesk.GetQuestionWithidResponse newQuestion(
			GetQuestionWithid param) {
		// Instanciation d'une réponse
		GetQuestionWithidResponse reponse = new GetQuestionWithidResponse();
		// Instanciation et Initialisation de la question
		Question question = new Question();
		// Création du numéro
		question.setNumero(param.getId());
		// Création de la description
		question.setDescription("La question n°"
				+ param.getId().getQuestionID());
		// Création de la date
		question.setSubmitDate(new Date());
		// Titre de la question
		Title_type1 typeQ = new Title_type1();
		typeQ.setTitle_type0("Question n°" + param.getId().getQuestionID());
		question.setTitle(typeQ);
		// Product de la question
		Product_type1 prodQ = new Product_type1();
		prodQ.setProduct_type0("NS");
		question.setProduct(prodQ);
		// Urgence de la question
		Urgency priorQ = new Urgency();
		priorQ.setUrgency(2);
		question.setPriority(priorQ);
		// Type de la question
		question.setType(Type_type1.USAGE);
		// Retour de la réponse pour la question créée
		reponse.setQuestion(question);
		return reponse;
	}

		
	/**
	 * Auto generated method signature
	 * 
	 * @param GetQuestionWithid
	 * @return GetQuestionWithidResponse
	 */

	public localhost.webcontracthelpdesk.GetQuestionWithidResponse getQuestionWithid(
			localhost.webcontracthelpdesk.GetQuestionWithid param) {
		// Instanciation d'une réponse
				GetQuestionWithidResponse reponse = new GetQuestionWithidResponse();
				// Instanciation et Initialisation de la question
				Question question = new Question();
				// Création du numéro
				question.setNumero(param.getId());
				// Création de la description
				question.setDescription("La question n°"
						+ param.getId().getQuestionID());
				// Création de la date
				question.setSubmitDate(new Date());
				// Titre de la question
				Title_type1 typeQ = new Title_type1();
				typeQ.setTitle_type0("Question n°" + param.getId().getQuestionID());
				question.setTitle(typeQ);
				// Product de la question
				Product_type1 prodQ = new Product_type1();
				prodQ.setProduct_type0("NS");
				question.setProduct(prodQ);
				// Urgence de la question
				Urgency priorQ = new Urgency();
				priorQ.setUrgency(2);
				question.setPriority(priorQ);
				// Type de la question
				question.setType(Type_type1.USAGE);
				// Retour de la réponse pour la question créée
				reponse.setQuestion(question);
				return reponse;
	}

	@Override
	public NewQuestionResponse newQuestion(NewQuestion newQuestion) {
		// TODO Auto-generated method stub
		return null;
	}

}
