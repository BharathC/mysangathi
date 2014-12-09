package org.mindlinks.BO;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.mail.Session;

import org.apache.log4j.Logger;

import org.apache.struts2.components.ElseIf;
import org.mindlinks.Bean.Subscription;

import org.hibernate.HibernateException;

import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;
import org.mindlinks.HibernateDAO.LoginDAO;
import org.mindlinks.HibernateDAO.ProfileDAO;
import org.mindlinks.HibernateDAO.UserDAO;

public class UserBO
{
	private static final Logger logger = Logger.getLogger(UserBO.class);

	public String setInitialPassword(String username, String password)
	{

		logger.info("ENTER::THE CREATE PROFILE  BO METHOD");
		String setpassword;
		boolean flag = true;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		System.out.println("username"+username);
		System.out.println("********************PASSWORD from UI    " + password);

		try
		{
			keybytes = password.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			password = new sun.misc.BASE64Encoder().encode(encryptedBytes);

			System.out.println("Encrypted String is ******************" + password);

		}
		catch (IOException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (IllegalBlockSizeException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (BadPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeyException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchAlgorithmException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

		}
		catch (NoSuchPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeySpecException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		  System.out.println("set Intitial password=============="+username);

		  System.out.println("set Intitial password=================="+password);

		UserDAO userclient = new UserDAO();
		Boolean status = userclient.setInitialPassword(username, password);
		if (status == true)
		{
			setpassword = "SUCCESS";
		}
		else
		{
			setpassword = "input";
		}
		return setpassword;

	}

	public boolean changeUserPassword(User user) 
	{
		logger.info("ENTER INTO THE CHANGE USER PASSWORD METHOED");

		boolean flag =false;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		String encryptedString = null;
		UserDAO loginclient = new UserDAO();
		User userdb = new User();

		passwordfront = user.getPassword();
		System.out.println("********************PASSWORD from UI    " + passwordfront);

		try
		{
			logger.info("ENTER INTO THE CHANGE USER PASSWORD METHOED TRY BLOCK");
			keybytes = passwordfront.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			encryptedString = new sun.misc.BASE64Encoder().encode(encryptedBytes);

			System.out.println("Encrypted String is ******************" + encryptedString);

			user.setPassword(encryptedString);
			UserDAO userdao = new UserDAO();
			flag =userdao.SetPassword(user);
			logger.info("EXIT :: INTO THE CHANGE USER PASSWORD METHOED TRY BLOCK");

		}
		catch (IOException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (IllegalBlockSizeException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (BadPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeyException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchAlgorithmException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeySpecException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return flag;
	}

	public boolean checkusername(User user)
	{
		logger.info("ENTER INTO THE FORGOT CHECK USER PASSWORD METHOED");
		boolean flag = false;

		String username = user.getUsername();
		;

		UserDAO userdao = new UserDAO();

		flag = userdao.checkusername(username);

		logger.info("EXIT INTO THE FORGOT CHECK USER PASSWORD METHOED");

		return flag;

	}

	public boolean forgetChangeUserPassword(User user) 
	{
		logger.info("ENTER INTO THE FORGOT CHANGE USER PASSWORD METHOED");

		boolean flag = true;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		String encryptedString = null;
		UserDAO loginclient = new UserDAO();
		User userdb = new User();
		passwordfront = user.getPassword();
		System.out.println("********************PASSWORD from UI    " + passwordfront);

		try
		{
			logger.info("ENTER INTO THE FORGOT CHANGE USER PASSWORD METHOED TRY BLOCK");
			keybytes = passwordfront.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			encryptedString = new sun.misc.BASE64Encoder().encode(encryptedBytes);

			System.out.println("Encrypted String is ******************" + encryptedString);

			user.setPassword(encryptedString);
			UserDAO userdao = new UserDAO();
			userdao.SetForgetPassword(user);
			logger.info("EXIT INTO THE FORGOT CHANGE USER PASSWORD METHOED TRY BLOCK");

		}
		catch (IOException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (IllegalBlockSizeException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (BadPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeyException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchAlgorithmException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeySpecException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return flag;
	}

	public boolean subscribe(String username, String url, String temppassword)
	{

		logger.info("ENTER::THE SUBSCRIBE  BO METHOD");
		ProfileDAO profileclient = new ProfileDAO();
		boolean subscribedflag = profileclient.subscribe(username, url, temppassword);
		System.out.println("subscribedfalg inside BO AFTER subscrption" + subscribedflag);
		logger.info("EXITE::THE SUBSCRIBE METHOD");
		return true;

	}

	public Subscription activationstatusurl(String username)
	{
		Subscription subscriptiondb =null;
		logger.info("ENTER INTO THE ACTIVATION STATUS URL METHOED");
		UserDAO dao = new UserDAO();
		subscriptiondb = dao.activationstatusurl(username);
		logger.info("EXIT INTO THE ACTIVATION STATUS URL METHOED");
		return subscriptiondb;
	}

	public User checkForgotPasswordUserName(String username)
	{
		User userdb =null;
		logger.info("ENTER INTO CHECK USER METHOD");
		UserDAO dao = new UserDAO();
		userdb = dao.checkForgotPasswordUserName(username);
		logger.info("EXIT INTO CHECK USER METHOD" +userdb);
		return userdb;
	}

	
	public String CheckchangePasswordUserNameAndPassword(String username,String password) 
	{
		logger.info("CheckchangePasswordUserNameAndPassword");

		boolean flag =false;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		String encryptedString = null;
		UserDAO loginclient = new UserDAO();
		User userdb=null;
		String status = null;
		passwordfront =password;
		System.out.println("********************PASSWORD from UI    " + passwordfront);

		try
		{
			logger.info("ENTER INTO THE CHANGE USER PASSWORD METHOED TRY BLOCK");
			keybytes = passwordfront.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			encryptedString = new sun.misc.BASE64Encoder().encode(encryptedBytes);

			System.out.println("Encrypted String is ******************" + encryptedString);

			//user.setPassword(encryptedString);
			UserDAO userdao = new UserDAO();
			userdb=userdao.checkChangePasswordUserNameAndPassword(username,encryptedString);
			if(userdb==null)
			{
				status="ERROR";
			}else
			{
				status="SUCCESS";
			}
			logger.info("EXIT :: CheckchangePasswordUserNameAndPasswordMETHOED TRY BLOCK");

		}
		catch (IOException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (IllegalBlockSizeException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (BadPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeyException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchAlgorithmException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (NoSuchPaddingException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		catch (InvalidKeySpecException e)
		{

			String ErrorMessage = e.getMessage()+"  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for(int i=0; i<messages.length; i++)
			{
				ErrorMessage= ErrorMessage+"  "+messages[i].toString();
			}
			EmailBO oemail = new EmailBO();
			oemail.Content=ErrorMessage;
			oemail.FromAddress="admin@mysangathi.com";
			oemail.Subject="Exception Notification";
			Session session =
			null;
			oemail.session=session;
			try
			{
				oemail.sendEmail(oemail);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

		return status;
	}

}
