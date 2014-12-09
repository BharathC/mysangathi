package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ChangeAction extends ActionSupport implements ModelDriven
{
	final Logger logger = Logger.getLogger(ChangeAction.class);

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
		logger.info("ENTER::INSIDE THE CHANGE ACTION EXECUTE MEHTOD  "+getModel().getPassword());

		UserBS userbs = new UserBS();
		String setpassword = userbs.setInitialPassword(getModel().getUsername(), getModel().getPassword());

		// TODO Auto-generated method stub
		return setpassword;
	}

	@Override
	public void validate()
	{
		logger.info("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD  ");

		System.out.println("inside validate");
		if (getModel().getPassword().length() == 0)
		{
			logger.error("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD CHECKS IF PASSWORD IS EMPTY");
			addFieldError("password", "Password Should not be Empty");
		}

		if (getModel().getPassword().length() != 0)
		{
			logger.error("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD CHECKS IF PASSWORD IS NOT NULL");
			if (getModel().getPassword().length() < 7)
			{
				logger.error("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD CHECKS IF PASSWORD IS LESS THAN 7");
				addFieldError("password", "Password Should have more than 6 Digits");
			}
			if (getModel().getCpassword().length() != 0)
			{
				logger.info("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD CHECKS IF PASSWORD IS NOT EQUELS TO NULL");
				//System.out.println("password is " + getModel().getPassword());
				//System.out.println("Confirm password is " + getModel().getCpassword());
				if (!getModel().getPassword().equals(getModel().getCpassword()))
				{
					logger.error("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD CHECKS  PASSWORD SHOULD MATCH WITH CONFIRM PASSWORD");
					addFieldError("password", "Password Should Match with Confirm Password");
				}
			}
		}
		// TODO Auto-generated method stub

	}

	@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE CHANGE ACTION VALIDATE MEHTOD RETURNS THE MODEL OBJECTS");
		return user;
	}

}
