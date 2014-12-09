package org.mindlinks.Bean;

import java.util.Date;

public class Notifications
{
	private int notificationid;
	private int matchingprofileid;
	private int referenceid;
	private String name;
	private int age;
	private String education;
	private String caste;
	private String city;
	private String state;
	private String contry;
	private Date notificationdate;
	public int getNotificationid()
	{
		return notificationid;
	}
	public void setNotificationid(int notificationid)
	{
		this.notificationid = notificationid;
	}
	public int getMatchingprofileid()
	{
		return matchingprofileid;
	}
	public void setMatchingprofileid(int matchingprofileid)
	{
		this.matchingprofileid = matchingprofileid;
	}
	public int getReferenceid()
	{
		return referenceid;
	}
	public void setReferenceid(int referenceid)
	{
		this.referenceid = referenceid;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getEducation()
	{
		return education;
	}
	public void setEducation(String education)
	{
		this.education = education;
	}
	public String getCaste()
	{
		return caste;
	}
	public void setCaste(String caste)
	{
		this.caste = caste;
	}
	public String getCity()
	{
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public String getState()
	{
		return state;
	}
	public void setState(String state)
	{
		this.state = state;
	}
	public String getContry()
	{
		return contry;
	}
	public void setContry(String contry)
	{
		this.contry = contry;
	}
	public Date getNotificationdate()
	{
		return notificationdate;
	}
	public void setNotificationdate(Date notificationdate)
	{
		this.notificationdate = notificationdate;
	}

}
