package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DisplayImageAction extends ActionSupport implements ModelDriven
{
	private int profileId;
	String photopath = null;
	Profile profile;
	private static final Logger logger = Logger.getLogger(DisplayImageAction.class);
	public int getProfileId()
	{
		return profileId;
	}

	public void setProfileId(int profileId)
	{
		this.profileId = profileId;
	}

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

	@Override
	public String execute() throws Exception
	{

		// TODO Auto-generated method stub

		logger.info("ENTER::INSIDE THE DISPLAY IMAGE ACTION EXECUTE MEHTOD  ");
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.get("myprofile") == null)
		{
			logger.info("ENTER::INSIDE THE DISPLAY IMAGE ACTION EXECUTE MEHTOD CREATING THE SESSION OBJECT  ");
			return "session";
		}
		ProfileBS profilebs = new ProfileBS();
		photopath = profilebs.getPhotoPathFromProfile(profileId);
		logger.info("EXIT::INSIDE THE DISPLAY IMAGE ACTION EXECUTE MEHTOD  ");
		return "SUCCESS";
	}

	public String getPhotopath()
	{
		return photopath;
	}

	public void setPhotopath(String photopath)
	{
		this.photopath = photopath;
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE DISPLAY IMAGE ACTION GETMODEL MEHTOD  ");
		return profile;
	}

}
