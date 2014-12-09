package org.mindlinks.BS;

import static org.junit.Assert.assertEquals;



import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.BO.ProfileBO;
import org.mindlinks.Bean.Profile;


public class ProfileBSTestCase
{
	
	private Profile profile;
	private ProfileBS  profilebs;
	
	@Before
	public void setUp()
	{
		profile=new Profile();
		profilebs=new ProfileBS();
	}
	@After
	public void tearDown()
	{
		profile=null;
		profilebs=null;
	}
	@Test
	public void testCreateProfileTrue() throws ParseException
	{
	    profile.setUsername("javedbashatest");
	    String startDate="01-02-1986";
	    SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy"); 
	    // Here was the change
	    java.util.Date date = sdf1.parse(startDate);
	    java.sql.Date sqlStartDate = new Date(date.getTime());
	    
	    System.out.println(sqlStartDate);		
		profile.setDateofbirth(sqlStartDate);
		System.out.println("===================dob======================"+profile.getDateofbirth());
		profile.setGender("male");
		profile.setReligion("Hindu");
		profile.setCaste("Brahmin");
		profile.setPhoneno("9876543245");
		profile.setEmail("javedbasha.s.m01@gmail.com");
		profile.setEducation("BA");
		profile.setProfession("Accountant");
		profile.setCountry("India");
		profile.setWorkplace("bng");
		profile.setCountry("India");
		boolean registerstatus=profilebs.createProfile(profile);
		assertEquals(registerstatus,registerstatus);
	}
	
	@Test
	public void testUpdateProfileTrue() throws ParseException
	{
			String startDate="01-02-1986";
		    SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy"); 
		    
		    // Here was the change
		    java.util.Date date = sdf1.parse(startDate);
		    java.sql.Date sqlStartDate = new Date(date.getTime());
		    
		    System.out.println(sqlStartDate);		
			profile.setDateofbirth(sqlStartDate);
			System.out.println("===================dob======================"+profile.getDateofbirth());
			profile.setCaste("muslim");
		    profile.setCompanyname("mindlinks");
		    profile=profilebs.updateProfile(profile);
		    assertEquals(profile,profile);
	}
	
	@Test
	public void testGetProfileByIdTrue()
	{
		int profileid=40;
		profile=profilebs.getProfileById(profileid);
		assertEquals(profile,profile);
	}
	
	/*@Test
	public void testSearchProfilesTrue()
	{
		profile.setIsadmin("Admin");
		profile.setReligion("Hindu");
		profile.setCaste("Brahmin");
		profile.setGender("male");
		profile.setFromage("18");
		profile.setToage("37");
		ArrayList<Profile> profiles=profilebs.searchProfiles(profile);
		assertEquals(profiles,profiles);
	}*/
	
	/*@Test
	public void testGetSearchByNameProfilesTrue()
	{
		profile.
		
	}*/

}
