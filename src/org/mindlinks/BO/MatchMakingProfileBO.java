package org.mindlinks.BO;

import org.mindlinks.BS.MatchMakingProfileBS;
import org.mindlinks.Bean.MatchingProfiles;

public class MatchMakingProfileBO
{
	public void saveMatchMakingProfile(MatchingProfiles mprofile)
	{
		MatchMakingProfileBS matchmakingbs=new MatchMakingProfileBS();
		matchmakingbs.saveMatchMakingProfile(mprofile);
		
		
	}

}
