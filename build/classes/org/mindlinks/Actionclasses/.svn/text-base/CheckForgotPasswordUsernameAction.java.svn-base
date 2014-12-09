package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.spring.interceptor.ActionAutowiringInterceptor;

public class CheckForgotPasswordUsernameAction extends ActionSupport implements ModelDriven
{
	private static	final Logger logger = Logger.getLogger(CheckForgotPasswordUsernameAction.class);
	User user = new User(); 
	private String username;
	private String status;

	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getStatus()
	{
		return status;
	}
	public void setStatus(String status)
	{
		this.status = status;
	}
	public String execute() throws Exception
	{
		logger.info("ENTER IN TO  CHECK USER NAME ACTION  EXECUTE METHOD");
		System.out.println("username is   "+ user.getUsername());
		String status=null;
	
		UserBS userbs = new UserBS();
		status=userbs.checkForgotPasswordUserName(getModel().getUsername());
		System.out.println("Status After AFTER THE flow in Action class   "+status);
		return status;
		
	}
	@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		return user;
	}
	
	
}
