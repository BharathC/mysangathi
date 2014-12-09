package org.mindlinks.HibernateDAO;


import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.search.FullTextSession;
import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;


public class LoginDAO
{
	private static final Logger logger = Logger.getLogger(LoginDAO.class);

	public User authenticateUser(User user) throws AuthenticateUserException
	{
		logger.info("ENTER:: THE AUTHENTICATE USER DAO" +user);
		User userdb = new User();  //removed the userdb=null 27-03-03
		//String password = null;
		FullTextSession fts = null;
		//Criteria firstCriteria = null;
		SessionFactory sf = null;
		//String u = null;
		//int i;
		boolean flag = true;
		//Transaction tx = null;
		Profile   profiledb;
		String Username = user.getUsername();
		System.out.println(Username + "inside the login dao username"+Username);
		System.out.println("TILL CONFIGURATION IN HIBERNATE");
		sf = HibernateUtil.getSessionFactory();
		System.out.println("after configuration in hibernate");
		Session session = sf.openSession();
		System.out.println("AFTER SESSION INITIALIZATION");
		logger.info("ENTER::THE SESSION IN ACUTHENTICATE USER DAO  METHOD IN THE LOGIN DAO"+session);
		try
		{
			

			logger.info("INSIDE:: THE AUTHENTICATE USER DAO TRY BLOCK"+Username);
			fts = org.hibernate.search.Search.getFullTextSession(session);
			// tx = session.beginTransaction();
			//firstCriteria = session.createCriteria(User.class);
			
			profiledb = (Profile)session.createCriteria(Profile.class).add(Restrictions.eq("username",Username)).add(Restrictions.eq("profilestatus","Active")).add(Restrictions.eq("inactive","0")).uniqueResult();
			
			if(profiledb!=null)
			{
				userdb = (User)session.createCriteria(User.class).add(Restrictions.eq("username",Username)).add(Restrictions.eq("status","Active")).uniqueResult();
				/* String queryString =("from User where username = :username");
				Query query = fts.createQuery(queryString);
				query.setParameter("username", Username);
				userdb = (User) query.uniqueResult();
				//serdb = (User)query.list();*/
				logger.info("INSIDE:: After Getting User password from db"+userdb.getPassword());
				System.out.println(userdb);
				if (userdb == null)
				{
					logger.error("INSIDE:: THE AUTHENTICATE USER DAO IF CHECK THE USER DB IS NULL SEND THE EXECEPTION FLAG FALSE" + userdb);
					throw new AuthenticateUserException();
				}
				else
				{
					logger.info("INSIDE:: THE AUTHENTICATE USER DAO IF CHECK THE USER DB IS NULL SEND THE EXECEPTION FLAG" + flag);
					flag = true;
				}
			}
			else
			{
				throw new AuthenticateUserException();
			}
		}
		catch (HibernateException e)
		{
			// System.out.println("Hibernate Exception read");
			logger.error("INSIDE:: THE AUTHENTICATE USER DAO HIBERNATE EXCEPTION " + e);
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

			// if (tx != null)
			// tx.rollback();
		}
		finally
		{
			logger.info("FINALLY:: THE AUTHENTICATE USER DAO FINALLY BLOCK CLOSE SESSION");
			//fts.close();  
			session.close();

		}

		// System.out.println(flag);
		logger.info("FINALLY:: THE AUTHENTICATE USER DAO RETURNING THE USER DB");
		return userdb;
	}
	
	public User ClientauthenticateUser(String username,String password) throws AuthenticateUserException
	{
		logger.info("ENTER:: THE AUTHENTICATE USER DAO username" +username);
		User userdb = new User();  //removed the userdb=null 27-03-03
		//String password = null;
		FullTextSession fts = null;
		//Criteria firstCriteria = null;
		SessionFactory sf = null;
		//String u = null;
		//int i;
		boolean flag = true;
		//Transaction tx = null;
		Profile   profiledb;
		String Username =username;
		System.out.println(Username + "inside the login dao username"+Username);
		System.out.println("TILL CONFIGURATION IN HIBERNATE");
		sf = HibernateUtil.getSessionFactory();
		System.out.println("after configuration in hibernate");
		Session session = sf.openSession();
		System.out.println("AFTER SESSION INITIALIZATION");
		logger.info("ENTER::THE SESSION IN ACUTHENTICATE USER DAO  METHOD IN THE LOGIN DAO"+session);
		try
		{
			

			logger.info("INSIDE:: THE AUTHENTICATE USER DAO TRY BLOCK"+Username);
			fts = org.hibernate.search.Search.getFullTextSession(session);
			// tx = session.beginTransaction();
			//firstCriteria = session.createCriteria(User.class);
			
			profiledb = (Profile)session.createCriteria(Profile.class).add(Restrictions.eq("username",Username)).add(Restrictions.eq("profilestatus","Active")).add(Restrictions.eq("inactive","0")).uniqueResult();
			
			if(profiledb!=null)
			{
				userdb = (User)session.createCriteria(User.class).add(Restrictions.eq("username",Username)).add(Restrictions.eq("status","Active")).uniqueResult();
				/* String queryString =("from User where username = :username");
				Query query = fts.createQuery(queryString);
				query.setParameter("username", Username);
				userdb = (User) query.uniqueResult();
				//serdb = (User)query.list();*/
				logger.info("INSIDE:: After Getting User password from db"+userdb.getPassword());
				System.out.println(userdb);
				if (userdb == null)
				{
					logger.error("INSIDE:: THE AUTHENTICATE USER DAO IF CHECK THE USER DB IS NULL SEND THE EXECEPTION FLAG FALSE" + userdb);
					throw new AuthenticateUserException();
				}
				else
				{
					logger.info("INSIDE:: THE AUTHENTICATE USER DAO IF CHECK THE USER DB IS NULL SEND THE EXECEPTION FLAG" + flag);
					flag = true;
				}
			}
			else
			{
				throw new AuthenticateUserException();
			}
		}
		catch (HibernateException e)
		{
			// System.out.println("Hibernate Exception read");
			logger.error("INSIDE:: THE AUTHENTICATE USER DAO HIBERNATE EXCEPTION " + e);
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

			// if (tx != null)
			// tx.rollback();
		}
		finally
		{
			logger.info("FINALLY:: THE AUTHENTICATE USER DAO FINALLY BLOCK CLOSE SESSION");
			//fts.close();  
			session.close();

		}

		// System.out.println(flag);
		logger.info("FINALLY:: THE AUTHENTICATE USER DAO RETURNING THE USER DB");
		return userdb;
	}

	public Profile loadProfile(String email)
	{

		logger.info("ENTER:: THE LOAD PROFILE DAO" +email);

		logger.info("ENTER:: THE LOAD PROFILE DAO METHOD");

		Profile profile = null;
		//Transaction tx = null;
		Criteria secondCriteria = null;
		SessionFactory sf = null;
		sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		//System.out.println("username from UserAccount " + email);

		try
		{

			logger.info("ENTER:: THE LOAD PROFILE DAO TRY BLOCK"+email);

			logger.info("ENTER:: THE LOAD PROFILE DAO METHOD TRY BLOCK");

			//tx = session.beginTransaction();
			/*
			 * Query query = session1.createQuery(
			 * "select  from profile where UserName = : username");
			 * System.out.println("LoginClient.loadProfile() after query");
			 * query.setString("username",Username );
			 * System.out.println("LoginClient.loadProfile() after setstring");
			 * 
			 * Object queryResult = query.uniqueResult(); System.out.println(
			 * "LoginClient.loadProfile() after queryresult one record fetch"
			 * +"");
			 */

			secondCriteria = session.createCriteria(Profile.class);
			profile = (Profile) session.createCriteria(Profile.class).add(Restrictions.eq("email", email)).uniqueResult();

			logger.info("EXITE:: THE LOAD PROFILE DAO TRY BLOCK"+email);

			logger.info("EXITE:: THE LOAD PROFILE DAO METHOD TRY BLOCK");

		}
		catch (HibernateException e)
		{
			logger.error("INSIDE:: THE LOAD PROFILE DAO METHOD HIBERNATE EXCEPTION " + e);
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

			//if (tx != null)
				//tx.rollback();
		}
		finally
		{
			logger.info("FINALLY:: THE LOAD PROFILE DAO METHOD FINALLY BLOCK CLOSE SESSION");
			session.close();
		}

		logger.info("RETURN:: THE LOAD PROFILE DAO METHOD RETURNS THE PROFILE");
		return profile;
	}
	
	public MatchingProfiles  loadMatchingProfiles(String email)
	{
		logger.info("ENTER:: THE load Matching Profiles PROFILE DAO" +email);

		logger.info("ENTER:: THE load Matching Profiles PROFILE DAO METHOD");

		MatchingProfiles Mprofile = null;
		//Transaction tx = null;
		Criteria secondCriteria = null;
		SessionFactory sf = null;
		sf = HibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		//System.out.println("username from UserAccount " + email);

		try
		{

			logger.info("ENTER:: THE load Matching Profiles PROFILE DAO TRY BLOCK"+email);

			logger.info("ENTER:: THE load Matching Profiles PROFILE DAO METHOD TRY BLOCK");

			//tx = session.beginTransaction();
			/*
			 * Query query = session1.createQuery(
			 * "select  from profile where UserName = : username");
			 * System.out.println("LoginClient.loadProfile() after query");
			 * query.setString("username",Username );
			 * System.out.println("LoginClient.loadProfile() after setstring");
			 * 
			 * Object queryResult = query.uniqueResult(); System.out.println(
			 * "LoginClient.loadProfile() after queryresult one record fetch"
			 * +"");
			 */

			secondCriteria = session.createCriteria(MatchingProfiles.class);
			Mprofile = (MatchingProfiles) session.createCriteria(MatchingProfiles.class).add(Restrictions.eq("username", email)).uniqueResult();

			logger.info("EXITE:: THE load Matching Profiles PROFILE DAO TRY BLOCK"+email);

			logger.info("EXITE:: THE load Matching Profiles PROFILE DAO METHOD TRY BLOCK");

		}
		catch (HibernateException e)
		{
			logger.error("INSIDE:: THE load Matching Profiles PROFILE DAO METHOD HIBERNATE EXCEPTION " + e);
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

			//if (tx != null)
				//tx.rollback();
		}
		finally
		{
			logger.info("FINALLY:: THE load Matching Profiles PROFILE DAO METHOD FINALLY BLOCK CLOSE SESSION");
			session.close();
		}

		logger.info("RETURN:: THE load Matching Profiles PROFILE DAO METHOD RETURNS THE PROFILE");
		return Mprofile;
	
		
	}

	
	
	public int checkValidSession(int ToProfileId)
	{
		// retrieveValuesFromListMethod(session);
		logger.info("ENTER:: THE  checkValidSession METHOD");
		
		int result=0;
		System.out.println("---------ToProfileId---------->>>>>>>>>>>>>>"+ToProfileId);
		
		
		if(ToProfileId==0)
		{
			System.out.println("equals and valid session");
			result=ToProfileId;
			
		}else{
			System.out.println("equals and InValid session");
			result=ToProfileId;
		}
		logger.info("EXIT:: THE  checkValidSession METHOD");
		return result;
		
	}

}
