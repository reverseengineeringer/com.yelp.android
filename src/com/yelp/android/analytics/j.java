package com.yelp.android.analytics;

import android.text.TextUtils;
import com.kahuna.sdk.h;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.cr;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.services.push.KahunaPushNotificationReceiver;
import com.yelp.android.services.push.d;
import java.util.Collections;
import java.util.Locale;

public class j
{
  private static final String a = String.valueOf(new char[] { 52, 101, 56, 57, 55, 48, 54, 51, 102, 49, 102, 57, 52, 50, 52, 52, 57, 53, 53, 49, 54, 97, 97, 48, 48, 54, 102, 56, 57, 97, 98, 50 });
  private static final String b = String.valueOf(new char[] { 54, 53, 50, 49, 97, 50, 57, 99, 53, 49, 99, 99, 52, 54, 48, 48, 57, 55, 57, 97, 100, 98, 56, 50, 53, 48, 53, 55, 50, 57, 55, 54 });
  
  public static void a()
  {
    AppData localAppData = AppData.b();
    if (AppData.c(localAppData).toLowerCase(Locale.US).contains("beta")) {
      h.a(localAppData, b, d.a);
    }
    for (;;)
    {
      h.m();
      h.a(KahunaPushNotificationReceiver.class);
      h.a("username", localAppData.h().b());
      a(KahunaAttributeIri.FirstName, localAppData.m().q());
      a(KahunaAttributeIri.Location, localAppData.m().p());
      a(KahunaAttributeIri.KahunaEnabled, String.valueOf(h.h()));
      b();
      return;
      h.a(localAppData, a, d.a);
    }
  }
  
  public static void a(KahunaAttributeIri paramKahunaAttributeIri, String paramString)
  {
    b(paramKahunaAttributeIri.getAttribute(), paramString);
  }
  
  public static void a(KahunaEventIri paramKahunaEventIri)
  {
    h.a(paramKahunaEventIri.getEventName());
  }
  
  private static void b()
  {
    new cr(new k()).executeWithLocation(new Void[0]);
  }
  
  private static void b(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      h.a(Collections.singletonMap(paramString1, paramString2));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */