package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



public class CheckChangePasswordUserNameAndPasswordAction extends ActionSupport implements ModelDriven
{

	private static	final Logger logger = Logger.getLogger(CheckChangePasswordUserNameAndPasswordAction.class);
	User user = new User();
	private String username;
	private String password;
	public User getUser()
	{
		return user;
	}
	public void setUser(User user)
	{
		this.user = user;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	

	
	public String execute() throws Exception
	{
		logger.info("INSIDE::THE CHECK PASSWORD ACTION  EXECUTE METHOD ");
		System.out.println("username is =====  "+getModel().getUsername());
		System.out.println("password is ===== "+getModel().getPassword());
		String status=null;
		UserBS userbs = new UserBS();
		status=userbs.checkChangePassworUserNameAndPassword(getModel().getUsername(), getModel().getPassword());
		
		System.out.println("+++++++++++++++++"+status);
		return status;
		/*if(flag==true)
		{
			logger.info("INSIDE::THE CHECK PASSWORD ACTION INSIDE THE IF FALG IS TRUE" +flag);
			return "SUCCESS";
			
		}else
		{
			logger.info("INSIDE::THE CHECK PASSWORD ACTION INSIDE THE IF FALG IS FALSE" +flag);
			return "input";
		}*/
		
		// TODO Auto-generated method stub

		
		
	
		
	}
	
	public User getModel()
	{
		// TODO Auto-generated method stub

		logger.info("INSIDE::THE CHECK PASSWORD ACTION GET MODEL METHOD ");
		return user;
	}
	
}
 





	
	
	

