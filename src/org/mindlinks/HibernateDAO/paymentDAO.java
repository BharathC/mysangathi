package org.mindlinks.HibernateDAO;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.mindlinks.Bean.Payment;
import org.mindlinks.Bean.Profile;

public class paymentDAO
{
	/*
	 * created by Anil
	 * 1-Dec-14
	 */
	public Boolean insertPayment(Payment payment)
	{
		System.out.println("Inside inserPayment()"+payment);
	//	logger.info("ENTER:: THE CREATE PROFILE DAO" + paymentId);
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();

		try
		{
		//	logger.info("ENTER:: THE CREATE PROFILE  DAO TRY BLOCK" + Profile);
			System.out.println("After FullTextSession");
			// test data
			System.out.println("After beginTransaction");
     		payment.setAmount(payment.getAmount());
     		payment.setCreatedDate(payment.getCreatedDate());
     		payment.setLastModifiedDate(payment.getLastModifiedDate());
     		payment.setPaymentDate(payment.getPaymentDate());
     		payment.setPaymentId(payment.getPaymentId());
     		payment.setPaymentStatus(payment.getPaymentStatus());
     		payment.setProfileId(null);
     		payment.setTransactionId(payment.getTransactionId());
     		
			fts.beginTransaction();
			fts.save(payment);
			System.out.println("fts: "+fts);
		}
		catch (Exception e)
		{
		//	logger.error("INSIDE:: THE CREATE PROFILE  DAO  EXCEPTION " + e);
			fts.getTransaction().rollback();
			String ErrorMessage = e.getMessage() + "  :Error Details: ";
			StackTraceElement[] messages = e.getStackTrace();
			for (int j = 0; j < messages.length; j++)
			{
				ErrorMessage = ErrorMessage + "  " + messages[j].toString();
			}
			try
			{
				//oemail.sendEmail(ErrorMessage);
			}
			catch (Exception e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		finally
		{
			// logger.info("ENTER:: THE CREATE PROFILE  DAO FINALLY  BLOCK CLOSE SESSION");
			session.close();
		}
		return true;
	}
}
