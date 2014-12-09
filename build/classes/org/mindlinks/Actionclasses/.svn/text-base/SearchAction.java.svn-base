package org.mindlinks.Actionclasses;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class SearchAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(ProfileviewAction.class);
	Profile profile = new Profile();
	ArrayList<Profile> profiles = new ArrayList<Profile>();
	private String isadmin;
	private String paidstatus;
	private int profileid;

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

	public String getIsadmin()
	{
		return isadmin;
	}

	public void setIsadmin(String isadmin)
	{
		this.isadmin = isadmin;
	}

	public String getPaidstatus()
	{
		return paidstatus;
	}

	public void setPaidstatus(String paidstatus)
	{
		this.paidstatus = paidstatus;
	}

	public int getProfileid()
	{
		return profileid;
	}

	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}

	@Override
	public String execute()
	{
		logger.info("ENTER::THE INSIDE THE SEARCH ACTION CLASS EXECUTE METHOD");
		int i = 0;

		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.get("myprofile") == null)
		{
			logger.info("ENTER::THE INSIDE THE SEARCH ACTION CLASS EXECUTE METHOD GET MYPROFILE IN SESSION ");
			return "session";
		}

		ProfileBS profilebs = new ProfileBS();
		profiles = profilebs.searchProfiles(profile);
		logger.info("RETURN::THE INSIDE THE SEARCH ACTION CLASS EXECUTE METHOD SUCCESS ");
		return "SUCCESS";
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE INSIDE THE SEARCH ACTION CLASS GET MODEL METHOD ");
		return profile;
	}

}
