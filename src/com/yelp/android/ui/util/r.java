package com.yelp.android.ui.util;

import android.os.AsyncTask;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;

final class r
  extends AsyncTask<Void, Void, String>
{
  protected String a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = AdvertisingIdClient.getAdvertisingIdInfo(AppData.b().getApplicationContext());
      if (!paramVarArgs.isLimitAdTrackingEnabled())
      {
        paramVarArgs = f.b(paramVarArgs.getId());
        return paramVarArgs;
      }
    }
    catch (Exception paramVarArgs)
    {
      YelpLog.error("DFPAdsRequest", "Failed to get Advertising ID", paramVarArgs);
    }
    return null;
  }
  
  protected void a(String paramString)
  {
    q.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */