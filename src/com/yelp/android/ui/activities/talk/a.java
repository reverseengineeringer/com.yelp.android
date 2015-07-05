package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import com.yelp.android.appdata.aa;
import com.yelp.android.appdata.webrequests.eq;
import java.io.IOException;
import java.util.List;

class a
  implements aa
{
  a(ActivityTalk paramActivityTalk) {}
  
  public void a(Location paramLocation, boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (;;)
    {
      return;
      Geocoder localGeocoder = new Geocoder(ActivityTalk.a(a), aa).getResources().getConfiguration().locale);
      try
      {
        paramLocation = localGeocoder.getFromLocation(paramLocation.getLatitude(), paramLocation.getLongitude(), 1);
        if ((paramLocation != null) && (paramLocation.size() > 0))
        {
          paramLocation = (Address)paramLocation.get(0);
          if (ActivityTalk.b(a) != null)
          {
            ActivityTalk.b(a).cancel(true);
            ActivityTalk.b(a).setCallback(null);
          }
          ActivityTalk.a(a, new eq(paramLocation.getLatitude(), paramLocation.getLongitude(), ActivityTalk.c(a)));
          ActivityTalk.b(a).execute(new Void[0]);
          return;
        }
      }
      catch (IOException paramLocation) {}
    }
  }
  
  public boolean a()
  {
    a.onProvidersRequired(a, false, 0);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */