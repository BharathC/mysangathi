package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.Bean.InterestProfile;

import com.opensymphony.xwork2.ActionSupport;

public class AdminMessageAction  extends ActionSupport
{
	private static	final Logger logger = Logger.getLogger(AdminMessageAction.class);
	
	InterestProfile  intresstprofile=new InterestProfile();
	


	private int fromprofileid;

	private int toprofileid;




	public InterestProfile getIntresstprofile()
	{
		return intresstprofile;
	}




	public void setIntresstprofile(InterestProfile intresstprofile)
	{
		this.intresstprofile = intresstprofile;
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




	@Override
	public String execute() throws Exception
	{
		System.out.println("from=================="+fromprofileid);
		System.out.println("to====================="+toprofileid);
		System.out.println("normal i id    "  +getToprofileid());
		System.out.println("get i id    "  +getFromprofileid());
		// TODO Auto-generated method stub
		logger.info("INSIDE::THE ADMIN MASSAGE ACTION CLASS");
		return "SUCCESS";
	}

}