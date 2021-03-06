package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProfileAction extends ActionSupport implements ModelDriven
{

	private static final Logger logger = Logger.getLogger(ProfileAction.class);
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
	public String execute() throws Exception
	{
		logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD ");
		//profile.getDateofbirth().
		ProfileBS profilebs = new ProfileBS();
		
		//profilebs.toConvertMysangathiUserToLeads(profile);

		Boolean registerstatus = profilebs.createProfile(profile);

		if (registerstatus == true)
		{
			logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD SUCCESS");
		//22 	profilebs.toConvertMysangathiUserToLeads(profile);
			return "SUCCESS";
		}
		else
		{
			logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD SUCCESS INPUT");
			return "input";
		}

	}

	@Override
	public void validate()
	{
		logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS VALIDATE METHOD ");
		logger.info("EXIT::THE INSIDE THE PROFILE ACTION CLASS VALIDATE METHOD ");
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS GET MODEL OBJECT METHOD ");
		return profile;
	}

}
