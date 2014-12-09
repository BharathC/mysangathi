package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PreUploadAction extends ActionSupport
{

	private static final Logger logger = Logger.getLogger(PreUploadAction.class);
	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::THE INSIDE THE PRE UPLOAD ACTION CLASS EXECUTE METHOD");
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.get("myprofile") == null)
		{
			logger.info("ENTER::THE INSIDE THE PRE UPLOAD ACTION CLASS EXECUTE METHOD CREATING THE SESSION OBJECT");
			return "session";
		}
		logger.info("RETURN::THE INSIDE THE PRE UPLOAD ACTION CLASS EXECUTE METHOD SUCCESS");
		return "SUCCESS";
	}

}
