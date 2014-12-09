package org.mindlinks.Bean;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class ProfileViewsTestCase
{
	
	private ProfileViews  profileviews;
	
	@Before
	public void setup()
	{
		 profileviews=new ProfileViews();
		 
	}
	
	@After
	public void tearDown()
	{
		profileviews=null;
	}
	
	@Test
	public void testFromProfileIdTrue()
	{
		profileviews.setFromprofileid(36);
		assertEquals(36, profileviews.getFromprofileid());
	}
	
	@Test
	public void testToProfileIdTrue()
	{
		profileviews.setToprofileid(38);
		assertEquals(38, profileviews.getToprofileid());
	}
	
	@Test
	public void testProfileIdTrue()
	{
		profileviews.setToRefrenceId("39");
		assertEquals("39", profileviews.getToRefrenceId());
		
	}
}
