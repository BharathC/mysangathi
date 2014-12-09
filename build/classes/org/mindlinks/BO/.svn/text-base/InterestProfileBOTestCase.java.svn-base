package org.mindlinks.BO;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.HibernateDAO.InterestProfileDAO;


public class InterestProfileBOTestCase
{
	private InterestProfile interestprofile;
	private Profile  profile;
	private  InterestProfileDAO  interestprofiledao;
	private ProfileViews  profileview;
	
	
	@Before
	public void setUp()
	{
		interestprofile=new InterestProfile();
		interestprofiledao=new InterestProfileDAO();
		profileview=new ProfileViews();
	}
	@After
	public void tearDown()
	{
		interestprofile=null;
		interestprofiledao=null;
		profileview=null;
		
	}
	@Test
	public void testCreateInterestProfileTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		boolean intereststatus=interestprofiledao.createInterestProfile(fromprofileid, toprofileid);
		assertTrue(intereststatus);
	}
	
	@Test
	public void testInterestedProfilesTrue()
	{
		int profileid=40;
		ArrayList<Profile> profile=interestprofiledao.interestedProfiles(profileid);
		assertEquals(profile,profile);
		
		
	}
	@Test
	public void testGetInterestedprofileByIdTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		InterestProfile interestprofile=interestprofiledao.getInterestedprofileById(fromprofileid, toprofileid);
		assertEquals(interestprofile,interestprofile);
	}
	
	@Test
	public void testSendMailIntrestedUserTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		Map<String, String> interestdata=interestprofiledao.sendMailIntrestedUser(fromprofileid, toprofileid);
		assertEquals(interestdata, interestdata);
		
	}
	
	@Test
	public void testStoreProfileViewThreadTrue()
	{
		profileview.setFromprofileid(40);
		profileview.setToprofileid(36);
		String profile=interestprofiledao.StoreProfileViewThread(profileview);
		assertEquals(profile, profile);
		
		
	}
	
	@Test
	public void testInterestProfileMessageTrue()
	{
		
		int fromprofileid=40;
		int toprofileid=36;
		String message="Test message test case";
		boolean  flag=interestprofiledao.interestProfileMessage(fromprofileid, toprofileid, message);
		assertTrue(flag);
		
	}
	@Test
	public void testInterestProfileMessageFalse()
	{
		
		int fromprofileid=4;
		int toprofileid=36;
		String message="Test message test case";
		boolean  flag=interestprofiledao.interestProfileMessage(fromprofileid, toprofileid, message);
		assertTrue(flag);
		
	}

}
