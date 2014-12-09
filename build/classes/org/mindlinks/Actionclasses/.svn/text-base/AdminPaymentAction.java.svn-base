package org.mindlinks.Actionclasses;

import java.sql.Date;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminPaymentAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(AdminPaymentAction.class);
	Profile profile = new Profile();
	String paidstatus;
	String paymenttype;
	Date paymentdate;
	String comments;

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

	@Override
	public String execute() throws Exception
	{

		logger.info("ENTER::INSIDE THE ADMIN PAYMENT ACTION CLASS ");
		Boolean transstatus;
		if (profile.getPaidstatus() == "true")
		{
			logger.info("ENTER::PAID STATUS IS TRUE  ADMIN PAYMENT ACTION CLASS");
			profile.setPaidstatus("paid");
		}

		Profile profile1 = null;
		ProfileBS profilebs = new ProfileBS();
		System.out.println("Inside action class payment   profile status  "+profile.getInactive());
		profile = profilebs.setpaymentdata(profile);
	
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.isEmpty())
		{
			logger.info("ENTER::THE SESSION  ADMIN PAYMENT ACTION CLASS");
			return "session";
		}
		logger.info("ENTER::THE SUCESS  ADMIN PAYMENT ACTION CLASS");
		return "SUCCESS";

	}

	@Override
	public void validate()
	{
		logger.info("ENTER::THE VALIDATE  ADMIN PAYMENT ACTION CLASS");
		logger.info("EXIT::THE VALIDATE  ADMIN PAYMENT ACTION CLASS");
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE GETMODEL METHOD  ADMIN PAYMENT ACTION CLASS");
		return profile;
	}

}
