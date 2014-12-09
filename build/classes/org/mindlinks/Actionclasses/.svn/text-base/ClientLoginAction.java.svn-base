package org.mindlinks.Actionclasses;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.mindlinks.BS.InterestProfileBS;
import org.mindlinks.BS.LoginBS;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ClientLoginAction extends ActionSupport implements ModelDriven,SessionAware
{

	private static final Logger logger = Logger.getLogger(ClientLoginAction.class);
	
	
	private Map session;
	
	Profile profile;
	
	
	
	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}


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

	
	public int getProfileid()
	{
		return profileid;
	}

	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}

	public String getUsername()
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}

	public String getPassword()
	{
		return password;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}


	private int profileid;
	private String username;
	private String  password;


	@Override
	public String execute() throws Exception
	{
		
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction >>>>>>>>>>>>getProfileid>>>>>>>>>>>>>>>>>"+getProfileid());
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction user name>>>>>>>>>>>>>>>getUsername>>>>>>>>>>>>>"+getUsername());
		System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction and password>>>>>>>>>>getPassword>>>>>>>>>>>>>>>>>>"+getPassword());
	
		logger.info("ENTER::INSIDE THE ClientLoginAction EXECUTE MEHTOD  ");
		//System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+getFromprofileid());
		//System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getProfileid());
		//System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction user name>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getUsername());
		//System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<ClientLoginAction and password>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getPassword());
	
		boolean flag = false;
		LoginBS loginbs = new LoginBS();
		flag = loginbs.ClientauthenticateUser(getUsername(),getPassword());
		if (!flag)
		{  
			logger.info("ENTER::INSIDE THE IF Client Login Action  EXECUTE MEHTOD CHEKING FLAG IS FALSE FOR INVALID USER  "+flag);
			addActionError("Invalid UserName or Password ! Please try again.");

			return "error";

		}
		else
		{
			
			
		
		InterestProfileBS ipbs = new InterestProfileBS();
		
		
		MatchingProfiles  matchingprofiles=null;
		matchingprofiles = loginbs.loadMatchingProfiles(getUsername());
		System.out.println("=========================>>>"+matchingprofiles);
		if(matchingprofiles!=null)
		{
			session.put("matchprofile",matchingprofiles);
		}
		
		logger.info("ENTER::INSIDE THE IF EELSE Client Login Action EXECUTE MEHTOD CHEKING FLAG IS TRUE FOR VALID USER  "+flag);
		Profile profile = null;
		//profile = loginbs.loadProfile(user.getUsername());
		profile = loginbs.loadProfile(getUsername());
		//SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		session.put("myprofile", profile);
		
		
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		Profile temp =(Profile) session.get("myprofile");
		System.out.println("--------Login ------The profile id is --------"+temp.getProfileid());
		ProfileBS profilebs = new ProfileBS();

		//profile = profilebs.getProfileById(user.getProfileid());
		profile = profilebs.getProfileById(getProfileid());
		
		System.out.println("-----------------+++++++++++ClientLoginAction+++++++++++----------------->>>>>>>>>>>>>"+profile.getEmail());
		System.out.println("--------------------++++++++++++++ClientLoginAction+++++++-------------->>>>>>>>>>>>>"+profile.getCaste());
		System.out.println("-----------------++++++++ClientLoginAction+++++++++++++++++----------------->>>>>>>>>>>>>"+profile.getEducation());
		System.out.println("-------------------++++++++++++++ClientLoginAction++++++++++++++--------------->>>>>>>>>>>>>"+profile.getCountry());
		
		
		profiles = ipbs.interestedProfiles(getProfileid());
		
		
		Profile profilefrom = (Profile) session.get("myprofile");
		interestcount = ipbs.getInterestedprofileById(profilefrom.getProfileid(), getProfileid());
		
		
		if (profile != null)
		{

			if (session.get("myprofile") == null)
			{
				logger.info("ENTER::THE INSIDE THE  CLIENT CALL ACTION CLASS EXECUTE METHOD GET MYPROFILE IN SESSION ");
				return "session";
			}
			 session.put("profile",profile);
			logger.info("RETURN::++++++++THE INSIDE THE PROFILE CLIENT CALL ACTION  CLASS EXECUTE METHOD SUCCESS+++++++++++++");
			
			
			return "SUCCESS";
		}
		else
		{
			logger.error("RETURN::THE INSIDE THE PROFILE CLIENT CALL ACTION  CLASS EXECUTE METHOD ERROR");
			return "error";
		}
		
		}

	}

	/*	@Override
	public void validate()
	{
		logger.info("ENTER::INSIDE THE ClientLoginAction VALDATE METHOD  ");
		if (getModel().getUsername().equalsIgnoreCase(""))
		{
			addFieldError("UserName", "Please enter the Username");
		}
	if (getModel().getPassword().equalsIgnoreCase(""))
		{
			addFieldError("Password", "Please enter the Password");
		}
		logger.info("EXIT::INSIDE THE ClientLoginAction VALDATE METHOD  ");
	}*/

	/*@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE ClientLoginActionGET MODEL METHOD RETURING THE MODEL OBJECT  ");
		return user;
	}*/

	
	
	@Override
	public void setSession(Map session)
	{
		// TODO Auto-generated method stub
		this.session = session;
		
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		return profile;
	} 
	
	

}
