/**
 * 
 */
package org.mindlinks.Utility;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.search.FullTextSession;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.HibernateDAO.HibernateUtil;
import org.mindlinks.HibernateDAO.InterestProfileDAO;
import org.apache.log4j.Logger;


/**
 * @author win7
 *
 */
public  class StoreProfileViewThread extends Thread
{
	private static final Logger logger = Logger.getLogger(StoreProfileViewThread.class);

	ProfileViews profileViews = null;
	
	public StoreProfileViewThread(ProfileViews profile)
	{
		if(null != profile)
		{
			this.profileViews = profile;
		}
	}
	
	public void start()
	{
		//Do Nothing
	}
	
	public void run()
	{
		logger.info("ENTER::FROM THE STORE PROFILE VIEW THREAD");
		InterestProfileDAO spvt = new InterestProfileDAO();
		ProfileViews profile = null;
		spvt.StoreProfileViewThread(profile);
		logger.info("EXIT FROM THE STORE PROFILE VIEW THREAD");
	}

}
