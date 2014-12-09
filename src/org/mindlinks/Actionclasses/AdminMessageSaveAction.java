package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BO.InterestProfileBO;
import org.mindlinks.Bean.InterestProfile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminMessageSaveAction extends ActionSupport implements ModelDriven
{

	private static	final Logger logger = Logger.getLogger(AdminMessageSaveAction.class);
	InterestProfile   interest=new InterestProfile();
	
	private String message;
	private int fromprofileid;

	private int toprofileid;

	public InterestProfile getInterest()
	{
		return interest;
	}


	public void setInterest(InterestProfile interest)
	{
		this.interest = interest;
	}


	public int getFromprofileid()
	{
		return fromprofileid;
	}


	public void setFromprofileid(int fromprofileid)
	{
		this.fromprofileid = fromprofileid;
	}


	public int getToprofileid()
	{
		return toprofileid;
	}


	public void setToprofileid(int toprofileid)
	{
		this.toprofileid = toprofileid;
	}


	public String getMessage()
	{
		return message;
	}


	public void setMessage(String message)
	{
		this.message = message;
	}


	
	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		logger.info("INSIDE:: ADMIN MESSAGE SAVE ACTION EXECUTE METHOD");
		InterestProfileBO  interestbo=new InterestProfileBO();
		System.out.println("=======getModel object"+getModel().getFromprofileid());
		System.out.println("=======getModel object"+getModel().getToprofileid());
		System.out.println("+++++++getModel object"+getModel().getMessage());
		SessionMap   session=(SessionMap) ActionContext.getContext().get("session");
		if(session.get("myprofile")==null)
		{
			return "session";
		}
		interestbo.interestProfileMessage(getModel().getFromprofileid(),getModel().getToprofileid(), getModel().getMessage());
		logger.info("EXITE:: ADMIN MESSAGE SAVE ACTION EXECUTE METHOD");
		return "SUCCESS";	
		
	}
	

	@Override
	public InterestProfile getModel()
	{
		// TODO Auto-generated method stub
		return interest;
	}
	
	

}
