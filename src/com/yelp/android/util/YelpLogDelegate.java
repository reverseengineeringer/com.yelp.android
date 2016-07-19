package com.yelp.android.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bugsnag.android.Bugsnag;
import com.bugsnag.android.MetaData;
import com.bugsnag.android.Severity;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.au.a;

public class YelpLogDelegate
  implements YelpLog.a
{
  public void remoteBreadcrumb(String paramString)
  {
    ec.a(paramString);
    Bugsnag.leaveBreadcrumb(paramString);
  }
  
  public void remoteError(Object paramObject, String paramString, Throwable paramThrowable)
  {
    if (!TextUtils.isEmpty(paramString)) {
      a.a(paramString);
    }
    a.a(paramThrowable);
    if (TextUtils.isEmpty(paramString)) {
      Bugsnag.notify(paramThrowable, Severity.INFO);
    }
    for (;;)
    {
      if (AppData.b().k() != null) {
        AppData.b().k().a(com.yelp.android.analytics.e.a(paramThrowable));
      }
      return;
      paramObject = new MetaData();
      ((MetaData)paramObject).addToTab("User", "Message", paramString);
      Bugsnag.notify(paramThrowable, Severity.INFO, (MetaData)paramObject);
    }
  }
  
  public void showDebugToast(String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new YelpLogDelegate.1(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.YelpLogDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */