package org.mindlinks.Bean;

import java.util.Date;

public class MatchingProfiles
{
	
	private int matchingprofileid;
	private int profileid;
	private String gender;
	private  int age;
	private String religion;
	private String caste;
	private String education;
	private Date createddate;
	//private String createdby;
	private Date modifiedDate;
	private String sendnotification;
	private String fromage;
	private String username;
	private String name;
	
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	private String worklocation;

	public String getWorklocation()
	{
		return worklocation;
	}
	public void setWorklocation(String worklocation)
	{
		this.worklocation = worklocation;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	private String toage;

	public String getFromage()
	{
		return fromage;
	}
	public void setFromage(String fromage)
	{
		this.fromage = fromage;
	}
	public String getToage()
	{
		return toage;
	}
	public void setToage(String toage)
	{
		this.toage = toage;
	}
	public int getMatchingprofileid()
	{
		return matchingprofileid;
	}
	public void setMatchingprofileid(int matchingprofileid)
	{
		this.matchingprofileid = matchingprofileid;
	}
	public int getProfileid()
	{
		return profileid;
	}
	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getReligion()
	{
		return religion;
	}
	public void setReligion(String religion)
	{
		this.religion = religion;
	}
	public String getCaste()
	{
		return caste;
	}
	public void setCaste(String caste)
	{
		this.caste = caste;
	}
	public String getEducation()
	{
		return education;
	}
	public void setEducation(String education)
	{
		this.education = education;
	}
	public Date getCreateddate()
	{
		return createddate;
	}
	public void setCreateddate(Date createddate)
	{
		this.createddate = createddate;
	}
	/*public String getCreatedby()
	{
		return createdby;
	}
	public void setCreatedby(String createdby)
	{
		this.createdby = createdby;
	}*/
	public Date getModifiedDate()
	{
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate)
	{
		this.modifiedDate = modifiedDate;
	}
	public String getSendnotification()
	{
		return sendnotification;
	}
	public void setSendnotification(String sendnotification)
	{
		this.sendnotification = sendnotification;
	}

}
