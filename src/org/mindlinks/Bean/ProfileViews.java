package org.mindlinks.Bean;

import java.sql.Date;

public class ProfileViews
{
	private int fromprofileid;
	private int toprofileid;
	private Date viewDate;
	private int profileid;

	public int getProfileid()
	{
		return profileid;
	}
	public void setProfileid(int profileid)
	{
		this.profileid = profileid;
	}
	public int getFromprofileid()
	{
		return fromprofileid;
	}
	public void setFromprofileid(int fromprofileid)
	{
		this.fromprofileid = fromprofileid;
	}
	public int getToprofileid()
	{
		return toprofileid;
	}
	public void setToprofileid(int toprofileid)
	{
		this.toprofileid = toprofileid;
	}
	public Date getViewDate()
	{
		return viewDate;
	}
	public void setViewDate(Date viewDate)
	{
		this.viewDate = viewDate;
	}
	
	public String getToRefrenceId()
	{
		return toRefrenceId;
	}
	public void setToRefrenceId(String toRefrenceId)
	{
		this.toRefrenceId = toRefrenceId;
	}
	private String toRefrenceId;
}
