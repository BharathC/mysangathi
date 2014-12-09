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

public class ClientCallAction extends ActionSupport implements ModelDriven
{
	
	private static final Logger logger = Logger.getLogger(ProfileviewAction.class);
	private int profileid;
	private String isadmin;
	private int fromprofileid;
	private int sessionprofileid;
	
	private int interestcount;
	ArrayList<Profile> profiles;
	InterestProfile interestprofile = new InterestProfile();
	
	
	public int getInterestcount()
	{
		return interestcount;
	}
	public void setInterestcount(int interestcount)
	{
		this.interestcount = interestcount;
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
	public Profile getProfile()
	{
		return profile;
	}
	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}
	public int getSessionprofileid()
	{
		return sessionprofileid;
	}
	public void setSessionprofileid(int sessionprofileid)
	{
		this.sessionprofileid = sessionprofileid;
	}
	Profile profile;
	
	
	
	
	public int getProfileid()
	{
		return profileid;
	}
	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}
	public String getIsadmin()
	{
		return isadmin;
	}
	public void setIsadmin(String isadmin)
	{
		this.isadmin = isadmin;
	}
	public int getFromprofileid()
	{
		return fromprofileid;
	}
	public void setFromprofileid(int fromprofileid)
	{
		this.fromprofileid = fromprofileid;
	}
	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		
		System.out.println("================inside execute method of clientcall getProfileid=======================>>>"+getProfileid());
		
		System.out.println("================inside execute method of clientcall getIsadmin=======================>>>"+getIsadmin());
		
		System.out.println("================inside execute method of clientcall getFromprofileid=======================>>>"+getFromprofileid());
		
		System.out.println("<<<<<<<<<<<<<<<<================inside getSessionprofileid() method of clientcall=======================>>>"+getSessionprofileid());
		
		
		if(getSessionprofileid()==0)
		{
			System.out.println("-----INSIDE IF  SESSION IS INVAL->>>>>>");
			return "REDIRECT";
		}else
		{
			System.out.println("-----INSIDE THE ELSE  VALID SESSION->>>>>>");
			
			InterestProfileBS ipbs = new InterestProfileBS();
			SessionMap session = (SessionMap) ActionContext.getContext().get("session");
			Profile temp =(Profile) session.get("myprofile");
			System.out.println("--------Login ------The profile id is --------"+temp.getProfileid());
			ProfileBS profilebs = new ProfileBS();

			profile = profilebs.getProfileById(profileid);
			
			System.out.println("---------------------------------->>>>>>>>>>>>>"+profile.getEmail());
			System.out.println("---------------------------------->>>>>>>>>>>>>"+profile.getCaste());
			System.out.println("---------------------------------->>>>>>>>>>>>>"+profile.getEducation());
			System.out.println("---------------------------------->>>>>>>>>>>>>"+profile.getCountry());
			profiles = ipbs.interestedProfiles(profileid);
			
			
			Profile profilefrom = (Profile) session.get("myprofile");
			interestcount = ipbs.getInterestedprofileById(profilefrom.getProfileid(), profileid);
			
			
			if (profile != null)
			{

				if (session.get("myprofile") == null)
				{
					logger.info("ENTER::THE INSIDE THE  CLIENT CALL ACTION CLASS EXECUTE METHOD GET MYPROFILE IN SESSION ");
					return "session";
				}
				// session.put("myprofile",profile);
				logger.info("RETURN::THE INSIDE THE PROFILE CLIENT CALL ACTION  CLASS EXECUTE METHOD SUCCESS");
				return "SUCCESS";
			}
			else
			{
				logger.error("RETURN::THE INSIDE THE PROFILE CLIENT CALL ACTION  CLASS EXECUTE METHOD ERROR");
				return "error";
			}
		
			
			//return "SUCCESS";
		}
		
		
		
		
		
		
		//return "SUCCESS";
	}
	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		return profile;
	}


}
