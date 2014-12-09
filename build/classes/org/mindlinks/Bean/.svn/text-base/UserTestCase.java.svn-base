package org.mindlinks.Bean;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;



import static org.junit.Assert.assertEquals;


public class UserTestCase 
{
	
	private User  user;
	
	@Before
	public void setup()
	{
		user=new User();
	}
	
	@After
	public void tearDown()
	{
		user=null;
	}
	
	@Test
	public void testGetUsernameTrue()
	{
		user.setUsername("javedbasha");
		assertEquals("javedbasha", user.getUsername());
		
	}


	@Test
	public void testGetCPasswordTrue()
	{
		user.setCpassword("mindlinks123");
		assertEquals("mindlinks123", user.getCpassword());
		
	}

	@Test
	public void testGetPasswordTrue()
	{
		user.setPassword("mindlinks123");
		assertEquals("mindlinks123", user.getPassword());
		
	}
	
	@Test
	public void testGetStatusTrue()
	{
		
		user.setStatus("Active");
		assertEquals("Active", user.getStatus());
	}
	
	@Test
	public void testGetUserId()
	{
		user.setUserid(111);
		assertEquals(111, user.getUserid());
		
	}
	
	@Test
	public void testGetProfileId()
	{
		user.setProfileid(222);
		assertEquals(222, user.getProfileid());
		
	}
	
}
