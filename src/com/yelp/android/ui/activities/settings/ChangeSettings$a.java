package com.yelp.android.ui.activities.settings;

import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.AsyncTask;
import android.util.Log;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.dr;
import com.yelp.android.ui.activities.support.b;
import java.io.IOException;
import java.util.List;

class ChangeSettings$a
  extends AsyncTask<String, Void, Boolean>
{
  private final Geocoder b;
  private final String c;
  
  public ChangeSettings$a(ChangeSettings paramChangeSettings, Geocoder paramGeocoder, String paramString)
  {
    b = paramGeocoder;
    c = paramString;
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
          ChangeSettings.b(a).a(true);
          ChangeSettings.b(a).a(null);
        }
        ChangeSettings.a(a, new dr(paramVarArgs.getLatitude(), paramVarArgs.getLongitude(), ChangeSettings.a(a, c)));
        ChangeSettings.b(a).f(new Void[0]);
        return Boolean.valueOf(true);
        Location localLocation = AppData.b().r().c();
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
      a.c();
      a.getHelper().f();
      ChangeSettings.c(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */