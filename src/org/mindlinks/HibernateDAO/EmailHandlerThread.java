package org.mindlinks.HibernateDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.mindlinks.BS.EmailBS;



public class EmailHandlerThread implements Runnable
{
	// Send email on meter insert.
	Properties props = System.getProperties();
	String EmailFrom = "";
	String EmailContent = "";
	String EmailSubject = "";
	String EmailTo = "";
	//int CompanyId;
	int ToprofileId=0;
	int FormprofileId=0;

	private static Session session;
	private static Message message;

	private static final Logger  log =Logger.getLogger(EmailHandlerThread.class);

	public EmailHandlerThread(String FromAddress, String ToAddress, String Content, String Subject, int Toprofileid)
	{
		log.info("ENTER:: Inside the constructer of match making profile email handler thread");
		// TODO Auto-generated constructor stub
		/*
		 * props.put("mail.smtp.starttls.enable", "true");
		 * props.put("mail.smtp.host", InsertAccountService.smtpHost);
		 * props.put("mail.smtp.port", "587"); props.put("mail.smtp.auth",
		 * "true"); props.put("mail.smtp.starttls.required", "true");
		 */

		
		props.put("mail.smtp.host", "smtp.googlemail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		
		session = Session.getDefaultInstance(props, new Authenticator()
		{
			@Override
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication("admin@mysangathi.com", "mysangathi123#");
			}
		});
		
		EmailFrom = FromAddress;
		EmailTo = ToAddress;
		EmailContent = Content;
		EmailSubject = Subject;
		Toprofileid = Toprofileid;
		FormprofileId=0;

		System.out.println("email from== " + EmailFrom);
		System.out.println("email to==" + EmailTo);
		System.out.println("email content==" + EmailContent);
		System.out.println("email subject==" + EmailSubject);
		System.out.println("company id==" + Toprofileid);
		// System.out.println("");
		
		//javax.mail.Session mailsession = javax.mail.Session.getInstance(props, null);
		/*MimeMessage message = new MimeMessage(session);

		try
		{
			log.info("ENTER:: Inside the run method of match making profile email handler thread");
			message.setFrom(new InternetAddress(this.EmailFrom));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(this.EmailTo));
			message.setSubject(this.EmailSubject);

			message.setContent(this.EmailContent, "text/html");
			System.out.println("after settings mail settings");

			Transport.send(message);
			log.info("EXIT:: Inside the run method of match making profile email handler thread AFTER MAIL SENT");
		}
		catch (AddressException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (MessagingException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	
	}

	public void start()
	{
	}

	@Override
	public void run()
	{
		// TODO Auto-generated method stub
		Connection dbcon = null;
		log.info("ENTER:: Inside the run method of match making profile email handler thread");

		try
		{
			log.info("ENTER:: Inside the run method try block of match making profile email handler thread");
			Class.forName("com.mysql.jdbc.Driver");
			//sendEMailviaOffice365_2();
			//sendEMailviaOffice365();
			//sendEMailviaGMail();
			
			

			

			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			// EZ7YSVTsertFxFjL

			Properties props = System.getProperties();
			props.load(EmailHandlerThread.class.getClassLoader().getResourceAsStream("resources.properties"));
			String DBPassword = props.getProperty("Montoring_PlatformDBPassword");
			String DBUserName = props.getProperty("Montoring_PlatformDBUserName");

			
			dbcon = DriverManager.getConnection("jdbc:mysql://localhost/mysangathi", "root", "password");
			PreparedStatement stmt = dbcon.prepareStatement("Insert into emailhistory(ProfileId,CreatedTime,SentTime,Sender,Recipient,Purpose,ToprofileId,Subject) values('" + this.ToprofileId + "','" + new Date(utilDate.getTime())
					+ "','" + new Date(utilDate.getTime()) + "','" + this.EmailFrom + "','" + this.EmailTo + "','" + this.EmailSubject + "'," + this.FormprofileId + ",'" + this.EmailContent + "')");
			stmt.execute();
			
		}
		catch (Exception ex)
		{
			System.out.println("exception is  " + ex);
			System.out.println("exception is<<<<<<<<<<>>>>>>>>>>>>  " + ex.getStackTrace());
			System.out.println("exception is  " + ex.getMessage());
			// hibsession.getTransaction().rollback();
		}
		finally
		{
			try
			{
				dbcon.close();
			}
			catch (Exception e)
			{
				System.out.println("dbconnection exception is  " + e);
				System.out.println("dbconnection exception is  " + e.getMessage());
			}

		}
		
	}
	public void sendEMailviaGMail() throws Exception
	{
		log.info("ENTER:: Inside the run method of match making profile email handler thread");

		/*javax.mail.Session mailsession = javax.mail.Session.getDefaultInstance(props, null);
		MimeMessage message = new MimeMessage(mailsession);

		message.setFrom(new InternetAddress(this.EmailFrom));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(this.EmailTo));
		message.setSubject(this.EmailSubject);

		
		
		message.setContent(this.EmailContent, "text/html");
		System.out.println("after settings mail settings");
		
		Transport.send(message);
		log.info("EXIT:: Inside the run method of match making profile email handler thread AFTER MAIL SENT");/*
		
		

		/*Transport tr = mailsession.getTransport("smtp");
		tr.connect(EmailSmtpHost.smtpHost, 587, EmailSmtpHost.smtpHostUser, EmailSmtpHost.smtpHostPassword);
		System.out.println("after initialising and connecting the transport");
		message.saveChanges();
		System.out.println("after saving the changes");
		tr.sendMessage(message, message.getAllRecipients());
		System.out.println("after sending the message");
		tr.close();
		System.out.println("after closing the transport");*/

		//java.util.Calendar cal = java.util.Calendar.getInstance();
	//	java.util.Date utilDate = cal.getTime();
		// EZ7YSVTsertFxFjL
		
		//javax.mail.Session mailsession = javax.mail.Session.getInstance(props, null);
		MimeMessage message = new MimeMessage(this.session);

		message.setFrom(new InternetAddress(this.EmailFrom));
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(this.EmailTo));
		message.setSubject(this.EmailSubject);

		message.setContent(this.EmailContent, "text/html");
		System.out.println("after settings mail settings");

		Transport.send(message);
		log.info("EXIT:: Inside the run method of match making profile email handler thread AFTER MAIL SENT");
		
		
		
		
	

	}

}
