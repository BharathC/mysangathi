package org.mindlinks.Actionclasses;

import java.io.File;
import java.io.IOException;
import java.util.Properties;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UploadProfileAction extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(UpdateProfileAction.class);
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

	Profile profile= new Profile();

	
	
	
	
	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
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

	public String getPhotouploadFileName()
	{
		return photouploadFileName;
	}

	public void setPhotouploadFileName(String photouploadFileName)
	{
		this.photouploadFileName = photouploadFileName;
	}

	@Override
	public String execute() throws Exception
	{
		logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD ");
		Properties prop = new Properties();
		Profile profile1 = null;
	
		
		//System.out.println("profilecreateddate in action class after submitting the form    " + profile.getName());
		//System.out.println("====================email========="+profile.getEmail());
		//System.out.println("====================country========="+profile.getCountry());
		//System.out.println("====================dob========="+profile.getDateofbirth());
		//System.out.println("====================cost========="+profile.getCaste());
		//System.out.println("Filename is " + photouploadFileName);
		//System.out.println("photoupload   " + photoupload);
		//System.out.println("Photo Content Type is " + photouploadContentType);
		//System.out.println("Horoscope Content Type is " + horoscopeuploadContentType);
		long unixTime = System.currentTimeMillis() / 1000L;
		if (photoupload != null)
		{

			// String upload=con.getPhotoupload();
			logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD IF PHOTO NOT EQUALS TO NULL ");
			 String PhotoExtension =null;
			prop.load(UploadProfileAction.class.getClassLoader().getResourceAsStream("resources.properties"));

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

			//System.out.println("=======MySangathi URL--" + Constants.mysangathi);
			String photo = photoupload1 + unixTime + PhotoExtension;
			String DBphoto = photoDBupload2 + unixTime + PhotoExtension;
			//System.out.println("=======DB Path--" + DBphoto);

			File saveFilePath = new File(photo);
			try
			{
				logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD TO SAVE THE FILE INTO THE DIRECTRY ");
				FileUtils.copyFile(photoupload, saveFilePath);
			}
			catch (IOException ex)
			{
				logger.error("COULDN'T SAVE THE FILE " + ex.getMessage());

			}
			logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD  SAVE THE FILE INTO DATABASE ");
			profile.setPhoto(DBphoto);
			// profile.setPhotouploadeddate(today);
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
			String DBhoroscope = dbuploadhoroscope + unixTime + HoroscopeExtension;
			System.out.println("++++++++++++++++++++++++"+DBhoroscope);

			File saveFilePath1 = new File(horoscope);
			try
			{
				logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD CHECK HOROSCOPE IS NOT EQUELS TO NULL TO UPLOAD HOROSCOPE");
				FileUtils.copyFile(horoscopeupload, saveFilePath1);
			}
			catch (IOException e)
			{
				logger.info("ENTER::THE INSIDE THE PROFILE ACTION CLASS EXECUTE METHOD CHECK HOROSCOPE IS NOT EQUELS TO NULL SAVE TO DATABASE ");
				logger.error("COULD NOT SAVE THE FILE" + e.getMessage());
				String ErrorMessage = e.getMessage()+"  :Error Details: ";
				StackTraceElement[] messages = e.getStackTrace();
				for(int i=0; i<messages.length; i++)
				{
					ErrorMessage= ErrorMessage+"  "+messages[i].toString();
				}
				EmailAction email = new EmailAction();
				email.sendEmail(email);

			}
			profile.setHoroscope(DBhoroscope);
			// profile.setHororscopeuploadeddate(today);
		}


		ProfileBS profilebs = new ProfileBS();
		profile1 = profilebs.uploadProfile(profile);
		SessionMap session = (SessionMap) ActionContext.getContext().get("session");
		if (session.isEmpty())
		{
			logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD CHECK THE SESSION IS EMPTY");
			return "session";
		}
		if (profile1 != null)
		{
			// session.put("myprofile", profile1);
			logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD RETURNS THE SUCCESS");
			profilebs.toUploadProfileToSalesForce(profile);
			return "SUCCESS";
		}
		else
		{
			logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION  EXECUTE METHOD RETURNS THE INPUT");
			return "input";
		}

	}

	@Override
	public void validate()
	{
		System.out.println("INSIDE VALIDATE IN UploadProfile");
	}

	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE UPLOAD PROFILE ACTION RETURNS THE PROFILE OBJECT");
		return profile;
	}

}
