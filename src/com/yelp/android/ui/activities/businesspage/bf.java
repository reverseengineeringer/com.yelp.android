package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import java.util.ArrayList;

class bf
  implements m<ArrayList<Ranking>>
{
  bf(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
  {
    BusinessPageFragment.a(a, paramArrayList);
    BusinessPageFragment.c(a, true);
    BusinessPageFragment.q(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.r(a).clear();
    BusinessPageFragment.c(a, true);
    BusinessPageFragment.h(a, paramYelpException.getMessage(a.getActivity()));
    BusinessPageFragment.q(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */