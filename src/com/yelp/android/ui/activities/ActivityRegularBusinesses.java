package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.SimpleAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ef;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.List;

public class ActivityRegularBusinesses
  extends ActivityCheckInsList
{
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityRegularBusinesses.class);
    paramContext.putExtra("user", paramUser);
    return paramContext;
  }
  
  protected ApiRequest<?, ?, List<YelpCheckIn>> b_()
  {
    if (AppData.b().m().a(g())) {}
    for (String str = null;; str = g().getId()) {
      return new ef(this, str, b.getCount());
    }
  }
  
  protected int f()
  {
    return g().getRegularCount();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserRankingsBusinesses;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (AppData.b().m().a(g())) {}
    for (paramBundle = null; paramBundle != null; paramBundle = g().getId())
    {
      setTitle(getString(2131166157, new Object[] { g().getFirstName() }));
      return;
    }
    setTitle(2131165937);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRegularBusinesses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */