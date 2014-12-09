package org.mindlinks.HibernateDAO;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.search.FullTextSession;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.Subscription;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;

public class UserDAO
{
	private static final Logger logger = Logger.getLogger(UserDAO.class);

	public String checkuserpassword(String username, String password)
	{
		logger.info("ENTER::CHECK USER PASSWORD USER DAO METHOD");
		SessionFactory sf = null;
		Session session = null;

		logger.info("ENTER::CHECK USER PASSWORD USER DAO METHOD SESSION");
		Transaction trans = null;

	//	Transaction trans = null;

		Criteria firstCriteria = null;
		Subscription subscription = null;
		try
		{
			logger.info("ENTER::CHECK USER PASSWORD USER DAO METHOD TRY BLACK");
			sf =HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			firstCriteria = session.createCriteria(Subscription.class);
			subscription = (Subscription) session.createCriteria(Subscription.class).add(Restrictions.eq("username", username)).uniqueResult();
			// Query query =
			// session.createQuery("from subscription where UserName = :username");
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
			logger.info("EXIT::CHECK USER PASSWORD USER DAO METHOD");
			//trans.commit();
		}
		catch (HibernateException e)
		{
			logger.error("INSIDE::CHECK USER PASSWORD USER DAO METHOD CATCH BLACK HIBERNATE EXCEPTION"+e);
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
			//if (trans != null)
			//	trans.rollback();

		}
		finally
		{
			logger.info("INSIDE::CHECK USER PASSWORD USER DAO METHOD FINALLY BLACK SESSION CLOSED");
			session.close();

		}
		if (subscription == null)
		{
			logger.error("INSIDE::CHECK USER PASSWORD USER DAO METHOD IF BLACK SUBSCRIPTIO EQUALS TO NULL"+subscription);
			return "error";
		}
		else if (subscription.getTemppassword().equals(password))
		{ 
			logger.info("INSIDE::CHECK USER PASSWORD USER DAO METHOD IF BLACK SUBSCRIPTIO EQUALS TO PASSWORD");
			UserDAO userclient = new UserDAO();
			String statusflag = userclient.createAccount(username, password);
			return statusflag;

		}
		else
		{
			logger.error("INSIDE::CHECK USER PASSWORD USER DAO METHOD ELSE BLACK ERROR ");
			return "error";
		}

	}

	public String createAccount(String username, String password)
	{
		logger.info("ENTER::CHECK CREATE ACCOUNT DAO METHOD");
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		SessionFactory sf = null;
		int profileid;
		FullTextSession fts = null;

		Session session = null;
		logger.info("ENTER::CHECK CREATE ACCOUNT METHOD SESSION STARTS");
		Transaction trans = null;
		Subscription subscription = null;
		User user = null;
		User user1 = null;
		try
		{
			logger.info("ENTER::CHECK CREATE ACCOUNT DAO METHOD TRY BLACK");
			sf = HibernateUtil.getSessionFactory();

			session = sf.openSession();
			fts = org.hibernate.search.Search.getFullTextSession(session);
			trans = session.beginTransaction();
			String queryString = "from Subscription  where username = :username";
			Query query = fts.createQuery(queryString);
			query.setParameter("username", username);
			subscription = (Subscription) query.uniqueResult();
			subscription.setStatus("Active");
			fts.update(subscription);
			Query query1 = fts.createQuery("from Profile where username = :username");
			query1.setParameter("username", username);
			Profile profile = (Profile) query1.uniqueResult();

			Query query2 = fts.createQuery("from User where username = :username");
			query2.setParameter("username", username);
			user1 = (User) query2.uniqueResult();
			System.out.println("username from user table" + user1);
			if (user1 == null)
			{
				logger.info("ENTER::CHECK CREATE ACCOUNT DAO METHOD TRY BLACK  IF URSER1 EQUALS TO NULL");
				keybytes = password.getBytes("UTF8");
				DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

				SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
				SecretKey SECkey = keyFactory.generateSecret(keySpec);
				Cipher cipher = Cipher.getInstance("DES");

				// ENCRYPTION
				cipher.init(Cipher.ENCRYPT_MODE, SECkey);
				byte[] encryptedBytes = cipher.doFinal(keybytes);
				password = new sun.misc.BASE64Encoder().encode(encryptedBytes);

				user = new User();
				java.util.Calendar cal = java.util.Calendar.getInstance();
				java.util.Date utilDate = cal.getTime();
				user.setCreateddate(new Date(utilDate.getTime()));
				user.setPassword(password);
				user.setUsername(username);
				user.setPreviouspassword(password);
				user.setStatus("Active");
				user.setProfileid(profile.getProfileid());

				fts.save(user);
				profile.setProfilestatus("Active");
				profile.setName(profile.getFirstname());
				fts.update(profile);
				logger.info("EXIT::CHECK CREATE ACCOUNT DAO METHOD TRY BLACK IF ");
			}

			//System.out.println("Profile id is  " + profile.getProfileid());
			//System.out.println("Profile  caste is  " + profile.getCaste());

			trans.commit();
		}
		catch (HibernateException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD HIBERNATE EXCEPTION "+e);
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
		catch (IOException e)
		{

			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD IO EXCEPTION "+e);
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
		catch (IllegalBlockSizeException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD ILLEGAL BLOCK SIZE EXCEPTION "+e);
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
		catch (BadPaddingException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD BAD PADDIONG EXCEPTION EXCEPTION "+e);
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
		catch (InvalidKeyException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD INVALID KEY  EXCEPTION "+e);
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
		catch (NoSuchAlgorithmException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD NO SUCH ALGORITHM  EXCEPTION "+e);
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
		catch (NoSuchPaddingException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD NO SUCH PADDING  EXCEPTION "+e);
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
		catch (InvalidKeySpecException e)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD INVALID KEY SPEC EXCEPTION "+e);
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
			logger.info("ENTER::CHECK CREATE ACCOUNT DAO METHOD FINALLY SESSION CLOSED ");
			fts.close();
			
		}
		if (trans == null)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD TRANSACTON IS NULL"+trans);
			return "error";

		}
		else if (user1 != null)
		{
			logger.error("ENTER::CHECK CREATE ACCOUNT DAO METHOD USER1 NOT NULL RETURN ACTIVE"+user1);
			return "active";
		}
		else
		{
			logger.info("ENTER::CHECK CREATE ACCOUNT DAO METHOD USER1 EQUELS TO NULL ACCESS");
			return "access";
		}

	}

	public Boolean setInitialPassword(String username, String password)
	{
		logger.info("ENTER::CHECK SET INITIAL PASSWORD METHOD"+password);
		SessionFactory sf = null;
		Session session = null;
		logger.info("ENTER::CHECK SET INITIAL PASSWORD METHOD SESSION STARTS"+password);
		Transaction trans = null;
		User user = null;
		try
		{
			logger.info("ENTER::CHECK SET INITIAL PASSWORD METHOD TRY BLACK"+password);
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			Query query = session.createQuery("from User where username = :username");
			query.setParameter("username", username);
			user = (User) query.uniqueResult();

			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
		     user.setPassword(password);
		    //java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			user.setPreviouspasswordmodifieddate(new Date(utilDate.getTime()));
			user.setLastmodifieddate(new Date(utilDate.getTime()));
			//user.setPassword(password);
			
			logger.info("EXIT::CHECK SET INITIAL PASSWORD METHOD TRY BLACK"+password);
			session.update(user);
			trans.commit();
		}
		catch (HibernateException e)
		{
			logger.error("INSIDE::CHECK SET INITIAL PASSWORD METHOD HIBERNATE EXCEPTION"+e);
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
				logger.info("INSIDE::CHECK SET INITIAL PASSWORD METHOD TRANSACTION NOT NULL ROLLBACK"+trans);
				trans.rollback();

		}
		finally
		{
			logger.info("INSIDE::CHECK SET INITIAL PASSWORD METHOD COLSED THE SESSION");
			session.close();

		}
		if (trans == null)
		{
			logger.info("INSIDE::CHECK SET INITIAL PASSWORD METHOD TRANSACTION EQUALS TO NULL RETURN FALSE"+trans);
			return false;
		}
		else
			logger.info("INSIDE::CHECK SET INITIAL PASSWORD METHOD TRANSACTION EQUALS TO NULL RETURN TRUE"+trans);
			return true;
	}

	public boolean SetPassword(User user)
	{
		boolean flag=false;
		logger.info("Enter into change password "+user);
		String Username = user.getUsername();
		SessionFactory sf = null;
		Session session = null;
		Transaction trans = null;
		User userdb=null;
		try
		{
			logger.info("Enter into set password try block");
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			userdb = (User) session.createCriteria(User.class).add(Restrictions.eq("username", Username)).add(Restrictions.eq("status", "Active")). uniqueResult();
			if(userdb!=null)
			{
			System.out.println("inside set password method  if condition");
			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			userdb.setPreviouspasswordmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastaccesseddate(new Date(utilDate.getTime()));
			userdb.setPreviouspassword(userdb.getPassword());
			userdb.setPassword(user.getPassword());

			
			session.update(userdb);
			logger.info("Exit into set password try block");
			trans.commit();
			System.out.println("transaction inside the change passwodr is"+userdb);
			flag=true;
			}else
			{
				flag=false;
				System.out.println("The userdb is null"+flag);
			}
		}
		catch (HibernateException e)
		{
			logger.info("Enter into set password catch block");
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
			//if (trans != null)
				//trans.rollback();
			//e.printStackTrace();
			
		}
		finally
		{
			logger.info("Enter into set password catch block");
			session.close();

		}
		
		return flag;
	}
	
	public boolean checkusername(String username)
	{
		
		 User userdb = null;
		SessionFactory sf = null;
		Session session = null;

		logger.info("ENTER INTO THE SESSION IN THE CHECK USERNAME IN THE PROFILE DAO"+username);
		Transaction trans = null;

		//Transaction trans = null;
		Criteria firstCriteria = null;
		Subscription subscription = null;
		
		
		
		try
		{
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			firstCriteria = session.createCriteria(User.class);
			 userdb = (User) session.createCriteria(User.class).add(Restrictions.eq("username", username)).uniqueResult();
			// Query query =
			// session.createQuery("from subscription where UserName = :username");
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
		//	trans.commit();
		}
		catch (HibernateException e)
		{
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
			//if (trans != null)
			//	trans.rollback();

		}
		finally
		{
			session.close();
		}
	  
		return false;
		
	}
	
	public boolean SetForgetPassword(User user)
	{
		boolean flag=false;
		logger.info("Enter into change password "+user);
		String Username = user.getUsername();
		SessionFactory sf = null;
		Session session = null;
		Transaction trans = null;
		User userdb=null;
		try
		{
			logger.info("Enter into set password try block");
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			userdb = (User) session.createCriteria(User.class).add(Restrictions.eq("username", Username)).add(Restrictions.eq("status", "Active")). uniqueResult();
			if(userdb!=null)
			{
			System.out.println("inside set password method  if condition");
			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			userdb.setPreviouspasswordmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastaccesseddate(new Date(utilDate.getTime()));
			userdb.setPreviouspassword(userdb.getPassword());
			userdb.setPassword(user.getPassword());

			
			session.update(userdb);
			logger.info("Exit into set password try block");
			trans.commit();
			System.out.println("transaction inside the change passwodr is"+userdb);
			flag=true;
			}else
			{
				flag=false;
				System.out.println("The userdb is null"+flag);
			}
		}
		catch (HibernateException e)
		{
			logger.info("Enter into set password catch block");
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
			//if (trans != null)
				//trans.rollback();
			//e.printStackTrace();
			
		}
		finally
		{
			logger.info("Enter into set password catch block");
			session.close();

		}
		
		return flag;
	}
	
	/*public boolean SetForgetPassword(User user)
	{
		boolean flag=false;
		logger.info("Enter into change password ");
		String Username = user.getUsername();
		SessionFactory sf = null;
		Session session = null;
		logger.info("ENTER THE SET FORGOT PASSWORD IN THE USER DAO ");
		Transaction trans = null;
		User userdb=null;
		try
		{
			logger.info("Enter into set password try block");
			sf =HibernateUtil.getSessionFactory();
			session = sf.openSession();
			trans = session.beginTransaction();
			userdb = (User) session.createCriteria(User.class).add(Restrictions.eq("username", Username)).add(Restrictions.eq("status", "Active")). uniqueResult();
			
			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			userdb.setPreviouspasswordmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastmodifieddate(new Date(utilDate.getTime()));
			userdb.setLastaccesseddate(new Date(utilDate.getTime()));
			userdb.setPreviouspassword(userdb.getPassword());
			userdb.setPassword(user.getPassword());

			
			session.update(userdb);
			logger.info("Exit into set password try block");
			trans.commit();
			System.out.println("transaction inside the change passwodr is      "+trans);

		}
		catch (HibernateException e)
		{
			logger.info("Enter into set password catch block"+e);
			System.out.println("Hibernate Exception read");
			//if (trans != null)
			//	trans.rollback();
			//e.printStackTrace();
			
		}
		finally
		{
			logger.info("Enter into set password catch block");
			session.close();

		}
		if(userdb != null){
			flag=true;
		}
		return flag;
	}*/
	
	public String Checkpassord(String username, String password)
	{
		User userdb = null;
		SessionFactory sf = null;
		Session session = null;

		logger.info("ENTER INTO THE SESSION IN THE CHECK PASSWORD METHOED AND USER DAO"+username);
		Transaction trans = null;

		//Transaction trans = null;

		Criteria firstCriteria = null;
		Subscription subscription = null;
	    
		try
		{
			sf =HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			//firstCriteria = session.createCriteria(User.class);
			 userdb = (User) session.createCriteria(User.class).add(Restrictions.eq("username", username)).uniqueResult();
			// Query query =
			// session.createQuery("from subscription where UserName = :username");
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
			//trans.commit();
		}
		
		catch (HibernateException e)
		{
			System.out.println("Hibernate Exception read");
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
			//if (trans != null)
				//trans.rollback();

		}
		finally
		{
			logger.info("EXIT FROM THE CHECK PASSWORD SESSION METHOED IN PROFILE USER DAO");
			session.close();
		}
		return "userdb";
	
	}	
	public Subscription activationstatusurl(String username)
	{
		
		 Subscription subscriptiondb = null;
		SessionFactory sf = null;
		Session session = null;
		boolean flag = false;
		logger.info("ENTER INTO THE SESSION IN THE ACTVATION STATUS URL IN THE PROFILE DAO");
		//Transaction trans = null;

		//Transaction trans = null;
		Criteria firstCriteria = null;
	
	//	String Username=user.getUsername();
		System.out.println("user name is"+username);
		
		
		try
		{
			logger.info("ENTER INTO THE  TRY BLOCK IN THE ACTVATION STATUS URL IN THE PROFILE DAO"+username);
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			 firstCriteria = session.createCriteria(Subscription.class);
			 subscriptiondb = (Subscription) firstCriteria.add(Restrictions.eq("username", username)).uniqueResult();

			// Query query =session.createQuery("from subscription where UserName = :username");
			 
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
			 
			 
		//	trans.commit();
			 System.out.println(subscriptiondb);
				if (subscriptiondb == null)
				{
					flag = false;
					logger.info("ENTER INTO THE  IF BLOCK IN THE ACTVATION STATUS URL IN THE PROFILE DAO");
					
				}
				else
				{
					logger.info("ENTER INTO THE  ELSE BLOCK IN THE ACTVATION STATUS URL IN THE PROFILE DAO");
					flag = true;
				}
		
		}
		catch (HibernateException e)
		{
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
			//if (trans != null)
			//	trans.rollback();

		}
		finally
		{
			logger.info("EXIT   IN THE ACTVATION STATUS URL IN THE PROFILE DAO");
			session.close();
		}
	  
		return subscriptiondb;
		
	}
	
	public User checkForgotPasswordUserName(String username)
	{
		
		User userdb = null;
		SessionFactory sf = null;
		Session session = null;
		boolean flag = false;
		logger.info("ENTER INTO CHECK USER DAO");
		//Transaction trans = null;

		//Transaction trans = null;
		Criteria firstCriteria = null;
	
	//	String Username=user.getUsername();
		System.out.println("user name is"+username);
		
		
		try
		{
			logger.info("ENTER INTO THE  TRY BLOCK OF USER DAO"+username);
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			firstCriteria = session.createCriteria(User.class);
			 userdb = (User) firstCriteria.add(Restrictions.eq("username", username)).uniqueResult();

			// Query query =session.createQuery("from subscription where UserName = :username");
			 
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
			 
			 
		//	trans.commit();
			/*(  System.out.println("==================="+userdb);
				if (userdb == null)
				{
					flag = false;
					logger.info("ENTER INTO THE  IF BLOCK OF CHECK USER METHOD OF  USER DAO");
					
				}
				else
				{
					logger.info("ENTER INTO THE  ELSE BLAK OF CHECK USER METHOD OF  USER DAO");
					flag = true;
				}*/
		
		}
		catch (HibernateException e)
		{
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
			//if (trans != null)
			//	trans.rollback();

		}
		finally
		{
			logger.info("EXIT   IN THE FINALLY BLOCK OF USER DAO");
			session.close();
		}
	  
		return userdb;
		
	}
	
	public User checkChangePasswordUserNameAndPassword(String username,String password)
	{
		
		User userdb = null;
		SessionFactory sf = null;
		Session session = null;
		boolean flag = false;
		logger.info("checkChangePasswordUserNameAndPasswordDAO");
		//Transaction trans = null;

		//Transaction trans = null;
		Criteria firstCriteria = null;
	
	//	String Username=user.getUsername();
		System.out.println("checkChangePasswordUserNameAndPassword-------user name is IN DAO"+username);
		System.out.println("checkChangePasswordUserNameAndPassword-------password is IN DAO"+password);
		
		
		try
		{
			logger.info("ENTER INTO checkChangePasswordUserNameAndPasswordDAO"+username);
			sf = HibernateUtil.getSessionFactory();
			session = sf.openSession();
			//trans = session.beginTransaction();
			firstCriteria = session.createCriteria(User.class);
			 userdb = (User) firstCriteria.add(Restrictions.eq("username", username)).add(Restrictions.eq("password", password)).uniqueResult();

			// Query query =session.createQuery("from subscription where UserName = :username");
			 
			// query.setParameter("username", username);
			// subscription =(Subscription) query.uniqueResult();
			 
			 
		//	trans.commit();
			/*(  System.out.println("==================="+userdb);
				if (userdb == null)
				{
					flag = false;
					logger.info("ENTER INTO THE  IF BLOCK OF CHECK USER METHOD OF  USER DAO");
					
				}
				else
				{
					logger.info("ENTER INTO THE  ELSE BLAK OF CHECK USER METHOD OF  USER DAO");
					flag = true;
				}*/
		
		}
		catch (HibernateException e)
		{
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
			//if (trans != null)
			//	trans.rollback();

		}
		finally
		{
			logger.info("EXIT   IN THE FINALLY BLOCK OF USER DAO");
			session.close();
		}
	  
		return userdb;
		
	}
}
