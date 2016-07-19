package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import com.kahuna.sdk.p;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.cb.a;
import com.yelp.android.serializable.InAppNotification;
import com.yelp.android.services.push.c;

class YelpActivity$3
  implements p
{
  YelpActivity$3(YelpActivity paramYelpActivity) {}
  
  public void a(String paramString, Bundle paramBundle)
  {
    paramBundle.putString("cohort", paramString);
    paramString = new InAppNotification(paramBundle);
    if (paramString.b() <= 1.1D)
    {
      c.a().b(paramString, null);
      AppData.a(EventIri.InAppNotificationDelivered, paramString.a());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */