package org.mindlinks.Actionclasses;

import com.opensymphony.xwork2.ActionSupport;

public class MiscPaymentAction extends ActionSupport

{
	public String execute() throws Exception{
		System.out.println("Inside MiscPaymentAction class --> exe() method ");
		return "SUCCESS";
	}
	
	public String genMiscPay(){
		
		System.out.println("Inside MiscPaymentAction --> genMiscPay method");
		 
	    System.out.println(Long.toHexString(Double.doubleToLongBits(Math.random())));
		
		return "SUCCESS";
	}

}
