package com.yelp.android.ui.activities.leaderboard;

import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.util.ErrorType;

public class WeekRankFragment
  extends RankFragment
{
  protected CheckinRankAdapter.RankMode c()
  {
    return CheckinRankAdapter.RankMode.WEEK;
  }
  
  protected CheckInRankingsRequest.SearchMode d()
  {
    return CheckInRankingsRequest.SearchMode.WEEK;
  }
  
  protected ErrorType e()
  {
    return ErrorType.NO_NEARBY_CHECKINS;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.WeekRankFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */