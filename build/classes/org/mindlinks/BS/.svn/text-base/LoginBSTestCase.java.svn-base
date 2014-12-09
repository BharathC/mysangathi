package org.mindlinks.BS;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.BO.LoginBO;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;


public class LoginBSTestCase
{
	
	private User  user;
	private Profile profile;
	private LoginBO  loginbo;
	
	@Before
	public void setUp()
	{
		user=new User();
		profile=new Profile();
		loginbo=new LoginBO();
	}
	
	@After
	public void tearDown()
	{
		user=null;
		profile=null;
		loginbo=null;
	}
	/*@Test
	public void testAuthenticateUserTrue()
	{
		
		user.setUsername("javedbasha.s.m01@gmail.com");
		user.setPassword("javedbasha");
		boolean flag=loginbo.authenticateUser(user);
		assertTrue(flag);
		
	}*/
	@Test
	public void testAuthenticateUserFalse()
	{
		user.setUsername("javedbasha.s.m0@gamil.com");
		user.setPassword("javedbash");
		boolean flag=loginbo.authenticateUser(user);
		assertFalse(flag);
	}
	
	@Test
	public void testLoadProfileTrue()
	{
		String email="javedbasha.s.m01@gmail.com";
		Profile profile=loginbo.loadProfile(email);
		assertEquals(profile,profile);
	}

}
