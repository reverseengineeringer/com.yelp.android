package com.yelp.android.ui.activities.settings;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.eq;
import com.yelp.android.ui.activities.support.h;
import java.io.IOException;
import java.util.List;

class p
  extends AsyncTask<String, Void, Boolean>
{
  private final Geocoder b;
  
  public p(ChangeSettings paramChangeSettings, Geocoder paramGeocoder)
  {
    b = paramGeocoder;
  }
  
  protected Boolean a(String... paramVarArgs)
  {
    Object localObject = null;
    if (paramVarArgs != null) {}
    try
    {
      if ((paramVarArgs.length != 0) && (paramVarArgs[0] != null)) {
        paramVarArgs = b.getFromLocationName(paramVarArgs[0], 1);
      }
      while ((paramVarArgs != null) && (paramVarArgs.size() > 0))
      {
        paramVarArgs = (Address)paramVarArgs.get(0);
        if (ChangeSettings.b(a) != null)
        {
          ChangeSettings.b(a).cancel(true);
          ChangeSettings.b(a).setCallback(null);
        }
        ChangeSettings.a(a, new eq(paramVarArgs.getLatitude(), paramVarArgs.getLongitude(), a.b));
        ChangeSettings.b(a).execute(new Void[0]);
        return Boolean.valueOf(true);
        Location localLocation = AppData.b().n().c();
        paramVarArgs = (String[])localObject;
        if (localLocation != null) {
          paramVarArgs = b.getFromLocation(localLocation.getLatitude(), localLocation.getLongitude(), 1);
        }
      }
      Log.e("ChangeSettings", "Location is null.");
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        Log.e("ChangeSettings", paramVarArgs.getLocalizedMessage(), paramVarArgs);
      }
    }
    return Boolean.valueOf(false);
  }
  
  protected void a(Boolean paramBoolean)
  {
    if (!paramBoolean.booleanValue())
    {
      a.a();
      a.getHelper().f();
      ChangeSettings.c(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */