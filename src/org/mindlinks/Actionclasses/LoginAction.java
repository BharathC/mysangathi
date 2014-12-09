package org.mindlinks.Actionclasses;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.mindlinks.BS.LoginBS;
import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class LoginAction extends ActionSupport implements ModelDriven,SessionAware
{
	
	private Map session;
	User user = new User();
	private static final Logger logger = Logger.getLogger(LoginAction.class);

	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::INSIDE THE LOGIN ACTION EXECUTE MEHTOD  ");
		
		boolean flag = false;

		LoginBS loginbs = new LoginBS();
		flag = loginbs.authenticateUser(user);
		logger.info("ENTER::INSIDE THE LOGIN ACTION EXECUTE MEHTOD CHEKING FLAG IS FALSE FOR INVALID USER  "+flag);
		if (!flag)
		{  
			logger.info("ENTER::INSIDE THE IF LOGIN ACTION EXECUTE MEHTOD CHEKING FLAG IS FALSE FOR INVALID USER  "+flag);
			addActionError("Invalid UserName or Password ! Please try again.");

			return "error";

		}
		else
		{
			logger.info("ENTER::INSIDE THE IF EELSE LOGIN ACTION EXECUTE MEHTOD CHEKING FLAG IS TRUE FOR VALID USER  "+flag);
			Profile profile = null;
			profile = loginbs.loadProfile(user.getUsername());
			//SessionMap session = (SessionMap) ActionContext.getContext().get("session");
			session.put("myprofile", profile);
			
			MatchingProfiles  matchingprofiles=null;
			matchingprofiles = loginbs.loadMatchingProfiles(user.getUsername());
			System.out.println("=========================>>>"+matchingprofiles);
			if(matchingprofiles!=null)
			{
				session.put("matchprofile",matchingprofiles);
			}
			
			// retrieveValuesFromListMethod(session);
			SessionMap session2 = (SessionMap) ActionContext.getContext().get("session");
			Profile temp =(Profile) session2.get("myprofile");
			
		
			System.out.println("--------Login ------The profile id is --------"+temp.getProfileid());
			//System.out.println("--------------firstname is  is --------"+profile9.getFirstname());
		
			
			System.out.println("<<<<<<<<<<<===============The session data is==============>>>>>>>>>>>");
			logger.info("ENTER::INSIDE THE LOGIN ACTION EXECUTE MEHTOD RETURNS SUCCESS "+flag);
			return "SUCCESS";
		}

	}

	@Override
	public void validate()
	{
		logger.info("ENTER::INSIDE THE LOGIN ACTION VALDATE METHOD  ");
		if (getModel().getUsername().equalsIgnoreCase(""))
		{
			addFieldError("UserName", "Please enter the Username");
		}
		if (getModel().getPassword().equalsIgnoreCase(""))
		{
			addFieldError("Password", "Please enter the Password");
		}
		logger.info("EXIT::INSIDE THE LOGIN ACTION VALDATE METHOD  ");
	 
	}

	@Override
	public User getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE LOGIN ACTION GET MODEL METHOD RETURING THE MODEL OBJECT  ");
		return user;
	}

	@Override
	public void setSession(Map session)
	{
		// TODO Auto-generated method stub
		this.session = session;
		
	} 
	
	/*This method retrieves values from Map
     */
    public static void retrieveValuesFromListMethod(Map session)
    {
        Set keys = session.keySet();
        Iterator itr = keys.iterator();
 
        String key;
        String value;
        while(itr.hasNext())
        {
            key = (String)itr.next();
            value = (String)session.get(key);
            System.out.println(key + " -------------------------------------- "+ value);
        }
    }

}
