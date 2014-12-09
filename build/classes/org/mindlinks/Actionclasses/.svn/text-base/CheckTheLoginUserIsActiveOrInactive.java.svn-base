package org.mindlinks.Actionclasses;

import org.mindlinks.BO.ProfileBO;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CheckTheLoginUserIsActiveOrInactive extends ActionSupport implements  ModelDriven
{
	Profile  profile=new Profile();
	
	private String username;
	
	

	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		
		String status=null;
		
		ProfileBO   profilebo=new ProfileBO();
		System.out.println("=====Action class==="+getModel().getUsername());
		status=profilebo.checkTheUserIsActiveOrInactive(getModel().getUsername());
		System.out.println("----ACTION CLASS----status-----------"+status);
		return status;
	}
	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		return profile;
	}
	
	

}
