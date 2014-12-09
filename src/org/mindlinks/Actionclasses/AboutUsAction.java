package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class AboutUsAction extends ActionSupport
{
	 private static	final Logger logger = Logger.getLogger(LoadForgotPasswordAction.class);
		
		public String execute() throws Exception
		{
			logger.info("ENTER::INSIDE THE LOAD FORGOT PASSWORD  ACTION EXECUTE MEHTOD  ");
			
			return "SUCCESS";
		}

}
