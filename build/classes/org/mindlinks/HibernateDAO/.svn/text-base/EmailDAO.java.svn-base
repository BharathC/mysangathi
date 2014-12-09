package org.mindlinks.HibernateDAO;

import java.util.Properties;

import javax.mail.Session;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.UserBS;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EmailDAO
{

	public String Content;
	public String FromAddress;
	public String Subject;
	public Session session;
	
	private static final String ToAddress = null;

	private static final Logger logger = Logger.getLogger(UserBS.class);
	public void sendEmail(String Errormessage) throws Exception
	{
	   logger.info("ENTER INTO THE  SEND EMAIL METHOED IN THE EMAIL DAO ERROR MESSAGE IS  "+Errormessage);
		Properties props = new Properties();
		logger.info("ENTER IN TO THE SEND EMAIL METHOED IN THE EMAIL PROPERTIES"+props);
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		EmailDAO email = new EmailDAO();
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
		{
			
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});
		
		try{
			
			logger.info("ENTER IN TO THE SEND EMAIL METHOED IN THE EMAIL DAO TRY BLOCK"+email);
			email.FromAddress="admin@mysangathi.com";
			email.Subject="Exception Notification";
			email.session=session;
				Message message = new MimeMessage(email.session);
				message.setFrom(new InternetAddress(email.FromAddress));
				message.setSubject(email.Subject);
		
				
			
				
				String to ="mysangathiexception@gmail.com";

				message.setContent(Errormessage, "text/html");
		
				
						
				 message.addRecipient(Message.RecipientType.TO,
                         new InternetAddress(to));
						
				 logger.info("ENTER IN TO THE TRY BLOCK IN SEND EMAIL METHOED IN THE EMAIL DAO  "+message);
						Transport.send(message);
				}
		
		catch(Exception ex){
			logger.info("ENTER IN TO THE CATCH BLOCK IN SEND EMAIL METHOED IN THE EMAIL PROPERTIES");
			throw ex;
		}
	}

}




