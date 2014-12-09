package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UpdateProfileAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(UpdateProfileAction.class);
	Profile profile = new Profile();

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

	@Override
	public String execute()
	{
		logger.info("ENTER::INSIDE THE UpDATE PROFILE  ACTION EXECUTE METHOD ");
		ProfileBS profilebs = new ProfileBS();
		profile = profilebs.getProfileById(profile.getProfileid());
		if (profile != null)
		{
			SessionMap session = (SessionMap) ActionContext.getContext().get("session");
			if (session.isEmpty())
			{
				session.invalidate();
				return "session";
			}
			// session.put("myprofile",profile);
			logger.info("ENTER::INSIDE THE UDATE PROFILE  ACTION EXECUTE METHOD RETURN SUCCESS");
			return "SUCCESS";
		}
		else
		{
			logger.info("ENTER::INSIDE THE UDATE PROFILE  ACTION EXECUTE METHOD RETURN ERROR");
			return "error";
		}
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE UDATE PROFILE  ACTION OF GET PROFILE OBJECT GET MODEL METHOD ");
		return profile;
	}

}
