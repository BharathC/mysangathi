package org.mindlinks.HibernateDAO;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.search.FullTextSession;
import org.mindlinks.BS.UserBS;
import org.mindlinks.Bean.InterestProfile;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.Bean.ProfileViews;
import org.mindlinks.Bean.User;

public class InterestProfileDAO
{
	private static final Logger logger = Logger.getLogger(UserBS.class);

	public boolean createInterestProfile(int fromprofileid, int toprofileid)
	{
		logger.info("ENTER::THE CREATE INTEREST PROFILE  METHOD DAO");
		InterestProfile interestprofile = new InterestProfile();
		User user = null;
		SessionFactory sf = null;
		Session session = null;
		Transaction trans = null;
		Criteria crt = null;
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		int insertid = 0;
		try
		{
			logger.info("INSIDE::THE CREATE INTEREST PROFILE  METHOD DAO TRY BLOCK");
			sf =HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			
			//System.out.println("from============"+fromprofileid);
			//System.out.println("to============"+toprofileid);
			interestprofile.setFromprofileid(fromprofileid);
			interestprofile.setToprofileid(toprofileid);
			interestprofile.setRequestdate(new Date(utilDate.getTime()));
			crt = session.createCriteria(User.class);
			user = (User) crt.add(Restrictions.eq("profileid", fromprofileid)).uniqueResult();
			// new Date(utilDate.getTime())
			interestprofile.setCreatedby(user.getUsername());

			session.save(interestprofile);
			trans.commit();
			insertid = interestprofile.getInterestid();
			logger.info("EXITE::THE CREATE INTEREST PROFILE METHOD DAO TRY BLOCK");
		}
		catch (HibernateException e)
		{
			logger.error("INSIDE::THE CREATE INTEREST PROFILE METHOD  DAO CATCH BLOCK HIBERNATE EXCEPTION"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if (trans != null)
				trans.rollback();

		}
		finally
		{
			logger.info("INSIDE::THE CREATE INTEREST PROFILE  METHOD DAO FINALY BLACK SESSION CLOSED");
			session.close();

		}
		if (insertid == 0)
		{
			logger.info("INSIDE::THE CREATE INTEREST PROFILE METHOD DAO INSIDE IF RETURNING  FALSE AND INTEREST IS"+insertid);
			return false;
		}
		else
		{
			logger.info("INSIDE::THE CREATE INTEREST PROFILE METHOD DAO INSIDE IF RETURNING  TRUE AND INTEREST IS"+insertid);
			return true;
		}

	}

	public ArrayList<Profile> interestedProfiles(int profileid)
	{
		logger.info("ENTER::THE CREATE INTERESTED PROFILES MEHTOD DAO ");
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		ArrayList<InterestProfile> ips = new ArrayList<InterestProfile>();

		SessionFactory sf =HibernateUtil.getSessionFactory();
		Session session = null;
		//Transaction trans = null;
		Profile   profiledb;
		Criteria crt = null;
		Criteria crtp = null;
		try
		{
			logger.info("INSIDE::THE CREATE INTERESTED PROFILE  METHOD DAO TRY BLOCK");
			//sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			crt = session.createCriteria(InterestProfile.class);
			
			
				ips = (ArrayList<InterestProfile>) crt.add(Restrictions.eq("fromprofileid", profileid)).list();
				System.out.println(ips.size());
				for (InterestProfile interestprofile : ips)
				{
					Profile profile = null;
					crtp = session.createCriteria(Profile.class);
					profile = (Profile) crtp.add(Restrictions.eq("profileid", interestprofile.getToprofileid())).uniqueResult();
					//System.out.println("interest profile id is  "+interestprofile.getToprofileid());
					//System.out.println("==+++++++++++++++++++++++++++++++++========"+profile.getInactive());
					if(profile.getInactive().equals("0"))
					{
						profiles.add(profile);
						//System.out.println("2========================"+profile.getInactive());
					}
					
	
				}
			
			logger.info("EXITE::THE CREATE INTERESTED PROFILE METHOD DAO TRY BLOCK");
		//	trans.commit();
		}
		catch (HibernateException e)
		{
			logger.error("INSIDE::THE CREATE INTERESTED PROFILE METHOD DAO CATCH BLOCK HIBERNATE EXCEPTION"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		
		}
		finally
		{
			logger.info("ENTER::THE CREATE INTERESTED PROFILES METHOD DAO CLOSED THE SESSION");
			session.close();

		}
		logger.info("RETURNS::THE CREATE INTEREST PROFILE METHOD DAO RETURNS THE PROFILES");
		return profiles;
	}

	public InterestProfile getInterestedprofileById(int fromprofileid, int toprofileid)
	{
		logger.info("ENTER::THE GET INTERESTED PROFILE BY ID METHOD DAO");
		InterestProfile interestprofile = new InterestProfile();

		SessionFactory sf =HibernateUtil.getSessionFactory();
		Session session = null;
		//Transaction trans = null;

		Criteria crt = null;
		try
		{
			logger.info("INSIDE::THE CREATE INTEREST PROFILE METHOD DAO TRY BLOCK");
			//sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			crt = session.createCriteria(InterestProfile.class);
			interestprofile = (InterestProfile) crt.add(Restrictions.eq("fromprofileid", fromprofileid)).add(Restrictions.eq("toprofileid", toprofileid)).uniqueResult();
			//trans.commit();
			logger.info("EXITE::THE CREATE INTEREST PROFILE METHOD DAO TRY BLOCK");
		}
		catch (HibernateException e)
		{
			
			logger.error("ENTER::THE CREATE INTEREST PROFILE METHOD DAO CATCH BLOCK HIBERNATE EXCEPTION"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		finally
		{
			logger.info("ENTER::THE CREATE INTEREST PROFILE METHOD DAO FINALLY BLOCK SESSION CLOSE");
			session.close();

		}
		logger.info("ENTER::THE CREATE INTEREST PROFILE METHOD DAO RETURNING INTERESTPROFILE");
		return interestprofile;
	}

	public Map<String, String> sendMailIntrestedUser(int fromprofileid, int toprofileid)
	{
		logger.info("INSIDE::THE SEND MAIL TO  INTERESTED USER METHOD DAO");
		Profile p1 = new Profile();
		Profile p2 = new Profile();
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		//Transaction trans = null;
		Criteria cri = null;
		Criteria cri1 = null;
		try
		{
			logger.info("INSIDE::THE SEND MAIL TO  INTERESTED USER METHOD DAO TRY BLOCK");
			//sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			System.out.println(session);
			cri = session.createCriteria(Profile.class);
			p1 = (Profile) cri.add(Restrictions.eq("profileid", fromprofileid)).uniqueResult();
			cri1 = session.createCriteria(Profile.class);
			p2 = (Profile) cri1.add(Restrictions.eq("profileid", toprofileid)).uniqueResult();
			logger.info("EXIT::THE SEND MAIL TO  INTERESTED USER METHOD DAO TRY BLOCK");
			//trans.commit();

		}
		catch (HibernateException e)
		{
			// TODO: handle exception
			logger.error("INSIDE::THE SEND MAIL TO  INTERESTED USER METHOD DAO CATCH BLOCK HIBERNATE EXCEPTION"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		logger.info("INSIDE::THE SEND MAIL TO  INTERESTED USER PROFILE DAO TO SET THE VALUES INTO HASMAP");
		Map<String, String> interestdata = new HashMap<String, String>();
		interestdata.put("fromreferenceid", p1.getReferenceid());
		interestdata.put(" fromemailfromemail", p1.getEmail());
		interestdata.put("fromfirstname", p1.getFirstname());

		interestdata.put("toreferenceid", p2.getReferenceid());
		interestdata.put("toemail", p2.getEmail());
		interestdata.put("tofirstname", p2.getFirstname());
		logger.info("RETUENS::THE SEND MAIL TO  INTERESTED USER METHOD DAO RETUREN INTERESTEDDATA ");
		return interestdata;

	}
	
	public boolean interestProfileMessage(int fromprofileid,int toprofileid , String message)
	{
		
		logger.info("ENTER:: THE INTREST PROFILE MESSAGE METHOD  DAO");
		InterestProfile profile1 = null;
		boolean flag=false;
	//	AnnotationConfiguration configuration = new AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		Criteria crt = null;
		System.out.println("message from"+fromprofileid);
		System.out.println("message from to"+toprofileid);
		System.out.println("message from UI"+message);
		try
		{
			logger.info("ENTER:: THE INTREST PROFILE MESSAGE DAO TRY BLOCK");
			fts.beginTransaction();
			crt = session.createCriteria(InterestProfile.class);
			profile1 = (InterestProfile) crt.add(Restrictions.eq("fromprofileid", fromprofileid)).add(Restrictions.eq("toprofileid", toprofileid)).uniqueResult();
			if(profile1!=null)
			{
				profile1.setMessage(message);
				fts.update(profile1);
				flag=true;
				System.out.println("flag  interest profile message"+flag);
			}else{
				System.out.println("flag  interest profile message"+flag);
				flag=false;
			}
			logger.info("EXIT::THE INTREST PROFILE MESSAGE  DAO METHOD TRY BLOCK");
			
			fts.getTransaction().commit();
			logger.info("ENTER:: THE THE INTREST PROFILE MESSAGE DAO METHOD COMMIT THE TRANSACTION");
		}
		catch (Exception e)
		{
			logger.error("ENTER:: THE INTREST PROFILE MESSAGE DAO METHOD CATCH BLOCK TO  EXCEPTION  "+e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally
		{
			logger.info("ENTER:: THE INTREST PROFILE MESSAGE  DAO METHOD FINALLY BLOCK CLOSE SESSION");
			session.close();
		}
		
		return flag;
	}
	
	
	public String StoreProfileViewThread(ProfileViews profile)
	{
		logger.info("ENTER::THE STORE PROFILE VIEW THEARD IN CREATE INTEREST PROFILE  METHOD DAO");
		ProfileViews profileview = new ProfileViews();
		User user = null;
		
		SessionFactory sf = null;
		Session session = null;
		Transaction trans = null;
		
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		int insertid = 0;
		try
		{
			logger.info("INSIDE::THE STORE PROFILE VIEW THEARD IN CREATE INTEREST PROFILE  METHOD DAO TRY BLOCK");
			sf =HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			profile.setViewDate(new Date(utilDate.getTime()));
		
			System.out.println("profile dao data   "+profile.getFromprofileid());
			session.save(profile);
			trans.commit();
			
			logger.info("EXITE::THE  STORE PROFILE VIEW THEARD IN CREATE INTEREST PROFILE METHOD DAO TRY BLOCK");
		}
		catch (HibernateException e)
		{
			logger.error("INSIDE::THE  STORE PROFILE VIEW THEARD IN CREATE INTEREST PROFILE METHOD  DAO CATCH BLOCK HIBERNATE EXCEPTION"+e);
			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int j=0; j<messages.length; j++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			
			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if (trans != null)
				trans.rollback();

		}
		finally
		{
			logger.info("INSIDE::THE STORE PROFILE VIEW THEARD IN CREATE INTEREST PROFILE  METHOD DAO FINALY BLACK SESSION CLOSED");
			session.close();

		}
		return "profile";
		
	}
}
