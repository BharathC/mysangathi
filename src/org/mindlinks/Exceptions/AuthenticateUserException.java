package org.mindlinks.Exceptions;

import org.apache.log4j.Logger;
import org.mindlinks.BS.InterestProfileBS;

public class AuthenticateUserException extends Exception
{
	private static final Logger logger = Logger.getLogger(AuthenticateUserException.class);
	public AuthenticateUserException()
	{
		logger.info("INSIDE::AUTHENTICATE USER EXCEPTION NO RECORDS FOUND");
	}

	public String getMessage()
	{
		//System.out.println("no records are present");
		logger.info("INSIDE::GET MESSAGE METHOD NO RECORDS FOUND");
		return "norecords";
	}

	@Override
	public String toString()
	{
		logger.info("INSIDE::TO STRING METHOD");
		return super.toString();
	}

}
