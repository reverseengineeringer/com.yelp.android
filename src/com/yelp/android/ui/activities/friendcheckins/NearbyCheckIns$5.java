package com.yelp.android.ui.activities.friendcheckins;

import android.location.Location;
import android.util.Log;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cb;
import com.yelp.android.appdata.webrequests.cb.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.LeaderboardType;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.util.ErrorType;

class NearbyCheckIns$5
  extends k.b<cb.a>
{
  NearbyCheckIns$5(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void a(Location paramLocation)
  {
    Log.d("NearbyFriendsActivity", "Got location, beginning API request");
    a.enableLoading(NearbyCheckIns.e(a));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cb.a parama)
  {
    paramApiRequest = (cb)paramApiRequest;
    NearbyCheckIns.a(a, System.currentTimeMillis());
    a.disableLoading();
    TextView localTextView = (TextView)a.findViewById(2131689773);
    localTextView.setVisibility(8);
    if (paramApiRequest.A() == 0)
    {
      parama = new aj();
      parama.a(2131689969, "", NearbyCheckIns.b(a));
      NearbyCheckIns.c(a).setAdapter(parama);
      localTextView.setVisibility(0);
      localTextView.setText(2131165405);
    }
    for (;;)
    {
      a.a(paramApiRequest.x(), paramApiRequest.y(), paramApiRequest.z());
      if (paramApiRequest.z() > 0) {
        NearbyCheckIns.a(a, ActivityLeaderboard.LeaderboardType.FRIENDS);
      }
      NearbyCheckIns.a(a, paramApiRequest.B());
      a.a(NearbyCheckIns.d(a));
      return;
      ((a)a.d.a(a.a[0]).a).a(parama.a());
      ((a)a.d.a(a.a[1]).a).a(parama.b());
      ((a)a.d.a(a.a[2]).a).a(parama.c());
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    Log.d("NearbyFriendsActivity", "API error: " + paramYelpException.getMessage(a));
    a.populateError(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */