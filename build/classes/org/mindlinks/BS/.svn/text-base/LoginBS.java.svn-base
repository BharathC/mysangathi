package org.mindlinks.BS;

import org.apache.log4j.Logger;
import org.mindlinks.BO.InterestProfileBO;
import org.mindlinks.BO.LoginBO;
import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;

public class LoginBS
{
	private static final Logger logger = Logger.getLogger(LoginBS.class);
	
	public boolean authenticateUser(User user) throws AuthenticateUserException
	{
		logger.info("ENTER::THE AUTHENTICATE USER BS"+ user);
		boolean flag = true;
		LoginBO loginbo = new LoginBO();
		flag = loginbo.authenticateUser(user);
		logger.info("EXIT::THE AUTHENTICATE USER BS FLAG"+flag);
		return flag;

	}

	public Profile loadProfile(String email)
	{
		logger.info("ENTER::THE LOAD PROFILE BS"+email);
		Profile profile = null;
		LoginBO loginbo = new LoginBO();
		profile = loginbo.loadProfile(email);
		logger.info("EXIT::THE LOAD PROFILE BS"+email);
		return profile;

	}
	public MatchingProfiles  loadMatchingProfiles(String email)
	{
		logger.info("ENTER::THE LOAD MatchingProfiles BS"+email);
		MatchingProfiles matchinprofiles=null;
		LoginBO loginbo = new LoginBO();
		matchinprofiles=loginbo.loadMatchingProfiles(email);
		
		logger.info("EXIT::THE LOAD MatchingProfiles BS"+email);
		
		return matchinprofiles;
		
	}
	public boolean ClientauthenticateUser(String username,String password) throws AuthenticateUserException
	{
		logger.info("ENTER::THE AUTHENTICATE USER BS"+ username);
		boolean flag = true;
		LoginBO loginbo = new LoginBO();
		flag = loginbo.ClientauthenticateUser(username,password);
		logger.info("EXIT::THE AUTHENTICATE USER BS FLAG"+flag);
		return flag;

	}

}
