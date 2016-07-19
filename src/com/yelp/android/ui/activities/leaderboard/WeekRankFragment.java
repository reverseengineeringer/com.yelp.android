package com.yelp.android.ui.activities.leaderboard;

import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.util.ErrorType;

public class WeekRankFragment
  extends RankFragment
{
  protected CheckInRankingsRequest.SearchMode D_()
  {
    return CheckInRankingsRequest.SearchMode.WEEK;
  }
  
  protected CheckinRankAdapter.RankMode c()
  {
    return CheckinRankAdapter.RankMode.WEEK;
  }
  
  protected ErrorType f()
  {
    return ErrorType.NO_NEARBY_CHECKINS;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.WeekRankFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */