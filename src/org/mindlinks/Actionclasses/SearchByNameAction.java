package org.mindlinks.Actionclasses;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SearchByNameAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(ProfileviewAction.class);
	private String name;
	private String isadmin;
	public String getIsadmin()
	{
		return isadmin;
	}

	public void setIsadmin(String isadmin)
	{
		this.isadmin = isadmin;
	}

	Profile profile = new Profile();
	ArrayList<Profile> profiles = new ArrayList<Profile>();

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

	public ArrayList<Profile> getProfiles()
	{
		return profiles;
	}

	public void setProfiles(ArrayList<Profile> profiles)
	{
		this.profiles = profiles;
	}

	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE INSIDE THE SEARCH BY NAME ACTION CLASS EXECUTE METHOD");
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.get("myprofile") == null)
		{
			logger.info("ENTER::THE INSIDE THE SEARCH BY NAME ACTION CLASS EXECUTE METHOD GET MYPROFILE IN SESSION ");
			return "session";
		}
		ProfileBS profilebs = new ProfileBS();
		profiles = profilebs.searchByNameProfiles(profile);
		logger.info("RETURN::THE INSIDE THE SEARCH BY NAME ACTION CLASS EXECUTE METHOD RETURN SUCCESS");
		return "SUCCESS";
		
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE INSIDE THE SEARCH BY NAME ACTION CLASS GET METHOD");
		return profile;
	}

}
