package org.mindlinks.Actionclasses;

import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class Payment extends ActionSupport implements ServletResponseAware 
{
	
	
	HttpServletResponse response;
	 
	//business logic
	public String execute() {
		Locale locale = getServletResponse().getLocale();
		System.out.println("Response parameters "+locale);
		return "SUCCESS";
	}
 
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	public HttpServletResponse getServletResponse() {
		return this.response;
	}	
	
	
    /*
          PaymentRequestResponse prr = new PaymentRequestResponse();
          
          prr.setpaymentID = request.
      
    
		
	public String execute() throws Exception{
				
		return null;
	}
	
	
		public void requestPayment(Profile profile,String amount, String scenario){
						
		}
		
		public void processPayment(){
			
		}
		*/
		

}
