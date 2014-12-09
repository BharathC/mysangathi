package org.mindlinks.Bean;

import java.util.Date;
/*
 * created by Anil
 * 1-Dec-14
 */
public class Payment
{
	public int paymentId;
	public Profile profileId;
	public double amount;
	public Date paymentDate;
	public int transactionId;
	public String paymentStatus;
	public Date createdDate;
	public Date lastModifiedDate;
	
	public int getPaymentId()
	{
		return paymentId;
	}
	public void setPaymentId(int paymentId)
	{
		this.paymentId = paymentId;
	}
	public Profile getProfileId()
	{
		return profileId;
	}
	public void setProfileId(Profile profileId)
	{
		this.profileId = profileId;
	}
	public double getAmount()
	{
		return amount;
	}
	public void setAmount(double amount)
	{
		this.amount = amount;
	}
	public Date getPaymentDate()
	{
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate)
	{
		this.paymentDate = paymentDate;
	}
	public int getTransactionId()
	{
		return transactionId;
	}
	public void setTransactionId(int transactionId)
	{
		this.transactionId = transactionId;
	}
	public String getPaymentStatus()
	{
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus)
	{
		this.paymentStatus = paymentStatus;
	}
	public Date getCreatedDate()
	{
		return createdDate;
	}
	public void setCreatedDate(Date createdDate)
	{
		this.createdDate = createdDate;
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
