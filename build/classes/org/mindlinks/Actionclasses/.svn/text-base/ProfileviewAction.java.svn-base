package org.mindlinks.Actionclasses;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.InterestProfileBS;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProfileviewAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(ProfileviewAction.class);
	private int profileid;
	private String isadmin;
	private int fromprofileid;
	Profile profile;
	private int interestcount;
	ArrayList<Profile> profiles;
	InterestProfile interestprofile = new InterestProfile();

	public int getFromprofileid()
	{
		return fromprofileid;
	}

	public void setFromprofileid(int fromprofileid)
	{
		this.fromprofileid = fromprofileid;
	}

	public String getIsadmin()
	{
		return isadmin;
	}

	public void setIsadmin(String isadmin)
	{
		this.isadmin = isadmin;
	}

	public int getProfileid()
	{
		return profileid;
	}

	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}
 
	public int getInterestcount() {
		return interestcount;
	}

	public void setInterestcount(int interestcount) {
		this.interestcount = interestcount;
	}

	public static Logger getLogger() {
		return logger;
	}

	@Override
	public String execute()
	{
		logger.info("ENTER::THE INSIDE THE PROFILE VIEW ACTION CLASS EXECUTE METHOD");
		InterestProfileBS ipbs = new InterestProfileBS();
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		ProfileBS profilebs = new ProfileBS();

		profile = profilebs.getProfileById(profileid);
		profiles = ipbs.interestedProfiles(profileid);
		
		
		Profile profilefrom = (Profile) session.get("myprofile");
		interestcount = ipbs.getInterestedprofileById(profilefrom.getProfileid(), profileid);
		
		
		if (profile != null)
		{

			if (session.get("myprofile") == null)
			{
				logger.info("ENTER::THE INSIDE THE PROFILE UPDATE ACTION CLASS EXECUTE METHOD GET MYPROFILE IN SESSION ");
				return "session";
			}
			// session.put("myprofile",profile);
			logger.info("RETURN::THE INSIDE THE PROFILE UPDATE ACTION CLASS EXECUTE METHOD SUCCESS");
			return "SUCCESS";
		}
		else
		{
			logger.error("RETURN::THE INSIDE THE PROFILE UPDATE ACTION CLASS EXECUTE METHOD ERROR");
			return "error";
		}
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::THE INSIDE THE PROFILE UPDATE ACTION CLASS  GET MODEL METHOD");
		return profile;
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

	public InterestProfile getInterestprofile()
	{
		return interestprofile;
	}

	public void setInterestprofile(InterestProfile interestprofile)
	{
		this.interestprofile = interestprofile;
	}

}
