package org.mindlinks.BO;

import java.sql.Date;

import org.mindlinks.Bean.Payment;
import org.mindlinks.Bean.PaymentRequestResponse;
import org.mindlinks.HibernateDAO.PaymentRequestResponseDAO;
import org.mindlinks.HibernateDAO.paymentDAO;

public class PaymentBO
{
	public PaymentRequestResponseDAO prrDAO = new PaymentRequestResponseDAO();
	public paymentDAO paymentDAO = new paymentDAO();
	
	public boolean handlePayment(PaymentRequestResponse prr,String responseData){
		//Parse the responseData and set values to prr Object.
		boolean paymentFlag = false;
		boolean paymentResFlag = false;
		java.util.Calendar cal = java.util.Calendar.getInstance();
		java.util.Date utilDate = cal.getTime();
		
		prr.setAmount(1000);
		prr.setErrorData("Error Data");
		prr.setLastCreatedDate(new Date(utilDate.getTime()));
		prr.setProfile(null);
		prr.setReqResId(0);
		prr.setRequestData("RequestData");
		prr.setRequestDate(String.valueOf(new Date(utilDate.getTime())));
		prr.setResponseData("Response Data");
		prr.setSessionid(0);
		prr.setStatus("success");
		prr.setTransactionId(0);
		prr.setVendor("CCAvenue");
		prr.setLastModifiedDate(new Date(utilDate.getTime()));
		
		if(prr.getStatus() == "success"){
			paymentResFlag = prrDAO.insertPayment(prr);
			System.out.println("Flag :::"+paymentResFlag);
			
			if(paymentResFlag == true){
				Payment payment = new Payment();
				payment.setAmount(prr.getAmount());
				payment.setCreatedDate(prr.getLastCreatedDate());
				payment.setLastModifiedDate(prr.getLastModifiedDate());
				payment.setPaymentDate(null);//Today's daTe
				payment.setPaymentStatus(prr.getStatus());
				payment.setProfileId(null);
				payment.setTransactionId(prr.getTransactionId());
				
				paymentFlag = paymentDAO.insertPayment(payment);
				if(paymentFlag == true){
					System.out.println("Transaction is success Data inserted into DB");
				}
			}else
			{
				System.out.println("Data not inserted into payment table");
			}
			
			return paymentFlag;
		}else
		{
			return false;
		}
	}
}
