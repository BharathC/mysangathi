package org.mindlinks.Actionclasses;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;
import org.mindlinks.mysangathi.Constants;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProfileupdateAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(ProfileupdateAction.class);

	private File photoupload;
	private File horoscopeupload;
	private String photouploadContentType;
	private String horoscopeuploadContentType;
	private String photouploadFileName;
	private String horoscopeuploadFileName;
	public String getHoroscopeuploadFileName()
	{
		return horoscopeuploadFileName;
	}

	public void setHoroscopeuploadFileName(String horoscopeuploadFileName)
	{
		this.horoscopeuploadFileName = horoscopeuploadFileName;
	}

	String horoscopepath=null;
	private int profileId;
	Profile profile = new Profile();
	
	private InputStream fileInputStream;
	 
	public InputStream getFileInputStream() {
		return fileInputStream;
	}
 
	public void setFileInputStream(InputStream fileInputStream)
	{
		this.fileInputStream = fileInputStream;
	}

	public Profile getProfile()
	{
		return profile;
	}

	public void setProfile(Profile profile)
	{
		this.profile = profile;
	}

	public File getPhotoupload()
	{
		return photoupload;
	}

	public void setPhotoupload(File photoupload)
	{
		this.photoupload = photoupload;
	}

	public File getHoroscopeupload()
	{
		return horoscopeupload;
	}

	public void setHoroscopeupload(File horoscopeupload)
	{
		this.horoscopeupload = horoscopeupload;
	}

	public String getPhotouploadFileName()
	{
		return photouploadFileName;
	}

	public void setPhotouploadFileName(String photouploadFileName)
	{
		this.photouploadFileName = photouploadFileName;
	}

	public String getPhotouploadContentType()
	{
		return photouploadContentType;
	}

	public void setPhotouploadContentType(String photouploadContentType)
	{
		this.photouploadContentType = photouploadContentType;
	}

	public String getHoroscopeuploadContentType()
	{
		return horoscopeuploadContentType;
	}

	public void setHoroscopeuploadContentType(String horoscopeuploadContentType)
	{
		this.horoscopeuploadContentType = horoscopeuploadContentType;
	}

	@Override
	public String execute() throws Exception
	{
		System.out.println("Inside the ProfileupdateAction execute method");
		String DBhoroscope=null;
		String DBphoto=null;
		
		//profile.setPhoto(DBphoto);
		//profile.setHoroscope(DBhoroscope);
		System.out.println("photo is  before "+profile.getPhoto());
		
		System.out.println("horoscope is   before "+profile.getHoroscope());
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION EXECUTE METHOD ");
		Properties prop = new Properties();
		Profile profile1 = null;
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		//System.out.println(session.get("myprofile"));
		logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION EXECUTE METHOD GETING THE SESSION OBJECET");
		if (session.get("myprofile") == null)
		{
			return "session";
		}
		
		
		// horoscopepath = profilebs.getHoroscopeFromProfile(profileId);	
		 
		
		long unixTime = System.currentTimeMillis() / 1000L;
		
		if (photoupload != null)
		{
			logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION CLASS TO CHECK PHOTO IS NOT NULL ");
			 String PhotoExtension =null;

			prop.load(AdminUpdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));
			String photoupload1 = prop.getProperty("photoupload");
			String photoDBupload2 = prop.getProperty("photoDBupload");
			

			int pos = photouploadFileName.lastIndexOf(".");
			System.out.println("position is=============="+pos);
			if(pos != -1) 
			{
				PhotoExtension = photouploadFileName.substring(pos);
			      System.out.println("+-----the name is--------------"+PhotoExtension);
			}
			 System.out.println("+-----the name is----22222----------"+PhotoExtension);

			String photo = photoupload1 + unixTime + PhotoExtension;
			DBphoto = photoDBupload2 + unixTime + PhotoExtension;
			File saveFilePath = new File(photo);
			try
			{
				logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION EXECUTE METHOD IF INSEDE TRY BLACK SAVE THE FILE PATH PHOTO");
				FileUtils.copyFile(photoupload, saveFilePath);
			}
			catch (IOException e)
			{
				logger.error("COULDN'T SAVE THE FILE: " + e.getMessage());
				String ErrorMessage = e.getMessage()+"  :Error Details: ";
				StackTraceElement[] messages = e.getStackTrace();
				for(int i=0; i<messages.length; i++)
				{
					ErrorMessage= ErrorMessage+"  "+messages[i].toString();
				}
				EmailAction email = new EmailAction();
				email.sendEmail(email);

			}
			profile.setPhoto(DBphoto);
			// profile.setPhotouploadeddate(today);
		}
		else
		{
			//Check whether photo was uploaded previously
			if(profile.getPhoto() !=null)
			{
				profile.setPhoto(profile.getPhoto());
			}
		}
		if (horoscopeupload != null)
		{
			String HoroscopeExtension = null;
			logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD CHECK HOROSCOPE IS NOT EQUELS TO NULL ");
			prop.load(ProfileupdateAction.class.getClassLoader().getResourceAsStream("resources.properties"));

			String uploadhoroscope = prop.getProperty("horoscopeupload");
			String dbuploadhoroscope = prop.getProperty("horoscopeDBupload");
			
			int pos = horoscopeuploadFileName.lastIndexOf(".");
			System.out.println("position is=============="+pos);
			if(pos != -1) 
			{
				//System.out.println(HoroscopeExtension);
				   HoroscopeExtension=horoscopeuploadFileName.substring(pos);
			      System.out.println("+-----the name is--------------"+HoroscopeExtension);
			}
			
			String horoscope = uploadhoroscope + unixTime + HoroscopeExtension;
			DBhoroscope = dbuploadhoroscope + unixTime + HoroscopeExtension;
			File saveFilePath1 = new File(horoscope);
			try
			{
				logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD CHECK HOROSCOPE IS NOT EQUELS TO NULL TO UPLOAD HOROSCOPE");
				FileUtils.copyFile(horoscopeupload, saveFilePath1);
			}
			catch (IOException ex)
			{
				logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD CHECK HOROSCOPE IS NOT EQUELS TO NULL SAVE TO DATABASE ");
				logger.error("COULD NOT SAVE THE FILE" + ex.getMessage());

			}
			profile.setHoroscope(DBhoroscope);
			// profile.setHororscopeuploadeddate(today);
		}
		else
		{
			//Check whether photo was uploaded previously
			if(profile.getHoroscope() !=null)
			{
				profile.setHoroscope(profile.getHoroscope());
			}
			
		}

		System.out.println("photo is  after "+DBphoto);
		System.out.println("horoscope is   after "+DBhoroscope);
		ProfileBS profilebs = new ProfileBS();
		profile1 = profilebs.updateProfile(profile);
		if (profile1 != null)
		{
			// session.put("myprofile", profile1);
			logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION CLASS TO SEND SUCCESS  ");
			profilebs.profileUpdateInSalesForce(profile);
			return "SUCCESS";
		}
		else
		{
			logger.error("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION CLASS TO SEND ERROR  ");
			return "error";
		}
		
	

	}

	public int getProfileId()
	{
		return profileId;
	}

	public void setProfileId(int profileId)
	{
		this.profileId = profileId;
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE ADMIN UPDATE ADMIN UPDATE ACTION CLASS TO RETURN MODEL OBJECT  ");
		return profile;
	}

}
