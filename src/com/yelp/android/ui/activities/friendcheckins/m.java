package com.yelp.android.ui.activities.friendcheckins;

import android.location.Location;
import android.util.Log;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cj;
import com.yelp.android.appdata.webrequests.ck;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.LeaderboardType;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.util.ErrorType;

class m
  extends j<ck>
{
  m(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void a(Location paramLocation)
  {
    Log.d("NearbyFriendsActivity", "Got location, beginning API request");
    a.enableLoading(NearbyCheckIns.e(a));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ck paramck)
  {
    paramApiRequest = (cj)paramApiRequest;
    NearbyCheckIns.a(a, System.currentTimeMillis());
    a.disableLoading();
    TextView localTextView = (TextView)a.findViewById(2131493089);
    localTextView.setVisibility(8);
    if (paramApiRequest.d() == 0)
    {
      paramck = new bs();
      paramck.a(2131493313, "", NearbyCheckIns.b(a));
      NearbyCheckIns.c(a).setAdapter(paramck);
      localTextView.setVisibility(0);
      localTextView.setText(2131165269);
    }
    for (;;)
    {
      a.a(paramApiRequest.a(), paramApiRequest.b(), paramApiRequest.c());
      if (paramApiRequest.c() > 0) {
        NearbyCheckIns.a(a, ActivityLeaderboard.LeaderboardType.FRIENDS);
      }
      NearbyCheckIns.a(a, paramApiRequest.e());
      a.a(NearbyCheckIns.d(a));
      return;
      ((a)a.d.a(a.a[0]).a).a(paramck.a());
      ((a)a.d.a(a.a[1]).a).a(paramck.b());
      ((a)a.d.a(a.a[2]).a).a(paramck.c());
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
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */