package org.mindlinks.HibernateDAO;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;


public class HibernateUtil
{
	private static SessionFactory sf=null;
	
	public static SessionFactory getSessionFactory()
	{
		if(null !=sf)
		{
			return sf;
		}
		AnnotationConfiguration configuration = new AnnotationConfiguration();
		sf = configuration.configure().buildSessionFactory();
		 
		 return sf;
		
	}

}
