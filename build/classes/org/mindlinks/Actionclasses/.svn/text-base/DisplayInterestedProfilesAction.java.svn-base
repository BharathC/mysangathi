package org.mindlinks.Actionclasses;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.InterestProfileBS;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DisplayInterestedProfilesAction extends ActionSupport implements ModelDriven{
	
	
	private int profileid;
	Profile profile = new Profile();
	ArrayList<Profile> profiles =null;
	private static final Logger logger = Logger.getLogger(DisplayInterestedProfilesAction.class);
	
	
	public int getProfileid() {
		return profileid;
	}


	public void setProfileid(int profileid) {
		this.profileid = profileid;
	}


	public Profile getProfile() {
		return profile;
	}


	public void setProfile(Profile profile) {
		this.profile = profile;
	}


	public ArrayList<Profile> getProfiles() {
		return profiles;
	}


	public void setProfiles(ArrayList<Profile> profiles) {
		this.profiles = profiles;
	}


	@Override
	public String execute() throws Exception 
	{
		logger.info("ENTER::THE DISPLAY ACTION EXECUTE METHOD");
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.get("myprofile") == null)
		{
			logger.info("ENTER:: SET THE SESSION TO MY PROFILE");
			return "session";
		}
		
		InterestProfileBS ipbs = new InterestProfileBS();
		profiles = ipbs.interestedProfiles(getModel().getProfileid());
		logger.info("ENTER::THE DISPLAY ACTION EXECUTE METHOD RETURN SUCCESS");
		return "SUCCESS";
	}
	
	
	@Override
	public Profile getModel() {
		// TODO Auto-generated method stub
		logger.info("ENTER::THE DISPLAY ACTION GET MODEL METHOD RETURN PROFILE OBJECT");
		return profile;
	}

}
