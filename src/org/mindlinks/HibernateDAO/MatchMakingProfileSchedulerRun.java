package org.mindlinks.HibernateDAO;



import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SimpleScheduleBuilder;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;

public class MatchMakingProfileSchedulerRun
{
	public static void main(String[] args) throws SchedulerException
	{
		JobDetail job = (JobDetail) JobBuilder.newJob(MatchMakingProfileSendEmail.class).withIdentity("MatchMakingProfileSendEmail").build();
		Trigger trigger = TriggerBuilder.newTrigger().withSchedule(
				SimpleScheduleBuilder.simpleSchedule()).build();
		
		
		Scheduler scheduler = new StdSchedulerFactory().getScheduler();
		scheduler.start();
		scheduler.scheduleJob(job, trigger);
	}

}
