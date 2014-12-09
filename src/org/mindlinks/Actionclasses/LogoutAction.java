package org.mindlinks.Actionclasses;

import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport 
{
	private static final Logger logger = Logger.getLogger(LogoutAction.class);
	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::THE INSIDE THE LOGOUT ACTION CLASS EXECUTE METHOD");
		//SessionMap session = (SessionMap) ActionContext.getContext().get();
		Map session = ActionContext.getContext().getSession();
		session.remove("myprofile");
		session.remove("matchprofile");
		//session.clear();
		//session.invalidate();
		
		logger.info("ENTER::THE INSIDE THE LOGOUT ACTION CLASS EXECUTE METHOD SUCCESS");
		return "SUCCESS";
	}

}
