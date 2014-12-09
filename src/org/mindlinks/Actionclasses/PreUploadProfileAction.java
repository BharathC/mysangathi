package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

public class PreUploadProfileAction extends ActionSupport
{
	private static final Logger logger = Logger.getLogger(PreUploadProfileAction.class);

	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub

		logger.info("ENTER::THE INSIDE THE PRE UPLOAD PROFILE ACTION CLASS EXECUTE METHOD SUCCESS");
		return "SUCCESS";
	}

}
