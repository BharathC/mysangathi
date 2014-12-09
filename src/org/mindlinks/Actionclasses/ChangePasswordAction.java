package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ChangePasswordAction extends ActionSupport implements ModelDriven
{

	
	User user = new User();
	



	private static final Logger logger = Logger.getLogger(ChangePasswordAction.class);
	
	

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
		
		System.out.println("New password is   in Action Class change password "+user.getPassword());
		System.out.println("Username   in Action Class change password "+user.getUsername());
		boolean flag=false;
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE CHANGE PASSWORD ACTION EXECUTE MEHTOD  ");
		

		UserBS userbs = new UserBS();
		flag=userbs.changeUserPassword(user);
		
	 
		
		if(flag == true){
		// TODO Auto-generated method stub
		return "SUCCESS";
		}
		else {
			return "input";
		}
	}


	

	@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE CHANGE PASSWORD ACTION GETMODEL MEHTOD ");
		return user;
	}

}
