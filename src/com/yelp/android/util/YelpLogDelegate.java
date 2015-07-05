package com.yelp.android.util;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.crashlytics.android.d;
import com.yelp.android.analytics.e;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;

public class YelpLogDelegate
  implements al
{
  public void error(Object paramObject, String paramString, Exception paramException)
  {
    if (!TextUtils.isEmpty(paramString)) {
      d.c(paramString);
    }
    d.a(paramException);
    AppData.b().k().a(e.a(paramException));
  }
  
  public void showDebugToast(String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new am(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.YelpLogDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */