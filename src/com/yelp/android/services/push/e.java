package com.yelp.android.services.push;

import android.os.AsyncTask;
import android.os.Handler;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import java.io.IOException;

class e
  extends AsyncTask<Void, Void, Boolean>
{
  e(d paramd) {}
  
  protected Boolean a(Void... paramVarArgs)
  {
    boolean bool = false;
    try
    {
      paramVarArgs = GoogleCloudMessaging.getInstance(AppData.b()).register(new String[] { d.a });
      YelpLog.i("GcmManager", paramVarArgs);
      a.a(paramVarArgs);
      return Boolean.valueOf(bool);
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        YelpLog.error("GcmManager", "Unable to register GCM, error: " + paramVarArgs.getMessage());
        if ("SERVICE_NOT_AVAILABLE".equals(paramVarArgs.getMessage()))
        {
          com.crashlytics.android.d.a(new IllegalStateException(AppData.b().getString(2131165894)));
          bool = true;
        }
      }
    }
  }
  
  protected void a(Boolean paramBoolean)
  {
    d.a(a, false);
    if ((paramBoolean.booleanValue()) && (d.a(a) < 5))
    {
      d.c(a).removeCallbacks(d.b(a));
      d.c(a).postDelayed(d.b(a), d.d(a));
      d.a(a, 2L);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */