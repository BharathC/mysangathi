package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.HibernateDAO.ProfileDAO;

import com.opensymphony.xwork2.ActionSupport;

public class UniqueEmailAction extends ActionSupport 
{
	private static final Logger logger = Logger.getLogger(UniqueEmailAction.class);
	

	String email;

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::INSIDE THE UNIQUE EAMIL ACTION EXECUTE METHOD "+getEmail());
	   String emailuniqueness;
		ProfileDAO profileclient = new ProfileDAO();
		emailuniqueness = profileclient.checkEmailUniqueness(getEmail());
		System.out.println("============"+emailuniqueness);
		if (emailuniqueness.equals("true"))
		{
			logger.info("ENTER::INSIDE THE UNIQUE EAMIL ACTION EXECUTE METHOD RETURN IF THE MAIL IS NOT UNIQUE ERROR "+emailuniqueness);
			return ERROR;
		}
		logger.info("ENTER::INSIDE THE UNIQUE EAMIL ACTION EXECUTE METHOD TO RETURN MAIL IS UNIQUE SUCCESS"+emailuniqueness);
		return SUCCESS;

	}

	
}
