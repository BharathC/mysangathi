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
import org.apache.struts2.dispatcher.SessionMap;

import org.mindlinks.Bean.MatchingProfiles;
import org.mindlinks.Bean.Profile;
import org.mindlinks.Bean.User;
import org.mindlinks.Exceptions.AuthenticateUserException;
import org.mindlinks.HibernateDAO.LoginDAO;

import com.opensymphony.xwork2.ActionContext;

public class LoginBO
{
	private static final Logger logger = Logger.getLogger(LoginBO.class);
	private static final int ToProfileId3 = 0;
	private Session session;
	
	public boolean authenticateUser(User user) 
	{
	
		logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD");
		boolean flag = true;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		String encryptedString = null;
		LoginDAO loginclient = new LoginDAO();
		User userdb = new User();
		try
		{
			   logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD OF TRY BLACK GETING THE AUTHENTICATED USER");
			  
				
			userdb = loginclient.authenticateUser(user);
			
			passworddb = userdb.getPassword();
		}
		catch (AuthenticateUserException e1)
		{
			logger.error("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD OF CATCH BLACK GETING THE AUTHENTICATED USER EXCEPTION"+e1);
			flag = false;
			System.out.println("LoginBO.authenticateUser() exception");
			e1.printStackTrace();
		}

		passwordfront = user.getPassword();

		try
		{
			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING THE USER PASSWORD");
			keybytes = passwordfront.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			encryptedString = new sun.misc.BASE64Encoder().encode(encryptedBytes);


			/*
			 * //DECRYPTION byte[] decodedString = new
			 * sun.misc.BASE64Decoder().decodeBuffer(encryptedString);
			 * cipher.init(Cipher.DECRYPT_MODE, SECkey); byte[] decryptedBytes =
			 * cipher.doFinal(decodedString); String decryptedString = new
			 * String(decryptedBytes, "UTF8"); System.out.println(
			 * "***********************decrypted String is*******"
			 * +decryptedString);
			 */

			logger.info("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING THE USER PASSWORD");

		}
		catch (IOException e)
		{
			
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK IO EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK ILLEGAL BLOCK SIZE EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK BAD PADDING EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK IN VALID EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH ALGORITHM EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH PADDING EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH PADDING EXCEPTION"+e);
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

		//System.out.println("Encrypted String is ******************" + encryptedString);
		//System.out.println("Password from db  is   " + passworddb);
		if (encryptedString.equals(passworddb))
		{

			// loginbo.loadProfile(user1);
			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD CHECKING ENCRYPTED PASSWORD IS EQUALS TO DB PASSWORD ");
			flag = true;

		}
		else

		{

			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING PASSWORD FALSE");
			flag = false;
			return flag;
		}
		return flag;

	}

	public Profile loadProfile(String email)
	{
		logger.info("ENTER:: THE LOAD PROFILE METHOD");
		Profile profile = null;
		LoginDAO loginclient = new LoginDAO();
		profile = loginclient.loadProfile(email);
		logger.info("EXIT:: THE LOAD PROFILE METHOD");
		return profile;

	}
	public boolean ClientauthenticateUser(String username ,String password) 
	{
	
		logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD");
		boolean flag = true;
		String passwordfront;
		String secretkey = "$Mind&Links!";
		byte[] keybytes;
		String passworddb = null;
		String encryptedString = null;
		LoginDAO loginclient = new LoginDAO();
		User userdb = new User();
		try
		{
			   logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD OF TRY BLACK GETING THE AUTHENTICATED USER");
			  
				
			userdb = loginclient.ClientauthenticateUser(username, password);
			
			passworddb = userdb.getPassword();
		}
		catch (AuthenticateUserException e1)
		{
			logger.error("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD OF CATCH BLACK GETING THE AUTHENTICATED USER EXCEPTION"+e1);
			flag = false;
			System.out.println("LoginBO.authenticateUser() exception");
			e1.printStackTrace();
		}

		passwordfront = password;

		try
		{
			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING THE USER PASSWORD");
			keybytes = passwordfront.getBytes("UTF8");
			DESKeySpec keySpec = new DESKeySpec(secretkey.getBytes("UTF8"));

			SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
			SecretKey SECkey = keyFactory.generateSecret(keySpec);
			Cipher cipher = Cipher.getInstance("DES");

			// ENCRYPTION
			cipher.init(Cipher.ENCRYPT_MODE, SECkey);
			byte[] encryptedBytes = cipher.doFinal(keybytes);
			encryptedString = new sun.misc.BASE64Encoder().encode(encryptedBytes);


			/*
			 * //DECRYPTION byte[] decodedString = new
			 * sun.misc.BASE64Decoder().decodeBuffer(encryptedString);
			 * cipher.init(Cipher.DECRYPT_MODE, SECkey); byte[] decryptedBytes =
			 * cipher.doFinal(decodedString); String decryptedString = new
			 * String(decryptedBytes, "UTF8"); System.out.println(
			 * "***********************decrypted String is*******"
			 * +decryptedString);
			 */

			logger.info("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING THE USER PASSWORD");

		}
		catch (IOException e)
		{
			
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK IO EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK ILLEGAL BLOCK SIZE EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK BAD PADDING EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH BLACK IN VALID EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH ALGORITHM EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH PADDING EXCEPTION"+e);
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
			logger.error("EXIT::THE LOGIN BO AUTHENTICATE USER METHOD CATCH NO SUCH PADDING EXCEPTION"+e);
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

		//System.out.println("Encrypted String is ******************" + encryptedString);
		//System.out.println("Password from db  is   " + passworddb);
		if (encryptedString.equals(passworddb))
		{

			// loginbo.loadProfile(user1);
			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD CHECKING ENCRYPTED PASSWORD IS EQUALS TO DB PASSWORD ");
			flag = true;

		}
		else

		{

			logger.info("ENTER::THE LOGIN BO AUTHENTICATE USER METHOD ENCRYPTING PASSWORD FALSE");
			flag = false;
			return flag;
		}
		return flag;

	}
	
	public MatchingProfiles  loadMatchingProfiles(String email)
	{
		MatchingProfiles   matchingprofiles=null;
		LoginDAO loginclient = new LoginDAO();
		matchingprofiles=loginclient.loadMatchingProfiles(email);
		
		return matchingprofiles;
		
		
	
	}
	
	
	
	
	
	public static void main(String[] args)
	{
		LoginBO  ll=new LoginBO();
		//ll.checkValidSession("36");
	}

}
