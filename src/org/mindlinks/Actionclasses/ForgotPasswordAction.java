package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ForgotPasswordAction extends ActionSupport implements ModelDriven
{	
	User user = new User();
	private static final Logger logger = Logger.getLogger(ForgotPasswordAction .class);
	
	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}
	public String execute() throws Exception
	{
		
		logger.info("ENTER INTO THE  FORGOT  PASSWORD ACTION EXECUTE METHOED");
		System.out.println("Username   for get password "+user.getUsername());
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE FORGOT PASSWORD ACTION EXECUTE MEHTOD  ");
		user.getUsername();
		System.out.println("user name forgot acton class " + user.getUsername() );
		UserBS userbs = new UserBS();
		logger.info("ENTER::INSIDE THE FORGOT PASSWORD ACTION TRY BLOCK  ");
		String status=	userbs.forgotpassword(user);
		//flag=userbs.forgotpassword(user);
		return status;
		
	 
	/*	
		if(flag == true){
		// TODO Auto-generated method stub
		return "SUCCESS";
		}
		else {
			return "input";
		}*/
	}

	@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		return user;
	}
}
