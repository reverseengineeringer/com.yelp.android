package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.SimpleAdapter;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.di;
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
  
  protected ApiRequest<Void, ?, List<YelpCheckIn>> d()
  {
    if (AppData.b().q().a(f())) {}
    for (String str = null;; str = f().ae()) {
      return new di(this, str, b.getCount());
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserRankingsBusinesses;
  }
  
  protected int o_()
  {
    return f().x();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (AppData.b().q().a(f())) {}
    for (paramBundle = null; paramBundle != null; paramBundle = f().ae())
    {
      setTitle(getString(2131166207, new Object[] { f().Z() }));
      return;
    }
    setTitle(2131166004);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRegularBusinesses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */