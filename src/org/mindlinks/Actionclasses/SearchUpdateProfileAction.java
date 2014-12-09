package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchUpdateProfileAction extends ActionSupport
{
	private static final Logger logger = Logger.getLogger(SearchUpdateProfileAction.class);
	private String referenceid;
	Profile profile;

	public String getReferenceid()
	{
		return referenceid;
	}

	public void setReferenceid(String referenceid)
	{
		this.referenceid = referenceid;
	}

	@Override
	public String execute()
	{
		logger.info("ENTER::INSIDE THE SEARCH UPDATE PROFILE ACTION EXECUTE METHOD ");
		int profileid = 0;
		String s1 = "BG-000";
		String s2 = "BR-000";
		if ((referenceid.contains(s1)) || (referenceid.contains(s2)))
		{
			String tempid = referenceid.substring(5);

			profileid = Integer.parseInt(tempid);
		}

		ProfileBS profilebs = new ProfileBS();
		profile = profilebs.getProfileById(profileid);
		if (profile != null)
		{ 
			logger.info("ENTER::INSIDE THE SEARCH UPDATE PROFILE ACTION EXECUTE METHOD TO SET SESSION TO PROFILE  ");
			SessionMap session = (SessionMap) ActionContext.getContext().get("session");
			if (session.isEmpty())
			{
				session.invalidate();
				return "session";
			}
			// session.put("myprofile",profile);
			logger.info("ENTER::INSIDE THESEARCH UPDATE PROFILE ACTION EXECUTE METHOD RETURN SUCCESS ");
			return "SUCCESS";
		}
		else
		{
			logger.error("ENTER::INSIDE THESEARCH UPDATE PROFILE ACTION EXECUTE METHOD RETURN ERROR ");
			addActionError("Invalid ReferenceId ! Please try again.");
			return "error";
		}
	}

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

}
