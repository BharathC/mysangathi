package org.mindlinks.HibernateDAO;

import java.sql.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.search.FullTextSession;
import org.mindlinks.Bean.Payment;
import org.mindlinks.Bean.PaymentRequestResponse;
import org.mindlinks.Bean.Profile;

public class PaymentRequestResponseDAO
{
	public Boolean insertPayment(PaymentRequestResponse payment)
	{
		
	//	logger.info("ENTER:: THE CREATE PROFILE DAO" + paymentId);
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		FullTextSession fts = org.hibernate.search.Search.getFullTextSession(session);
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		
		try
		{
		//	logger.info("ENTER:: THE CREATE PROFILE  DAO TRY BLOCK" + Profile);
			System.out.println("Payment Obj :"+payment);
			System.out.println("After FullTextSession");
			// test data
			System.out.println("After beginTransaction");
     		payment.setAmount(payment.getAmount());
     		payment.setErrorData(payment.getErrorData());
     	 	payment.setProfile(null);
     		payment.setReqResId(payment.getReqResId());
     		payment.setRequestData(payment.getRequestData());
     		payment.setRequestDate(payment.getRequestDate());
     		payment.setResponseData(payment.getResponseData());
     		payment.setTransactionId(payment.getTransactionId());
     		payment.setSessionid(payment.getSessionid());
     		payment.setStatus(payment.getStatus());
     		
     		
     		System.out.println("fts: "+fts);
			fts.beginTransaction();
			fts.save(payment);
			
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
