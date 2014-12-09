package org.mindlinks.Actionclasses;

import org.apache.log4j.Logger;
import org.mindlinks.BS.InterestProfileBS;
import org.mindlinks.Bean.InterestProfile;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class InterestProfileAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(InterestProfileAction.class);
	InterestProfile interestprofile = new InterestProfile();
	int toprofileid;
	int fromprofileid;

	public InterestProfile getInterestprofile()
	{
		return interestprofile;
	}

	public void setInterestprofile(InterestProfile interestprofile)
	{
		this.interestprofile = interestprofile;
	}

	public int getToprofileid()
	{
		return toprofileid;
	}

	public void setToprofileid(int toprofileid)
	{
		this.toprofileid = toprofileid;
	}

	public int getFromprofileid()
	{
		return fromprofileid;
	}

	public void setFromprofileid(int fromprofileid)
	{
		this.fromprofileid = fromprofileid;
	}

	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::INSIDE THE INTEREST PROFILE ACTION EXECUTE MEHTOD  ");
		InterestProfileBS ipbs = new InterestProfileBS();
		boolean intereststatus = ipbs.createInterestProfile(getModel().getFromprofileid(), getModel().getToprofileid());
		if (intereststatus == true)
		{
			logger.info("ENTER::INSIDE THE INTEREST PROFILE ACTION EXECUTE MEHTOD SUCCESS ");
			return SUCCESS;
		}
		else
		{
			logger.error("ENTER::INSIDE THE INTEREST PROFILE ACTION EXECUTE MEHTOD ERROR ");
			return ERROR;
		}

	}

	@Override
	public void validate()
	{
		logger.info("ENTER::INSIDE THE INTEREST PROFILE ACTION VALIDATE MEHTOD  ");
		logger.info("EXIT::INSIDE THE INTEREST PROFILE ACTION EXECUTE MEHTOD  ");
	}

	@Override
	public InterestProfile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE INTEREST PROFILE ACTION GET MODEL MEHTOD  ");
		return interestprofile;
	}

}
