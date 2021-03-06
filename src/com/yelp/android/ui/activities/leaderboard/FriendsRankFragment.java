package com.yelp.android.ui.activities.leaderboard;

import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.util.ErrorType;

public class FriendsRankFragment
  extends RankFragment
{
  protected CheckInRankingsRequest.SearchMode D_()
  {
    return CheckInRankingsRequest.SearchMode.FRIENDS;
  }
  
  protected CheckinRankAdapter.RankMode c()
  {
    return CheckinRankAdapter.RankMode.FRIENDS;
  }
  
  protected ErrorType f()
  {
    return ErrorType.NO_FRIEND_CHECKINS;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.FriendsRankFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */