package org.mindlinks.HibernateDAO;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.apache.log4j.Logger;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.Query;
import org.apache.lucene.util.Version;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.Subscription;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;

import javax.servlet.ServletException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;


public class ProfileDAO
{
	private static final Logger logger = Logger.getLogger(ProfileDAO.class);
	private static final Profile Profile = null;

	// The connection data
	// private static final String query = "SELECT Name, Id from Account";
	private static final String query = "SELECT Name, Id from Account";
	
	private static final String clientId = "3MVG9Y6d_Btp4xp6NYFR39.DBhwgUmDg41Lap6gSP1ryPY9_U5s71ANW7aNhzgcYQX2qw.Sk3XrLqkIdbbT2_";
	private static final String clientSecret = "2904701023995886495";
	// 3MVG9GiqKapCZBwFK43xtNrJZwavDRmbH47XC3UsM9F1kQ9JOXWtSP2lhccAnapSPnHtHfebOMBFcPJXFi65r
	//private static final String clientId = "3MVG9Y6d_Btp4xp7HwceL4wbq7PL5AkbdM_qu_0KhB7EPls5LxGJUeW5TpSzNnMrpI_draGMw13_tgsTRR.Hi";

	// private static final String clientId =
	// "3MVG9GiqKapCZBwFK43xtNrJZwavDRmbH47XC3UsM9F1kQ9JOXWtSP2lhccAnapSPnHtHfebOMBFcPJXFi65r";

	// 5838215815976084540/5838215815976084540
	//private static final String clientSecret = "1144381363041034151";
	// private static final String clientSecret = "5838215815976084540";

	// THis is meaningless in our context
	// https://localhost:8443/RestTest/oauth/_platformaccount
	// private static final String redirectUri =
	// "https://localhost:8443/RestTest/oauth/_callback2";

	// private static final String redirectUri =
	// "https://localhost:8443/RestTest/oauth2/_platformaccount";
	// private static final String environment = "https://test.salesforce.com";
	private static final String environment = "https://login.salesforce.com";
	private static String tokenUrl = null;
	// scott@scs.com.sudhir1
	//private static final String username = "javedbasha.s.m01@gmail.com";
	// private static final String username = "scott@scs.com.sudhir1";
	// password-4ZeOe2CmONtmFMkzeS37qFSGx
	//private static final String password = "7795283066javedSPXCW1dC9huyer7oZOauIReAt";
	private static final String username = "account1@mindlinks.com";
	//LGLl3dp1kh70jh55I74xMELai
	//private static final String password = "password-2LGLl3dp1kh70jh55I74xMELai";
	private static final String password = "password-4BzO15Eeg0R3sC5BIXGTeb9MKJ";
	// private static final String password =
	// "password-4ZeOe2CmONtmFMkzeS37qFSGx";
	private static String accessToken = null;
	private static String instanceUrl = null;

