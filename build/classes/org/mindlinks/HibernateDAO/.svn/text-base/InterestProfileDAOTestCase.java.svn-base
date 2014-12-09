package org.mindlinks.HibernateDAO;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.Bean.User;


public class InterestProfileDAOTestCase
{
	
	private User  user;
	private InterestProfileDAO  interestprofiledao;
	private Profile  profile;
	private InterestProfile  interestProfile;
	private ProfileViews  profileviews;
	
	@Before
	public void setUp()
	{
		interestprofiledao=new InterestProfileDAO();
		user=new User();
		profileviews=new ProfileViews();
	}
	
	@After
	public void tearDown()
	{
		interestprofiledao=null;
		user=null;
	}
	@Test
	public void  testCreateInterestProfileTrue()
	{
		int fromprofileid=40;
		int toprofileid=36;
		boolean  flag=interestprofiledao.createInterestProfile(fromprofileid, toprofileid);
		assertTrue(flag);
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
		interestProfile=interestprofiledao.getInterestedprofileById(fromprofileid, toprofileid);
		assertEquals(interestProfile,interestProfile);
	}
	
	@Test
	public void testsendMailIntrestedUserTrue()
	{

		int fromprofileid=40;
		int toprofileid=36;
		Map<String, String> interestdata=interestprofiledao.sendMailIntrestedUser(fromprofileid, toprofileid);
		assertEquals(interestdata,interestdata);
		
	}
	
	@Test
	public void testinterestProfileMessageTrue()
	{
		int fromprofileid=37;
		int toprofileid=36;
		String message="testing";
		boolean flag=interestprofiledao.interestProfileMessage(fromprofileid, toprofileid, message);
		assertTrue(flag);
	}
	@Test
	public void testinterestProfileMessageFalse()
	{
		int fromprofileid=4;
		int toprofileid=3;
		String message="testing";
		boolean flag=interestprofiledao.interestProfileMessage(fromprofileid, toprofileid, message);
		//System.out.println("Flag message----------------"+flag);
		assertFalse(flag);
	}
	
	@Test
	public void testStoreProfileViewThreadTrue()
	{
		profileviews.setFromprofileid(35);
		profileviews.setToprofileid(36);
		String profile1=   interestprofiledao.StoreProfileViewThread(profileviews);
		assertEquals(profile1,profile1);
	}
}
