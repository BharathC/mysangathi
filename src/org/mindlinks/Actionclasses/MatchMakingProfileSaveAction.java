package org.mindlinks.Actionclasses;

import java.nio.channels.SeekableByteChannel;
import java.util.Map;

import org.apache.poi.hssf.record.formula.functions.Request;
import org.apache.struts2.interceptor.SessionAware;
import org.mindlinks.BO.MatchMakingProfileBO;
import org.mindlinks.BS.LoginBS;
import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.log4j.Logger;

public class MatchMakingProfileSaveAction extends ActionSupport implements ModelDriven,SessionAware
{
	private static final Logger logger=Logger.getLogger(MatchMakingProfileSaveAction.class);
	private Map session;
	MatchingProfiles  matchingprofiles=new MatchingProfiles();
	LoginBS loginbs = new LoginBS();
	User user=new User();
	
	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}
	@Override
	public String execute() throws Exception
	{
		// TODO Auto-generated method stub
		boolean flag=false;
		logger.info("Updating MatchMakingProfileSaveAction profile");
		System.out.println("the from age is"+matchingprofiles.getFromage());
		System.out.println("the to age is"+matchingprofiles.getToage());
		System.out.println("the religion is"+matchingprofiles.getReligion());
		System.out.println("the cast is"+matchingprofiles.getCaste());
		System.out.println("the profile id is"+matchingprofiles.getProfileid());
		System.out.println("the profile id is====================getUsername================>>>"+matchingprofiles.getUsername());
		System.out.println("the the education is"+matchingprofiles.getEducation());
		System.out.println("The work location is"+matchingprofiles.getWorklocation());
		

		MatchMakingProfileBO  matchmakingbo=new MatchMakingProfileBO();
		matchmakingbo.saveMatchMakingProfile(matchingprofiles);
		
		logger.info("Updating MatchMakingProfileSaveAction profile");
		MatchingProfiles  matchingprofiles1=null;
		System.out.println(user.getUsername());
		matchingprofiles1=loginbs.loadMatchingProfiles(matchingprofiles.getUsername());
		System.out.println("---------------------------->>>>"+matchingprofiles1.getEducation());
		session.put("matchprofile", matchingprofiles1);
		logger.info("the flag is"+flag);
		
		

		
		
		return "SUCCESS";
		
	}

	@Override
	public MatchingProfiles getModel()
	{
		// TODO Auto-generated method stub
		return matchingprofiles;
	}

	@Override
	public void setSession(Map session)
	{
		// TODO Auto-generated method stub
		this.session = session;
		
	}
	@Override
	public void validate()
	{
		logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS VALIDATE METHOD ");
		logger.info("EXIT::THE INSIDE THE PROFILE ACTION CLASS VALIDATE METHOD ");
	}
}
