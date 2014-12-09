package org.mindlinks.BO;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mindlinks.Actionclasses.UpdateProfileAction;
import org.mindlinks.BS.InterestProfileBS;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.HibernateDAO.InterestProfileDAO;

import org.mindlinks.Utility.StoreProfileViewThread;

public class InterestProfileBO
{
	private static final Logger logger = Logger.getLogger(InterestProfileBO.class);
	
	public boolean createInterestProfile(int fromprofileid, int toprofileid )
	{
		logger.info("ENTER::THE INTEREST PROFILE BO CLASS CREATE INTEREST PROFILE METHOD");
		InterestProfileDAO ipdao = new InterestProfileDAO();
		boolean intereststatus = ipdao.createInterestProfile(fromprofileid, toprofileid);
		logger.info("EXIT::THE INTEREST PROFILE BO CLASS CREATE INTEREST PROFILE METHOD");
		return intereststatus;
	}

/*	public boolean createInterestProfile(int fromprofileid, int toprofileid )
	{
		logger.info("ENTER::THE INTEREST PROFILE BO CLASS CREATE INTEREST PROFILE METHOD");
		InterestProfileDAO ipdao = new InterestProfileDAO();
		boolean intereststatus = ipdao.createInterestProfile(fromprofileid, toprofileid);
		logger.info("EXIT::THE INTEREST PROFILE BO CLASS CREATE INTEREST PROFILE METHOD");
		return intereststatus;
	}
*/
	public ArrayList<Profile> interestedProfiles(int profileid)
	{
		logger.info("ENTER::THE INTEREST PROFILE BO INTERSTED PROFILES METHOD");
		ArrayList<Profile> profiles = null;

		InterestProfileDAO ipdao = new InterestProfileDAO();
		profiles = ipdao.interestedProfiles(profileid);
		logger.info("EXIT::THE INTEREST PROFILE BO INTERSTED PROFILES METHOD");
		return profiles;
	}

	public InterestProfile getInterestedprofileById(int fromprofileid, int toprofileid)
	{
		logger.info("ENTER::THE INTEREST GET INTEREST PROFILE BO METHOD");
		InterestProfile interestprofile = new InterestProfile();
		InterestProfileDAO ipdao = new InterestProfileDAO();
		interestprofile = ipdao.getInterestedprofileById(fromprofileid, toprofileid);
		logger.info("EXIT::THE INTEREST GET INTERESTED PROFILE BO METHOD");
		return interestprofile;
	}

	public Map<String, String> sendMailIntrestedUser(int fromprofileid, int toprofileid)
	{
		logger.info("ENTER::THE SEND MAIL INTRESTED USER BO METHOD");
		Map<String, String> interestdata = new HashMap<String, String>();
		InterestProfileDAO ipdao = new InterestProfileDAO();
		interestdata = ipdao.sendMailIntrestedUser(fromprofileid, toprofileid);
		logger.info("EXIT::THE SEND MAIL INTRESTED USER BO METHOD");
		return interestdata;
	}
	
	
	public  String StoreProfileViewThread(ProfileViews profile)
	{
		logger.info("ENTER::THE INTEREST GET INTEREST PROFILE BO METHOD"+profile.getFromprofileid());
		StoreProfileViewThread newThread = new StoreProfileViewThread(profile);
		InterestProfileDAO spvt = new InterestProfileDAO();
		 spvt.StoreProfileViewThread(profile);
		logger.info("EXIT::THE INTEREST GET INTERESTED PROFILE BO METHOD"+profile.getToprofileid());
		return "newThread";
		
	}

	public boolean interestProfileMessage(int fromprofileid,int toprofileid , String message)
	{  
		
		boolean  flag;
		logger.info("ENTER::THE INTRESTED PROFILE MESSAGE BO METHOD");
		InterestProfileBS  interestprofilebs=new InterestProfileBS();
		flag=interestprofilebs.interestProfileMessage(fromprofileid,toprofileid, message);
		logger.info("EXIT::THE INTRESTED PROFILE MESSAGE BO METHOD"+flag);
		return flag;
		
		
	}


}