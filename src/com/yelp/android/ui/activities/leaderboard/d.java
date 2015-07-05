package com.yelp.android.ui.activities.leaderboard;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cp;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class d
  extends j<ArrayList<Ranking>>
{
  d(RankFragment paramRankFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
  {
    paramApiRequest = AppData.b().m().b();
    a.j();
    RankFragment.b(a).a(paramArrayList);
    a.a(true);
    if (RankFragment.b(a).isEmpty())
    {
      a.a(a.e());
      return;
    }
    int i = CheckinRankAdapter.a(paramArrayList, paramApiRequest);
    if (a.getView() != null)
    {
      cp.a(a.m(), i, true);
      RankFragment.a(a, -1);
      return;
    }
    RankFragment.a(a, i);
  }
  
  public boolean a()
  {
    ((YelpActivity)a.getActivity()).onProvidersRequired(RankFragment.a(a), true, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */