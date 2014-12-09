package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.Subscription;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ActivationurlStatusAction extends ActionSupport implements ModelDriven
{

	private static	final Logger logger = Logger.getLogger(ActivationurlStatusAction.class);
	private static final String String = null;
	Subscription subscription = new Subscription(); 
	private String username;
	private String status;

	public String getStatus()
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	boolean flag =true;
 
	

	public Subscription getSubscription()
	{
		return subscription;
	}

	public void setSubscription(Subscription subscription)
	{
		this.subscription = subscription;
	}

	public String execute() throws Exception
	{
		logger.info("ENTER IN TO THE ACTIVATION URL CHECK ACTION  EXECUTE METHOD");
		System.out.println("username is   "+ subscription.getUsername());
		String status=null;
	
		UserBS userbs = new UserBS();
		status=userbs.activationstatusurl(getModel().getUsername());
		System.out.println("Status After Activation url flow in Action class   "+status);
		return status;
		
	
		
		
	}
	
	@Override
	public Subscription getModel()
	{
		// TODO Auto-generated method stub
		return subscription;
	}
	

}
