package org.mindlinks.Bean;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class SubscriptionTestCase
{
	
	private Subscription subscription;
	
	@Before
	public void setup()
	{
	     subscription=new Subscription();
	}
	@After
	public void tearDown()
	{
		
		subscription=null;
		
	}
	@Test
	public void testStatusTure()
	{
		  subscription.setStatus("Active");
		  assertEquals("Active", subscription.getStatus());
	}
	
	@Test
	public void testUserNameTrue()
	{
		subscription.setUsername("mindlinks");
		assertEquals("mindlinks", subscription.getUsername());
	}
	
	@Test
	public void testSubscribedIdTrue()
	{
		
		subscription.setSubscribedid(1234);
		assertEquals(1234, subscription.getSubscribedid());
		
	}
	
	@Test
	public void testUrlTrue()
	{
		subscription.setUrl("http://localhost:8080/mysangahi");
		assertEquals("http://localhost:8080/mysangahi", subscription.getUrl());
	}
	
	@Test
	public void testTempPasswordTrue()
	{
		subscription.setTemppassword("mindlinks123");
		assertEquals("mindlinks123", subscription.getTemppassword());
	}
	
	
}
