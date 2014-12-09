package org.mindlinks.Actionclasses;

import org.mindlinks.BO.ProfileBO;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProfileStatusAction extends ActionSupport implements ModelDriven
{
	
	Profile profile = new Profile();
	int profileid ;
	String inactive;
	

	public Profile getProfile()
	{
		return profile;
	}


	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}


	public int getProfileid()
	{
		return profileid;
	}


	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}


	public String getInactive()
	{
		return inactive;
	}


	public void setInactive(String inactive)
	{
		this.inactive = inactive;
	}

	
	@Override
	public String execute() throws Exception
	{
		boolean flag;
		System.out.println("Inactiv status in action class is "+getModel().getInactive());
		ProfileBO profilebo = new ProfileBO();
		flag=profilebo.changeProfileStatus(getModel().getProfileid() , getModel().getInactive());
		// TODO Auto-generated method stub
		if(flag==true){
			return "SUCCESS";	
		}else{
			return "input";
		}
		
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		return profile;
	}

}
