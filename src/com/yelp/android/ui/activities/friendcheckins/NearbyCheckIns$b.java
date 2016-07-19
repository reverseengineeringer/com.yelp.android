package com.yelp.android.ui.activities.friendcheckins;

import android.location.Location;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class NearbyCheckIns$b
  extends k.b<ArrayList<Ranking>>
{
  private final CheckinRankAdapter b;
  
  public NearbyCheckIns$b(NearbyCheckIns paramNearbyCheckIns, CheckinRankAdapter paramCheckinRankAdapter)
  {
    b = paramCheckinRankAdapter;
  }
  
  public void a(Location paramLocation)
  {
    super.a(paramLocation);
    a.enableLoading(NearbyCheckIns.f(a));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Ranking> paramArrayList)
  {
    b.a(paramArrayList);
    a.disableLoading();
  }
  
  public boolean a()
  {
    a.onProvidersRequired(a, false, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    a.populateError(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */