package org.mindlinks.HibernateDAO;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;

import com.mchange.util.AssertException;


public class LoginDAOTestCase
{
	private User user;
	private Profile profile;
	
	private LoginDAO  logindao;
	
	@Before
	public void setUp()
	{
		user=new User();
		profile=new Profile();
		logindao=new LoginDAO();
	}
	@After
	public void tearDown()
	{
		user=null;
		logindao=null;
	}
	@Test
	public void testAuthenticateUserTrue() throws AuthenticateUserException
	{
		user.setUsername("javedbasha.s.m01@gmail.com");
		user.setPassword("javedbasha");
		User userdb=logindao.authenticateUser(user);
		assertEquals(userdb,userdb);
		
		
	}
	
	@Test
	public void testLoadProfileTrue()
	{
		//profile.setEmail("javedbasha.s.m01@gmail.com");
		String email="javedbasha.s.m01@gmail.cdom";
		Profile  profile=logindao.loadProfile(email);
		assertEquals(profile,profile);
	}

	
	
}
