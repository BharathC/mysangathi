package org.mindlinks.Actionclasses;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;
import org.mindlinks.BS.ProfileBS;
import org.mindlinks.Bean.Profile;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DisplayHoroscopeAction  extends ActionSupport implements ModelDriven
{
	private static final Logger logger = Logger.getLogger(DisplayHoroscopeAction.class);
	private int profileId;
	String horoscopepath=null;
	
	Profile  profile;
	private InputStream fileInputStream;
	 
	public InputStream getFileInputStream() 
	{
		return fileInputStream;
	}

  
	public int getProfileId()
	{
		return profileId;
	}

	public void setProfileId(int profileId)
	{
		this.profileId = profileId;
	}

	public String execute(HttpServletResponse response) throws Exception
	{
	
	     response.setContentType("application/octet-stream");
	     response.setHeader("Content-Disposition","attachment;filename=superfish.zip");
		
		// TODO Auto-generated method stub
		logger.info("ENTER::INSIDE THE DISPLAY HOROSCOPE ACTION EXECUTE MEHTOD  ");
		SessionMap   session=(SessionMap) ActionContext.getContext().get("session");
		if(session.get("myprofile")==null)
		{
			return "session";
		}
		System.out.println("action class id+++++++++"+profileId);
		ProfileBS profilebs = new ProfileBS();
		horoscopepath=profilebs.getHoroscopeFromProfile(profileId);	
		FileInputStream in = 
      		new FileInputStream(new File("C:\\superfish.zip"));
		try{
	       ServletOutputStream out = response.getOutputStream();
	       
	        byte[] outputByte = new byte[4096];
	        //copy binary content to output stream
	        while(in.read(outputByte, 0, 4096) != -1){
	        	out.write(outputByte, 0, 4096);
	        }
	        in.close();
	        out.flush();
	        out.close();
	 
	     }catch(Exception e){
	    	e.printStackTrace();
	   }
		/*try
		{
		fileInputStream = new FileInputStream(new File("horoscopepath"));
		} catch(FileNotFoundException ex)
	    {
	        logger.error(this.getClass().getSimpleName() + ": File in " + horoscopepath + " cannot be found.");
	           
	    }

		System.out.println("======================horoscope"+horoscopepath);*/
		logger.info("EXIT::INSIDE THE DISPLAY HOROSCOPE ACTION EXECUTE MEHTOD  ");
		return "SUCCESS";
	}
	@Override
	public Profile getModel()
	{
		// TODO Auto-generated method stub
		return profile;
	}

}
