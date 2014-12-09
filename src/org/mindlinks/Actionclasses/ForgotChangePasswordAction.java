package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ForgotChangePasswordAction  extends  ActionSupport   implements ModelDriven
{

	private static final Logger logger = Logger.getLogger(ForgotChangePasswordAction.class);
	
	User user = new User();

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}
	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		
		System.out.println("new password"+user.getPassword());
		System.out.println("conform password"+user.getCpassword());
		System.out.println("Username"+user.getUsername());
		UserBS userbs = new UserBS();
		boolean flag = userbs.forgetChangeUserPassword(user) ;
	 
		
		if(flag == true)
		{
		// TODO Auto-generated method stub
		return "SUCCESS";
		}
		else {
			return "input";
		}
	}
	@Override
	public  User getModel()
	{
		// TODO Auto-generated method stub
		return user;
	}

}
