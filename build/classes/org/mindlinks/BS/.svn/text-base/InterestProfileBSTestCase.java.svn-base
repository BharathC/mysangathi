package org.mindlinks.BS;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.BO.InterestProfileBO;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;


public class InterestProfileBSTestCase
{
	
	private InterestProfile  interestprofile;
	private Profile  profile;
	private InterestProfileBS  interestprofilebs;
	
	@Before
	public void setUp()
	{   
		profile=new Profile();
		interestprofile=new InterestProfile();
		interestprofilebs=new InterestProfileBS();
		
	}
	@After
	public  void tearDown()
	{
		interestprofile=null;
		interestprofilebs=null;
		
	}
	@Test
	public void createInterestProfileTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		boolean intereststatus=interestprofilebs.createInterestProfile(fromprofileid, toprofileid);
		assertTrue(intereststatus);
	}
	
	/*@Test
	public void createInterestProfileFalse()
	{
		int fromprofileid=4;
		int toprofileid=36;
		boolean intereststatus=interestprofilebs.createInterestProfile(fromprofileid, toprofileid);
		assertFalse(intereststatus);
	}*/
	
	@Test
	public void testInterestedProfilesTrue()
	{
		int profileid=38;
		ArrayList<Profile> profile=interestprofilebs.interestedProfiles(profileid);
		assertEquals(profile,profile);
		
	}
	
	@Test
	public void testGetInterestedProfileByIdOneTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		int interestprofile=interestprofilebs.getInterestedprofileById(fromprofileid, toprofileid);
		//System.out.println("++++++++++++++++++++++++++"+interestprofile);
		assertEquals(interestprofile,interestprofile);
		
	}
	@Test
	public void testGetInterestedProfileByIdZeroTrue()
	{
		int fromprofileid=4;
		int toprofileid=36;
		int interestprofile=interestprofilebs.getInterestedprofileById(fromprofileid, toprofileid);
		//System.out.println("++++++++++++++++++++++++++"+interestprofile);
		assertEquals(interestprofile,interestprofile);
		
	}
	
	/*@Test
	public void testInterestProfileMessageTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		String message="Testing Message";
		boolean flag=interestprofilebs.interestProfileMessage(fromprofileid, toprofileid, message);
		assertTrue(flag);
	}

	@Test
	public void testInterestProfileMessageFalse()
	{
		int fromprofileid=4;
		int toprofileid=36;
		String message="Testing Message";
		boolean flag=interestprofilebs.interestProfileMessage(fromprofileid, toprofileid, message);
		assertTrue(flag);
	}*/
}

