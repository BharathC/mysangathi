package org.mindlinks.BS;

import org.mindlinks.BO.PaymentBO;
import org.mindlinks.Bean.PaymentRequestResponse;

public class PaymentBS
{
	public PaymentBO paymentBO = new PaymentBO();
	public boolean isSuccess = false;
	
	public boolean handlePayment(PaymentRequestResponse prr,String responseData){
		//Parse the responseData and set values to prr Object.
		isSuccess = paymentBO.handlePayment(prr, responseData);
		
		if(isSuccess == true)
			return true;
		else
			return false;
	}
}