	public Boolean createProfile(Profile profile)
	{
		logger.info("ENTER:: THE CREATE PROFILE DAO" + profile);
		int age = 0;
		int factor = 0;
		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		int insertid = 0;
		String referenceid = "";
		try
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO TRY BLOCK" + Profile);
			System.out.println("After FullTextSession");
			// test data
			System.out.println("After beginTransaction");
			profile.setProfilecreateddate(new Date(utilDate.getTime()));
			profile.setCreatedby(profile.getEmail());
			profile.setLastmodifiedby(profile.getEmail());
			profile.setProfilestatus("Inactive");
			profile.setIsadmin("false");
			profile.setLastmodifieddate(new Date(utilDate.getTime()));
			profile.setUsername(profile.getEmail());
			System.out.println("DOB FROM UI   " + profile.getDateofbirth());
			// Age calculation starts
			Calendar cal1 = new GregorianCalendar();
			Calendar cal2 = new GregorianCalendar();
			java.util.Date currentdate = new java.util.Date();

			DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
			String dob = df.format(profile.getDateofbirth());
			String today = df.format(currentdate);
			java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
			java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
			System.out.println("date of birth inside age calculator   " + date1);
			System.out.println("today's date inside age calculator   " + date2);
			cal1.setTime(date1);
			cal2.setTime(date2);
			profile.setName(profile.getName());
			if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
			{
				factor = -1;
			}
			age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
			System.out.println("My current Age is  ------------>  " + age);
			// Age calculation Ends here
			profile.setAge(age);
			profile.setInactive("0");
			profile.setName(profile.getFirstname());
			fts.beginTransaction();
			fts.save(profile);
			System.out.println("After save");
			// fts.getTransaction().commit();
			// System.out.println("After commit");

			// fts.beginTransaction();
			insertid = profile.getProfileid();

			if (profile.getGender().equals("male"))
			{
				logger.info("ENTER IN THE PROFIE DAO IF GENDER = MALE COUNT TEH REFERNCE ID " + referenceid);
				referenceid = "BG-000" + insertid;
			}
			else if (profile.getGender().equals("female"))
			{
				logger.info("ENTER IN THE PROFIE DAO IF GENDER = FEMALE COUNT TEH REFERNCE ID " + referenceid);
				referenceid = "BR-000" + insertid;
			}
			profile.setReferenceid(referenceid);
			fts.update(profile);
			// System.out.println("After save");
			fts.getTransaction().commit();
			// System.out.println("After commit");
		}
		catch (Exception e)
		{
			logger.error("INSIDE:: THE CREATE PROFILE  DAO  EXCEPTION " + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER:: THE CREATE PROFILE  DAO FINALLY  BLOCK CLOSE SESSION");
			session.close();
		}

		System.out.println("insertid IS " + insertid);
		if (insertid == 0)
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO IF BLOCK TO CHECK THE INTRESTED ID  IS FALSE" + insertid);
			return false;

		}
		else
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO IF BLOCK TO CHECK THE INTRESTED ID  IS TRUE" + insertid);
			return true;
		}

	}

	public boolean subscribe(String username, String url, String temppassword)
	{
		logger.info("ENTER:: THE SUBSCRIBE  DAO ");
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		Transaction trans = null;

		try
		{
			logger.info("ENTER::INTO THE TRY BLOCK IN THE  SUBSCRIBE METHOED IN THE PROFILEDAO" + username);
			session = sf.openSession();
			trans = session.beginTransaction();
			Subscription subscription = new Subscription();
			subscription.setStatus("Inactive");
			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			subscription.setSubcribeddate(new Date(utilDate.getTime()));
			subscription.setUsername(username);
			subscription.setUrl(url);
			subscription.setTemppassword(temppassword);
			session.save(subscription);
			trans.commit();
			logger.info("EXIT:: THE SUBSCRIBE DAO METHOD TRY BLOCK" + trans);
		}
		catch (Exception e)
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO IN CATCH BLACK EXCEPTION" + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

			try
			{
				logger.info("ENTER:: THE CREATE PROFILE  DAO METHOD IN CATCH BLACK SENDING  EXCEPTION MAIL");
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			trans.rollback();
		}
		finally
		{
			logger.info("ENTER:: THE SUBSCRIBE DAO FINALLY BLOCK CLOSE SESSION");
			session.close();
		}
		if (trans == null)
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO IF BLOCK TO CHECK THE TRANSACTION  IS FALSE" + trans);
			return false;
		}
		else
		{
			logger.info("ENTER:: THE CREATE PROFILE  DAO IF BLOCK TO CHECK THE TRANSACTION  IS TRUE" + trans);
			return true;
		}
	}

	public Profile updateProfile(Profile profile)
	{
		logger.info("ENTER:: THE UPDATE PROFILE  DAO");
		int age = 0;
		int factor = 0;
		Profile profile1 = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		logger.info("ENTER INTO THE SESSIONIN THE UPDATE PROFILE METHOED ");
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		// new Date(utilDate.getTime())
		try
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO TRY BLOCK");

			profile.setUsername(profile.getEmail());
			if (profile.getPhoto() != null)
			{
				profile.setPhotouploadeddate(new Date(utilDate.getTime()));
			}
			if (profile.getHoroscope() != null)
			{
				profile.setHoroscopeuploadeddate(new Date(utilDate.getTime()));
			}

			// Age calculation starts
			Calendar cal1 = new GregorianCalendar();
			Calendar cal2 = new GregorianCalendar();
			java.util.Date currentdate = new java.util.Date();

			DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
			String dob = df.format(profile.getDateofbirth());
			String today = df.format(currentdate);
			java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
			java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
			profile.setName(profile.getFirstname() + " " + profile.getMiddlename() + " " + profile.getLastname());
			cal1.setTime(date1);
			cal2.setTime(date2);
			if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
			{
				factor = -1;
			}
			age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
			System.out.println("My current Age is  ------------>  " + age);
			// Age calculation Ends here
			System.out.println("->>>>>>>>>>>>>>>>>>>>>>>>>>>>---"+profile.getDateofbirth());
			profile.setAge(age);
			profile.setInactive("0");
			profile.setLastmodifiedby(profile.getEmail());
			profile.setLastmodifieddate(new Date(utilDate.getTime()));
			profile.setLogindate(new Date(utilDate.getTime()));
			profile.setLastlogintime(dateFormat.format(cal.getTime()));
			fts.beginTransaction();
			fts.update(profile);
			fts.getTransaction().commit();
			logger.info("EXIT:: THE UPDATE PROFILE  DAO TRY BLOCK");
		}
		catch (Exception e)
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO IF BLOCK TO CHECK THE TRANSACTION  IS FALSE" + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("EXIT FROM SESSION IN THE UPDATE PROFILE");
			logger.info("ENTER:: THE UPDATE PROFILE  DAO FINALLY BLOCK");
			session.close();
		}
		logger.info("RETURN:: THE UPDATE PROFILE  DAO RETURNING PROFILE");
		return profile;
	}

	public Profile getProfileById(int profileid)
	{
		logger.info("ENTER:: THE GET PROFILE BY ID  DAO TRY BLOCK");
		Profile profile = new Profile();
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		logger.info("ENTER IN TO THE SESSION IN THE PROFILE GET ID ");
		// Transaction trans = null;
		Criteria crt = null;
		System.out.println("ProfileId inside profiledao is  " + profileid);
		try
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO");
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile = (Profile) crt.add(Restrictions.eq("profileid", profileid)).uniqueResult();
			logger.info("EXIT:: THE UPDATE PROFILE  DAO");

		}
		catch (HibernateException e)
		{
			logger.error("ENTER:: THE UPDATE PROFILE  DAO  HIBERNATE EXCEPTION " + e);
			// e.printStackTrace();

			// if (trans != null
			// logger.info("ENTER:: THE UPDATE PROFILE  DAO IF BLOCK TO CHECK THE TRANSACTION  IS NULL"+trans);
			// trans.rollback();
		}
		finally
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO FINALLY BLOCK CLOSE SESSION");
			session.close();

		}
		logger.info("RETURNS:: THE UPDATE PROFILE  DAO RETURNING PROFILE");
		return profile;
	}

	public ArrayList<Profile> searchProfiles(Profile profile, String querystring)
	{
		logger.info("ENTER:: THE SEARCH PROFILE  DAO" + profile);
		ArrayList<Profile> profiles = new ArrayList<Profile>();

		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Query query = null;
		org.hibernate.Query searchquery = null;
		FullTextSession fullTextSession = Search.getFullTextSession(session);
		// Transaction tx = fullTextSession.beginTransaction();
		try
		{
			logger.info("ENTER:: THE SEARCH PROFILE  DAO TRY BLOCK" + profile);
			// create native Lucene query
			String[] fields = new String[]
			{ "gender", "age", "religion", "caste", "state", "mothertongue" };
			MultiFieldQueryParser parser = new MultiFieldQueryParser(Version.LUCENE_CURRENT, fields, new StandardAnalyzer(Version.LUCENE_CURRENT));

			parser.setAllowLeadingWildcard(true);
			query = parser.parse(querystring);

			searchquery = (org.hibernate.Query) fullTextSession.createFullTextQuery(query, Profile.class);
			if ((searchquery.list()).isEmpty())
			{
				logger.info("ENTER:: THE SEARCH PROFILE  DAO SEACH RESULT IS EMPTY");

			}
			else
			{
				logger.info("ENTER:: THE SEARCH PROFILE  DAO SEACH RESULT IS NOT EMPTY");
				profiles = (ArrayList<Profile>) searchquery.list();
			}

			// tx.commit();
		}
		catch (ParseException e)
		{
			logger.error("ENTER:: THE SEARCH PROFILE  DAO IF BLOCK TO PARSE EXCEPTION  IS FALSE" + e);
			// TODO Auto-generated catch block
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
		catch (HibernateException e)
		{
			logger.error("ENTER:: THE SEARCH PROFILE  DAO IF BLOCK TO HIBERNATE EXCEPTION " + e);
			e.printStackTrace();

			// if (tx != null)
			// tx.rollback();
		}
		finally
		{
			logger.info("ENTER:: THE SEARCH PROFILE  DAO FINALLY BLOCK CLOSE SESSION");
			// fullTextSession.close();
			session.close();

		}
		logger.info("RETURNS:: THE SEARCH PROFILE  DAO RETURNING PROFILE");
		return profiles;

	}

	public Profile setpaymentdata(Profile profile)
	{
		logger.info("ENTER:: THE SET PAYMENT DATA METHOD  DAO");
		Profile profile1 = null;
		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		logger.info("ENTER:: THE SET PAYMENT DATA METHOD START SESSION");
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		Criteria crt = null;
		try
		{
			logger.info("ENTER:: THE SET PAYMENT DATA METHOD  DAO TRY BLOCK");
			fts.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile1 = (Profile) crt.add(Restrictions.eq("profileid", profile.getProfileid())).uniqueResult();
			profile1.setLastmodifiedby("Mysangathi Admin");
			profile1.setLastmodifieddate(new Date(utilDate.getTime()));
			profile1.setPaymentdate(profile.getPaymentdate());
			if (profile.getPaidstatus().equals("true"))
			{
				logger.info("ENTER:: THE SET PAYMENT DATA METHOD  DAO IF BLOCK PAID STATUS EQUALS TO TRUE" + profile.getPaidstatus());
				profile1.setPaidstatus("paid");
				profile1.setAmountpaid(profile.getAmountpaid());
			}
			profile1.setPaymenttype(profile.getPaymenttype());
			profile1.setComments(profile.getComments());

			fts.update(profile1);
			logger.info("EXIT:: THE SET PAYMENT DATA METHOD  DAO TRY BLOCK");

			fts.getTransaction().commit();
			logger.info("ENTER:: THE SET PAYMENT DATA METHOD COMMIT THE TRANSACTION");
		}
		catch (Exception e)
		{
			logger.error("ENTER:: THE SEARCH PROFILE  DAO IF BLOCK TO  EXCEPTION  " + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER:: THE SET PAYMENT DATA  DAO FINALLY BLOCK CLOSE SESSION");
			// fts.close();
			session.close();
		}

		return profile1;
	}

	public String checkEmailUniqueness(String email)
	{
		logger.info("ENTER:: THE CHECK MAIL UNIQUENESS METHOD DAO" + email);
		Profile profile = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		String emailuniqueness;
		logger.info("ENTER:: THE CHECK MAIL UNIQUENESS METHOD IN PROFILE DAO SESSION STARTS" + email);
		Transaction trans = null;
		Criteria crt = null;

		try
		{
			logger.info("ENTER:: THE CHECK MAIL UNIQUENESS METHOD DAO" + email);
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);

			profile = (Profile) crt.add(Restrictions.eq("email", email)).add(Restrictions.eq("inactive", "0")).uniqueResult();

		}
		catch (HibernateException e)
		{
			logger.error("ENTER:: THE CHECK EMAIL UNIQUENESS  METHOD CATCH BLOCK HIBERNATE  EXCEPTION  " + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			// if (trans != null)

			// trans.rollback();
		}
		finally
		{
			logger.info("ENTER:: THE CHECK EMAIL UNIQUENESS  METHOD  DAO FINALLY BLOCK CLOSE SESSION");
			session.close();

		}

		if (profile != null)
		{
			logger.info("ENTER:: THE CHECK EMAIL UNIQUENESS  METHOD  DAO PROFILE NOT EQUALS TO NULL" + profile);
			return "true";
		}
		else
		{
			logger.info("ENTER:: THE CHECK EMAIL UNIQUENESS  METHOD  DAO PROFILE  EQUALS TO NULL" + profile);
			return "false";
		}

	}

	public Profile uploadProfile(Profile profile)
	{
		logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD ");
		Profile profile1 = null;

		Criteria crt = null;
		String Username = "admin@mysangathi.com";
		int age = 0;
		int factor = 0;
		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		logger.info("ENTER:: SESSION IN THE UPLOAD PROFILE  METHOD IN THE  PROFILE DAO ");
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		int insertid = 0;
		String referenceid = "";
		try
		{
			logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD TRY BLACK ");
			profile.setProfilecreateddate(new Date(utilDate.getTime()));
			profile.setCreatedby(Username);
			profile.setLastmodifiedby(Username);
			profile.setLastmodifieddate(new Date(utilDate.getTime()));
			profile.setUsername(profile.getEmail());
			profile.setName(profile.getFirstname() + " " + profile.getMiddlename() + " " + profile.getLastname());
			// Age calculation starts
			Calendar cal1 = new GregorianCalendar();
			Calendar cal2 = new GregorianCalendar();
			java.util.Date currentdate = new java.util.Date();

			DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
			String dob = df.format(profile.getDateofbirth());
			String today = df.format(currentdate);
			java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
			java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
			cal1.setTime(date1);
			cal2.setTime(date2);
			if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
			{
				logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD TRY BLACK IN IF CHECK THE DAY_OF_YEAR LESS THAN DAY OF YEAR");
				factor = -1;
			}
			age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
			profile.setAge(age);
			fts.save(profile);
			insertid = profile.getProfileid();
			if (profile.getGender().equals("male"))
			{
				logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD TRY BLACK IN IF CHECKS GENDER EQUALS TO MALE");
				referenceid = "BG-000" + insertid;
			}
			else if (profile.getGender().equals("female"))
			{
				logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD TRY BLACK IN IF CHECKS GENDER EQUALS TO FEMALE");
				referenceid = "BR-000" + insertid;
			}
			profile.setReferenceid(referenceid);
			profile.setInactive("0");
			fts.beginTransaction();
			fts.update(profile);

			crt = fts.createCriteria(Profile.class);
			profile1 = (Profile) crt.add(Restrictions.eq("username", Username)).uniqueResult();
			fts.getTransaction().commit();
			logger.info("EXITE:: THE UPLOAD PROFILE  DAO METHOD TRY BLACK ");
		}
		catch (Exception e)
		{
			logger.error("ENTER:: THE UPLOAD PROFILE  DAO METHOD CATCH BLOCK TO  EXCEPTION  " + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD FINALLY BLACK SESSION CLOSED ");
			// fts.close(); //session closed error
			session.close();

		}

		logger.info("ENTER:: THE UPLOAD PROFILE  DAO METHOD RETURNING PROFILE1");
		return profile1;
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Profile> searchByNameProfiles(Profile profile, String querystring)
	{
		logger.info("ENTER:: THE SERACH BY NAME PROFILE METHOD  DAO " + Profile);
		ArrayList<Profile> profiles = new ArrayList<Profile>();
		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		logger.info("ENTER IN TO THE SESSION  ARRAYLIST IN THE PROFIEL DAO");
		Query query = null;
		org.hibernate.Query searchquery = null;
		FullTextSession fullTextSession = Search.getFullTextSession(session);
		// Transaction tx = fullTextSession.beginTransaction();

		QueryParser qp = new QueryParser(Version.LUCENE_CURRENT, "name", new StandardAnalyzer(Version.LUCENE_CURRENT));
		try
		{
			logger.info("ENTER:: THE SEARCH BY NAME PROFILE METHOD  DAO TRY BLACK ");

			query = qp.parse("name:" + profile.getName());

			searchquery = fullTextSession.createFullTextQuery(query, Profile.class);
			if ((searchquery.list()).isEmpty())
			{
				System.out.println("Array list is empty");

			}
			else
			{
				profiles = (ArrayList<Profile>) searchquery.list();
				for (Profile pr : profiles)
				{
					logger.info("ENTER:: THE SEARCH BY NAME PROFILE METHOD DAO TRY BLACK RETURNING THE LIST");
				}

			}
			// tx.commit();
		}
		catch (ParseException e)
		{
			// TODO Auto-generated catch block
			logger.error("ENTER:: THE SEARCH BY NAME PROFILE  METHOD DAO CATCH BLACK PARSE EXCEPTION  " + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
		catch (HibernateException e)
		{
			logger.error("ENTER:: THE SEARCH BY NAME PROFILE METHOD DAO CATCH BLACK HIBERNATE EXCEPTION  " + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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

			logger.info("ENTER:: THE SEARCH BY NAME PROFILE  METHOD DAO FINALLY BLACK SESSION CLOSED");
			session.close();

		}
		logger.error("RETURN:: THE SEARCH BY NAME PROFILE METHOD DAO RETRNING PROFILES");
		return profiles;

	}

	public String getPhotoPathFromProfile(int profileId)
	{
		logger.error("ENTER:: THE GET THE PHOTO PATH FROM  METHOD PROFILES DAO");
		String photopath = null;
		Profile profile = new Profile();
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;

		logger.info("ENTER IN THE SESSION GET PHOTO PATH FROM PROFILE INTHE PROFILE SESSION");

		Criteria crt = null;
		try
		{
			logger.info("ENTER:: THE GET THE PHOTO PATH FROM PROFILES METHOD DAO TRY BLACK");
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile = (Profile) crt.add(Restrictions.eq("profileid", profileId)).uniqueResult();
			photopath = profile.getPhoto();
			logger.info("EXIT:: THE GET THE PHOTO PATH FROM PROFILES METHOD DAO TRY BLACK" + photopath);
		}
		catch (HibernateException e)
		{
			// TODO: handle exception
			logger.error("ENTER:: THE GET THE PHOTO PATH FROM PROFILES METHOD DAO HIBERNATE EXCEPTION " + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// if (trans == null)
			// trans.rollback();

		}
		finally
		{
			logger.info("ENTER:: THE GET THE PHOTO PATH FROM PROFILES METHOD DAO FINALLY BLACK SESSION CLOSED");
			session.close();
		}
		logger.info("ENTER:: THE GET THE PHOTO PATH FROM PROFILES METHOD DAO RETURNING THE PHOTO PATH");
		return photopath;

	}

	public String getHoroscopeFromProfile(int profileId)
	{
		logger.info("ENTER:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO");
		String horoscopepath = null;
		Profile profile = new Profile();
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		// Transaction trans = null;
		Criteria crt = null;
		try
		{
			logger.info("ENTER:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO TRY BLACK");
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile = (Profile) crt.add(Restrictions.eq("profileid", profileId)).uniqueResult();
			horoscopepath = profile.getHoroscope();
			logger.info("EXIT:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO");
		}
		catch (HibernateException e)
		{
			// TODO: handle exception
			logger.error("ENTER:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO HIBERNATE EXCEPTION" + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

			try
			{
				oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// if (trans == null)
			// trans.rollback();

		}
		finally
		{
			logger.info("ENTER:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO FINALLY BLACK");
			session.close();
		}
		logger.info("ENTER:: THE GET THE HOROSCOPE FROM PROFILES METHOD DAO FINALLY BLACK");
		return horoscopepath;

	}

	public boolean changeProfileStatus(int profileid, String inactive)
	{

		logger.info("ENTER:: THE CHANGEPROFILESTATUS METHOD  DAO");
		Profile profile1 = null;
		// AnnotationConfiguration configuration = new
		// AnnotationConfiguration();
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		Criteria crt = null;
		try
		{
			logger.info("ENTER:: THE CHANGEPROFILESTATUS METHOD DAO TRY BLOCK");
			fts.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile1 = (Profile) crt.add(Restrictions.eq("profileid", profileid)).uniqueResult();
			profile1.setInactive(inactive);

			fts.update(profile1);
			logger.info("EXIT:: THE CHANGE PROFILE STATUS  DAO METHOD TRY BLOCK");

			fts.getTransaction().commit();
			logger.info("ENTER:: THE CHANGEPROFILESTATUS METHOD COMMIT THE TRANSACTION");
		}
		catch (Exception e)
		{
			logger.error("ENTER:: THE CHANGE PROFILE STATUS PROFILE  DAO METHOD CATCH BLOCK TO  EXCEPTION  " + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER:: THE CHANGE PROFILE STATUS  DAO METHOD FINALLY BLOCK CLOSE SESSION");
			session.close();
		}

		return true;
	}

	public String checkTheUserIsActiveOrInactive(String username)
	{
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		Profile profile = null;
		Criteria crt = null;

		String status = null;
		try
		{
			logger.info("ENTER:: THE CHECK USER IS ACTIVE OR INACTIVE FROM PROFILES METHOD DAO TRY BLACK");
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile = (Profile) crt.add(Restrictions.eq("username", username)).uniqueResult();
			status = profile.getInactive();
			System.out.println("------------------" + status);
			logger.info("EXIT:: THE CHECK USER IS ACTIVE OR INACTIVE  FROM PROFILES METHOD DAO");
		}
		catch (HibernateException e)
		{
			// TODO: handle exception
			logger.error("ENTER:: THE CHECK USER IS ACTIVE OR INACTIVE  FROM PROFILES METHOD DAO HIBERNATE EXCEPTION" + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER:: THE CHECK USER IS ACTIVE OR INACTIVE FROM PROFILES METHOD DAO FINALLY BLACK");
			session.close();
		}
		logger.info("ENTER:: THE CHECK USER IS ACTIVE OR INACTIVE  FROM PROFILES METHOD DAO FINALLY BLACK");

		return status;

	}

	public List sendGreeatingsMail()
	{
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		List results = null;
		Criteria crt = null;

		try
		{

			logger.info("ENTER:: SEND GREETING DAO TRY BLACK");
			session = sf.openSession();

			crt = session.createCriteria(Profile.class);
			results = crt.list();
			System.out.println("Total Number Of Records : " + results.size());
			Iterator it = results.iterator();

			while (it.hasNext())
			{
				Object o = (Object) it.next();
				Profile p = (Profile) o;
				System.out.println("date of brith : " + p.getDateofbirth());
				System.out.println("----------------------");
			}

		}
		catch (HibernateException e)
		{
			// TODO: handle exception
			logger.error("ENTER::  SEND GREETING  DAO HIBERNATE EXCEPTION" + e);
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			EmailDAO oemail = new EmailDAO();
			oemail.Content = ErrorMessage;
			oemail.FromAddress = "admin@mysangathi.com";
			oemail.Subject = "Exception Notification";

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
			logger.info("ENTER::  SEND GREETING DAO FINALLY BLACK");
			// session.close();
		}
		logger.info("ENTER:: SEND GREETING   METHOD DAO FINALLY BLACK");
		return results;

	}

	public String checkPaidStatus(int profileid)
	{
		logger.info("ENTER:: THE GET PROFILE BY ID  DAO TRY BLOCK");
		Profile profile = new Profile();
		String paidstatus = null;
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		logger.info("ENTER IN TO THE SESSION IN THE PROFILE GET ID ");
		// Transaction trans = null;
		Criteria crt = null;
		System.out.println("ProfileId inside profiledao is  " + profileid);
		try
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO");
			// sf = new Configuration().configure().buildSessionFactory();
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			profile = (Profile) crt.add(Restrictions.eq("profileid", profileid)).uniqueResult();
			System.out.println("==============checkPaidStatus===================>>>" + profile.getPaidstatus());
			if(profile.getPaidstatus()==null)
			{
				paidstatus = "notpaid";
				
			}else if  (profile.getPaidstatus().equals("paid"))
			{
				paidstatus = "paid";
			}
			else
			{
				paidstatus = "notpaid";
			}
			logger.info("EXIT:: THE UPDATE PROFILE  DAO");

		}
		catch (HibernateException e)
		{
			logger.error("ENTER:: THE UPDATE PROFILE  DAO  HIBERNATE EXCEPTION " + e);
			// e.printStackTrace();

			// if (trans != null
			// logger.info("ENTER:: THE UPDATE PROFILE  DAO IF BLOCK TO CHECK THE TRANSACTION  IS NULL"+trans);
			// trans.rollback();
		}
		finally
		{
			logger.info("ENTER:: THE UPDATE PROFILE  DAO FINALLY BLOCK CLOSE SESSION");
			session.close();

		}
		logger.info("RETURNS:: THE UPDATE PROFILE  DAO RETURNING PROFILE");
		return paidstatus;
	}

	public void toConvertMysangathiUserToLeads(Profile profile) throws HttpException, IOException, ServletException, java.text.ParseException
	{
		
		// Step 0: Connect to SalesForce.services/oauth2/revoke
		// services/oauth2/authorize
		System.out.println("Getting a token");
		/* tokenUrl = environment + "/services/oauth2/token"; */
		tokenUrl = environment + "/services/oauth2/token";
		HttpClient httpclient = new HttpClient();
		PostMethod post = new PostMethod(tokenUrl);
		post.addParameter("grant_type", "password");
		post.addParameter("client_id", clientId);
		post.addParameter("client_secret", clientSecret);
		// post.addParameter("redirect_uri", redirectUri);
		post.addParameter("username", username);
		post.addParameter("password", password);

		try
		{
			httpclient.executeMethod(post);
			try
			{
				JSONObject authResponse = new JSONObject(new JSONTokener(new InputStreamReader(post.getResponseBodyAsStream())));
				System.out.println("Auth response: " + authResponse.toString(2));

			//22	accessToken = authResponse.getString("access_token");
				instanceUrl = authResponse.getString("instance_url");

				System.out.println("Got access token: " + accessToken);
				System.out.println("Got instance _url : " + accessToken);
			}
			catch (JSONException e)
			{
				e.printStackTrace();
			}
		}
		catch (HttpException e1)
		{
			e1.printStackTrace();
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
		}
		finally
		{
			post.releaseConnection();
		}
		System.out.println("We have an access token: " + accessToken + "\n" + "Using instance " + instanceUrl + "\n\n");
		
       String accountId = null;
       int age = 0;
		int factor = 0;
	    

        HttpClient httpclient1 = new HttpClient();

 

        JSONObject lead = new JSONObject();

 

        try {

           // lead.put("Name", "Jon mecale");
        	
        	/*System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getFirstname());
        	System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getCaste());
        	System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getCompanyname() );
        	System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getGender());
        	System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getPhoneno());
        	System.out.println("------------------------toConvertMysangathiUserToLeads---------------------------------------"+profile.getMobileno());
        	System.out.println("-------------------------toConvertMysangathiUserToLeads--------------------------------------"+profile.getEmail());
        	System.out.println("--------------------------toConvertMysangathiUserToLeads-------------------------------------"+profile.getEducation());
        	System.out.println("---------------------------toConvertMysangathiUserToLeads------------------------------------"+profile.getProfession());
        	System.out.println("----------------------------toConvertMysangathiUserToLeads-----------------------------------"+profile.getCountry());*/
        	
            	String fristname=profile.getFirstname();
                String caste=profile.getCaste();
                String companyname=profile.getCompanyname();
                String gender=profile.getGender();
                String phoneno=profile.getPhoneno();
                String mobileno=profile.getMobileno();
                String email=profile.getEmail();
                String education=profile.getEducation();
                String profession=profile.getProfession();
                String country=profile.getCountry();
                
                //calculate the date of brith
            	// Age calculation starts
    			Calendar cal1 = new GregorianCalendar();
    			Calendar cal2 = new GregorianCalendar();
    			java.util.Date currentdate = new java.util.Date();
                
                DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
    			String dob = df.format(profile.getDateofbirth());
    			String today = df.format(currentdate);
    			java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
    			java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
    			System.out.println("date of birth inside age calculator   " + date1);
    			System.out.println("today's date inside age calculator   " + date2);
    			cal1.setTime(date1);
    			cal2.setTime(date2);
    			profile.setName(profile.getName());
    			if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
    			{
    				factor = -1;
    			}
    			age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
    			System.out.println("My current Age is  ------------>  " + age);
              
            
            lead.put("LastName", fristname);
            lead.put("Caste__c", caste);
            
            lead.put("Age__c", age);	   	   	  	
            lead.put("MobileNo__c", mobileno);
            lead.put("PhoneNo__c", phoneno);
            lead.put("Profession__c", profession);
            lead.put("Education__c", education);
            lead.put("Email__c", email);
            lead.put("Country__c", country);
            
            lead.put("Company", "Mindlinks");
            lead.put("Status", "Open - Not Contacted");

        } catch (JSONException e) {

            e.printStackTrace();

            throw new ServletException(e);

        }

 

        PostMethod post1 = new PostMethod(instanceUrl

                + "/services/data/v29.0/sobjects/Lead/");

 

        post1.setRequestHeader("Authorization", "OAuth " + accessToken);

        post1.setRequestEntity(new StringRequestEntity(lead.toString(),

                "application/json", null));

 

        try {

            httpclient1.executeMethod(post1);

 

            System.out.println("HTTP status " + post1.getStatusCode()

                    + " creating lead\n\n");

 

            if (post1.getStatusCode() == HttpStatus.SC_CREATED) {

                try {

                    JSONObject response = new JSONObject(new JSONTokener(

                            new InputStreamReader(
                                    post1.getResponseBodyAsStream())));

                    System.out.println("Create response: "

                            + response.toString(2));


                    if (response.getBoolean("success")) {

                        accountId = response.getString("id");

                        System.out.println("New record id " + accountId + "\n\n");

                    }

                } catch (JSONException e) {

                    e.printStackTrace();

                    //throw new ServletException(e);

                }

            }

        } finally {

            post1.releaseConnection();

        }

	}
	

	
	public void  profileUpdateInSalesForce(Profile  profile)
	{
		
	 
		
		logger.info("ENTER:: THE PROFILE UPDATE IN SALES FORCE METHOD");
		System.out.println("Getting a token");
		/* tokenUrl = environment + "/services/oauth2/token"; */
		tokenUrl = environment + "/services/oauth2/token";
		HttpClient httpclient = new HttpClient();
		PostMethod post = new PostMethod(tokenUrl);
		post.addParameter("grant_type", "password");
		post.addParameter("client_id", clientId);
		post.addParameter("client_secret", clientSecret);
		// post.addParameter("redirect_uri", redirectUri);
		post.addParameter("username", username);
		post.addParameter("password", password);
		
		
		//to get the profile id from database
		Profile profile1 = new Profile();
		
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		Criteria crt = null;

		try
		{
			httpclient.executeMethod(post);
			try
			{
				JSONObject authResponse = new JSONObject(new JSONTokener(new InputStreamReader(post.getResponseBodyAsStream())));
				System.out.println("Auth response: " + authResponse.toString(2));

				accessToken = authResponse.getString("access_token");
				instanceUrl = authResponse.getString("instance_url");

				System.out.println("Got access token: " + accessToken);
				System.out.println("Got instance _url : " + accessToken);
			}
			catch (JSONException e)
			{
				e.printStackTrace();
			}
		}
		catch (HttpException e1)
		{
			e1.printStackTrace();
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
		}
		finally
		{
			post.releaseConnection();
		}
		System.out.println("We have an access token: " + accessToken + "\n" + "Using instance " + instanceUrl + "\n\n");
		//String email="jairamabmsit@gmail.com";
		String email=profile.getEmail();  //"javedbasha77@gmail.com";
		String query = "SELECT  Id,ProfileID__c, fathername__c,DateOfBirth__c,noofbrothers__c from Lead where Email__c='"+email+"'";
		logger.info("ENTER:: THE QUERY IS"+query);
		  //  HttpClient httpclient = new HttpClient();
        GetMethod get = new GetMethod(instanceUrl + "/services/data/v29.0/query");

        // set the token in the header
        get.setRequestHeader("Authorization", "OAuth " + accessToken);

        // set the SOQL as a query param
        NameValuePair[] params = new NameValuePair[1];

        params[0] = new NameValuePair("q",query);
        get.setQueryString(params);     

        try {
        	System.out.println("==================inside the try block of update sales force=============================");
            httpclient.executeMethod(get);
            if (get.getStatusCode() == HttpStatus.SC_OK)
            {
                // Now lets use the standard java json classes to work with the results
            	System.out.println("==================inside the if get response block of update sales force=============================");
                JSONObject response = new JSONObject( new JSONTokener( new InputStreamReader(get.getResponseBodyAsStream())));
                System.out.println("Query response: "+ response.toString(2));//.substring(0, 500));                 
               // System.out.println(response.getString("totalSize") + " record(s) returned\n\n");
                JSONArray results = response.getJSONArray("records");  
             

                System.out.println("the result is ===>"+results);
               //  Account[] accounts = new Gson().fromJson(results.toString(), Account[].class);
               //  System.out.println("===============>>>>"+accounts);
               // return accounts;
                
            	System.out.println("------------------------------------>" + results.getJSONObject(0).getInt("ProfileID__c"));
            	System.out.println("------------------------------------>" + results.getJSONObject(0).get("Id"));
            	
            	//int id=66;
            	//if(results.getJSONObject(0).getInt("ProfileID__c")==id)
            	//{
            	
            	
            	System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Before Update>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            	 HttpClient httpclient2 = new HttpClient();

            	 int age = 0;
         		int factor = 0;


                 JSONObject update = new JSONObject();

                  String accountId=results.getJSONObject(0).getString("Id");

                 try {
                	 
                	 String fathername=profile.getFathername();
					 String fatheroccupation=profile.getFatheroccupation();
				     String mothername=profile.getMothername();
					 String motheroccupation=profile.getMotheroccupation();
				
					 String noofbrothers=profile.getNoofbrothers();
					 String noofsisters=profile.getNoofsisters();

					
					// calculate the date of brith
						// Age calculation starts
						Calendar cal1 = new GregorianCalendar();
						Calendar cal2 = new GregorianCalendar();
						java.util.Date currentdate = new java.util.Date();

						DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
						String dob = df.format(profile.getDateofbirth());
						String today = df.format(currentdate);
						java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
						java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
						System.out.println("date of birth inside age calculator   " + date1);
						System.out.println("today's date inside age calculator   " + date2);
						cal1.setTime(date1);
						cal2.setTime(date2);
						profile.setName(profile.getName());
						if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
						{
							factor = -1;
						}
						age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
						System.out.println("My current Age is  ------------>  " + age);
						
						//update.put("ProfileID__c", profileid);
						update.put("Age__c", age);
						update.put("LastName", profile.getFirstname());
						update.put("MiddleName__c", profile.getMiddlename());
						update.put("LastName__c", profile.getLastname());
						update.put("countrycode__c",profile.getCountrycode());
						update.put("PhoneNo__c", profile.getPhoneno());
						update.put("MobileNo__c", profile.getMobileno());
						update.put("DateOfBirth__c", profile.getDateofbirth());
						
						update.put("Gender__c", profile.getGender());
						update.put("Email__c", profile.getEmail());
						
					
						update.put("MartialStatus__c", profile.getMartialstatus());
						update.put("HaveChildren__c", profile.getHavechildren());
						update.put("Religion__c", profile.getReligion());
						update.put("Caste__c", profile.getCaste());
						update.put("SubCaste__c", profile.getSubcaste());
						update.put("PhoneNo__c", profile.getPhoneno());
						update.put("Hororscope__c", profile.getHoroscope());
						update.put("Photo__c", profile.getPhoto());
					//	update.put("Feet__c", profile.getHfeet());
					//	update.put("Inch__c", profile.getHinch());
						
						/**/
						update.put("MotherTongue__c", profile.getMothertongue());
						update.put("CurrentWorkStatus__c", profile.getCurrentworkstatus());
						
						update.put("Country__c", profile.getCountry());
						update.put("State__c", profile.getState());
						update.put("City__c", profile.getCity());
						update.put("Hobbies__c", profile.getHobbies());
						update.put("Nakshatra__c", profile.getNakshatra());
						update.put("Rashi__c", profile.getRashi());
						
						
						
					
						
						update.put("Profession__c", profile.getProfession());
						update.put("Education__c", profile.getEducation());
						
						update.put("MultipleEducationDeatiles__c", profile.getMulitipleeducaaiondeatiles());
						update.put("CompanyName__c", profile.getCompanyname());
						update.put("CompanyNo__c", profile.getCompanyno());
						update.put("WorkPlace__c", profile.getWorkplace());
						update.put("AnnualIncome__c", profile.getAnnualincome());
						update.put("Currency__c", profile.getCurrency());
						
						
						
						update.put("fathername__c", profile.getFathername());
						update.put("fatheroccupation__c", profile.getFatheroccupation());
						update.put("mothername__c", profile.getMothername());
						update.put("motheroccupation__c", profile.getMotheroccupation());
						update.put("noofbrothers__c", profile.getNoofbrothers());
						update.put("noofsisters__c", profile.getNoofsisters());
					
						//update.put("Company", "Mindlinks");
						//update.put("Status", "Open - Not Contacted");
					 

                   //  update.put("Name", newName);

                    // update.put("BillingCity", city);

                 } catch (JSONException e) {

                     e.printStackTrace();

                     throw new ServletException(e);

                 }

          

                 PostMethod patch = new PostMethod(instanceUrl

                         + "/services/data/v29.0/sobjects/Lead/" + accountId) {

                     @Override

                     public String getName() {

                         return "PATCH";

                     }

                 };

          

                 patch.setRequestHeader("Authorization", "OAuth " + accessToken);

                 patch.setRequestEntity(new StringRequestEntity(update.toString(),

                         "application/json", null));

          

                 try {

                     httpclient2.executeMethod(patch);

                     System.out.println("HTTP status " + patch.getStatusCode()

                             + " updating account " + accountId + "\n\n");

                 } finally {

                     patch.releaseConnection();

                 }
            	
            	
             	System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<After Update>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            		
            	
				
            	}
      
        }
        catch (Exception e){
            e.printStackTrace();
        }finally {
            get.releaseConnection();
        }
    
		
		
	}
	public void toUploadProfileToSalesForce(Profile profile) throws HttpException, IOException, ServletException, java.text.ParseException
	{
		// Step 0: Connect to SalesForce.services/oauth2/revoke
		// services/oauth2/authorize
		logger.info("ENTER:: THE TO CONVERT MYSANGATHI USER TO LEAD METHOD");
		System.out.println("Getting a token");
		/* tokenUrl = environment + "/services/oauth2/token"; */
		tokenUrl = environment + "/services/oauth2/token";
		HttpClient httpclient = new HttpClient();
		PostMethod post = new PostMethod(tokenUrl);
		post.addParameter("grant_type", "password");
		post.addParameter("client_id", clientId);
		post.addParameter("client_secret", clientSecret);
		// post.addParameter("redirect_uri", redirectUri);
		post.addParameter("username", username);
		post.addParameter("password", password);
		
		
		//to get the profile id from database
		Profile profile1 = new Profile();
		
		SessionFactory sf = HibernateUtil.getSessionFactory();
		Session session = null;
		Criteria crt = null;

		try
		{
			httpclient.executeMethod(post);
			try
			{
				JSONObject authResponse = new JSONObject(new JSONTokener(new InputStreamReader(post.getResponseBodyAsStream())));
				System.out.println("Auth response: " + authResponse.toString(2));

				accessToken = authResponse.getString("access_token");
				instanceUrl = authResponse.getString("instance_url");

				System.out.println("Got access token: " + accessToken);
				System.out.println("Got instance _url : " + accessToken);
			}
			catch (JSONException e)
			{
				e.printStackTrace();
			}
		}
		catch (HttpException e1)
		{
			e1.printStackTrace();
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
		}
		finally
		{
			post.releaseConnection();
		}
		System.out.println("We have an access token: " + accessToken + "\n" + "Using instance " + instanceUrl + "\n\n");

		String accountId = null;
		int age = 0;
		int factor = 0;

		HttpClient httpclient1 = new HttpClient();

		JSONObject lead = new JSONObject();

		try
		{

			logger.info("ENTER:: THE TO CONVERT MYSANGATHI USER TO LEAD METHOD TRY BLOCK");
			System.out.println("==========To Get The Profile ID from database before execute====================");
			session = sf.openSession();
			// trans = session.beginTransaction();
			crt = session.createCriteria(Profile.class);
			System.out.println("-------email id----------->"+profile.getEmail());
		    String inactive="0";
			profile1 = (Profile) crt.add(Restrictions.eq("email", profile.getEmail())).uniqueResult();
			
			System.out.println("=============>>>>>>>>>>>>Profile ID===================>>>>>>>>"+profile1.getProfileid());
			System.out.println("==========To Get The Profile ID from database after execute ====================");
			
			
			int profileid=profile.getProfileid();
			String fristname = profile.getFirstname();
			

			// calculate the date of brith
			// Age calculation starts
			Calendar cal1 = new GregorianCalendar();
			Calendar cal2 = new GregorianCalendar();
			java.util.Date currentdate = new java.util.Date();

			DateFormat df = new SimpleDateFormat("MM-dd-yyyy");
			String dob = df.format(profile.getDateofbirth());
			String today = df.format(currentdate);
			java.util.Date date1 = new SimpleDateFormat("MM-dd-yyyy").parse(dob);
			java.util.Date date2 = new SimpleDateFormat("MM-dd-yyyy").parse(today);
			System.out.println("date of birth inside age calculator   " + date1);
			System.out.println("today's date inside age calculator   " + date2);
			cal1.setTime(date1);
			cal2.setTime(date2);
			profile.setName(profile.getName());
			if (cal2.get(Calendar.DAY_OF_YEAR) < cal1.get(Calendar.DAY_OF_YEAR))
			{
				factor = -1;
			}
			age = cal2.get(Calendar.YEAR) - cal1.get(Calendar.YEAR) + factor;
			System.out.println("My current Age is  ------------>  " + age);
			
			 lead.put("ProfileID__c", profileid);
			lead.put("Age__c", age);
			lead.put("LastName", fristname);
			lead.put("MiddleName__c", profile.getMiddlename());
			lead.put("LastName__c", profile.getLastname());
			lead.put("countrycode__c",profile.getCountrycode());
			lead.put("PhoneNo__c", profile.getPhoneno());
			lead.put("MobileNo__c", profile.getMobileno());
			lead.put("DateOfBirth__c", profile.getDateofbirth());
			
			lead.put("Gender__c", profile.getGender());
			lead.put("Email__c", profile.getEmail());
			
		
			lead.put("MartialStatus__c", profile.getMartialstatus());
			lead.put("HaveChildren__c", profile.getHavechildren());
			lead.put("Religion__c", profile.getReligion());
			lead.put("Caste__c", profile.getCaste());
			lead.put("SubCaste__c", profile.getSubcaste());
			lead.put("PhoneNo__c", profile.getPhoneno());
			lead.put("Hororscope__c", profile.getHoroscope());
			lead.put("Photo__c", profile.getPhoto());
		//	lead.put("Feet__c", profile.getHfeet());
		//	lead.put("Inch__c", profile.getHinch());
			
			/**/
			lead.put("MotherTongue__c", profile.getMothertongue());
			lead.put("CurrentWorkStatus__c", profile.getCurrentworkstatus());
			
			lead.put("Country__c", profile.getCountry());
			lead.put("State__c", profile.getState());
			lead.put("City__c", profile.getCity());
			lead.put("Hobbies__c", profile.getHobbies());
			lead.put("Nakshatra__c", profile.getNakshatra());
			lead.put("Rashi__c", profile.getRashi());
			
			
			
		
			
			lead.put("Profession__c", profile.getProfession());
			lead.put("Education__c", profile.getEducation());
			
			lead.put("MultipleEducationDeatiles__c", profile.getMulitipleeducaaiondeatiles());
			lead.put("CompanyName__c", profile.getCompanyname());
			lead.put("CompanyNo__c", profile.getCompanyno());
			lead.put("WorkPlace__c", profile.getWorkplace());
			lead.put("AnnualIncome__c", profile.getAnnualincome());
			lead.put("Currency__c", profile.getCurrency());
			
			
			
			lead.put("fathername__c", profile.getFathername());
			lead.put("fatheroccupation__c", profile.getFatheroccupation());
			lead.put("mothername__c", profile.getMothername());
			lead.put("motheroccupation__c", profile.getMotheroccupation());
			lead.put("noofbrothers__c", profile.getNoofbrothers());
			lead.put("noofsisters__c", profile.getNoofsisters());
		
			lead.put("Company", "Mindlinks");
			lead.put("Status", "Open - Not Contacted");

		}
		catch (JSONException e)
		{

			e.printStackTrace();

			throw new ServletException(e);

		}

		PostMethod post1 = new PostMethod(instanceUrl

		+ "/services/data/v29.0/sobjects/Lead/");

		post1.setRequestHeader("Authorization", "OAuth " + accessToken);

		post1.setRequestEntity(new StringRequestEntity(lead.toString(),

		"application/json", null));

		try
		{

			httpclient1.executeMethod(post1);

			System.out.println("HTTP status " + post1.getStatusCode()

			+ " creating lead\n\n");

			if (post1.getStatusCode() == HttpStatus.SC_CREATED)
			{

				try
				{

					JSONObject response = new JSONObject(new JSONTokener(

					new InputStreamReader(post1.getResponseBodyAsStream())));

					System.out.println("Create response: "

					+ response.toString(2));

					if (response.getBoolean("success"))
					{

						accountId = response.getString("id");

						System.out.println("New record id " + accountId + "\n\n");

					}

				}
				catch (JSONException e)
				{

					e.printStackTrace();

					// throw new ServletException(e);

				}

			}

		}
		finally
		{

			post1.releaseConnection();

		}

	}
	

	public static void main(String[] args)
	{
		ProfileDAO dao = new ProfileDAO();
		// dao.checkTheUserIsActiveOrInactive("javeed.biet13@gmail.com");
		// /dao.sendGreeatingsMail();
		/*try
		{
			dao.toConvertMysangathiUserToLeads();
		}
		catch (HttpException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ServletException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}

}
