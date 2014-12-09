package org.mindlinks.Bean;

import java.util.Date;
/*
 * created by Anil
 *1-Dec-14
 */
public class PaymentRequestResponse
{
	public int reqResId;
	public Profile profile;
	public double amount;
	public String requestDate;
	public String requestData;
	public String responseData;
	public String status;
	public String errorData;
	public String vendor;
	public int transactionId;
	public int sessionid;
	public Date lastCreatedDate;
	public Date lastModifiedDate;
	
	//setters and getters
	public int getReqResId()
	{
		return reqResId;
	}
	public void setReqResId(int reqResId)
	{
		this.reqResId = reqResId;
	}
	public Profile getProfile()
	{
		return profile;
	}
	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}
	public double getAmount()
	{
		return amount;
	}
	public void setAmount(double amount)
	{
		this.amount = amount;
	}
	public String getRequestDate()
	{
		return requestDate;
	}
	public void setRequestDate(String requestDate)
	{
		this.requestDate = requestDate;
	}
	public String getRequestData()
	{
		return requestData;
	}
	public void setRequestData(String requestData)
	{
		this.requestData = requestData;
	}
	public String getResponseData()
	{
		return responseData;
	}
	public void setResponseData(String responseData)
	{
		this.responseData = responseData;
	}
	public String getStatus()
	{
		return status;
	}
	public void setStatus(String status)
	{
		this.status = status;
	}
	public String getErrorData()
	{
		return errorData;
	}
	public void setErrorData(String errorData)
	{
		this.errorData = errorData;
	}
	public String getVendor()
	{
		return vendor;
	}
	public void setVendor(String vendor)
	{
		this.vendor = vendor;
	}
	public int getTransactionId()
	{
		return transactionId;
	}
	public void setTransactionId(int transactionId)
	{
		this.transactionId = transactionId;
	}
	public int getSessionid()
	{
		return sessionid;
	}
	public void setSessionid(int sessionid)
	{
		this.sessionid = sessionid;
	}
	public Date getLastCreatedDate()
	{
		return lastCreatedDate;
	}
	public void setLastCreatedDate(Date lastCreatedDate)
	{
		this.lastCreatedDate = lastCreatedDate;
	}
	public Date getLastModifiedDate()
	{
		return lastModifiedDate;
	}
	public void setLastModifiedDate(Date lastModifiedDate)
	{
		this.lastModifiedDate = lastModifiedDate;
	}
}
