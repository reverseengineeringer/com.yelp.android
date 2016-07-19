package com.yelp.android.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.kahuna.sdk.EmptyCredentialsException;
import com.kahuna.sdk.h;
import com.kahuna.sdk.j;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.be;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.services.push.KahunaPushNotificationReceiver;
import com.yelp.android.services.push.b;
import com.yelp.android.util.YelpLog;
import java.util.Collections;
import java.util.Locale;

public class i
{
  private static final String b = String.valueOf(new char[] { 52, 101, 56, 57, 55, 48, 54, 51, 102, 49, 102, 57, 52, 50, 52, 52, 57, 53, 53, 49, 54, 97, 97, 48, 48, 54, 102, 56, 57, 97, 98, 50 });
  private static final String c = String.valueOf(new char[] { 54, 53, 50, 49, 97, 50, 57, 99, 53, 49, 99, 99, 52, 54, 48, 48, 57, 55, 57, 97, 100, 98, 56, 50, 53, 48, 53, 55, 50, 57, 55, 54 });
  public c.a a = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      i.b(i.this).edit().putBoolean("migration_complete", true).commit();
      i.c(i.this).e();
      a(KahunaAttributeIri.KahunaEnabled, "true");
      i.a(i.this).a();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      i.a(i.this).a();
    }
  };
  private SharedPreferences d;
  private h e;
  private a f;
  
  public i(Context paramContext, f paramf, co paramco)
  {
    this(j.i(), paramContext, AppData.c(paramContext), PreferenceManager.getDefaultSharedPreferences(paramContext), paramf, paramco, AppData.b().g().h().getCountry());
  }
  
  public i(h paramh, Context paramContext, String paramString1, SharedPreferences paramSharedPreferences, f paramf, co paramco, String paramString2)
  {
    d = paramSharedPreferences;
    e = paramh;
    if (paramString1.toLowerCase(Locale.US).contains("beta")) {
      paramh.a(paramContext, c, b.a);
    }
    for (;;)
    {
      paramh.h();
      paramh.a(KahunaPushNotificationReceiver.class);
      paramString1 = paramh.c();
      paramString1.a("username", paramf.b());
      try
      {
        paramh.a(paramString1);
        a(KahunaAttributeIri.FirstName, paramco.l());
        a(KahunaAttributeIri.Location, paramco.k());
        a(KahunaAttributeIri.KahunaEnabled, String.valueOf(paramh.f()));
        a(KahunaAttributeIri.Country, paramString2);
        return;
        paramh.a(paramContext, b, b.a);
      }
      catch (EmptyCredentialsException paramString1)
      {
        for (;;)
        {
          YelpLog.remoteError(paramContext, paramString1);
        }
      }
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      e.a(Collections.singletonMap(paramString1, paramString2));
    }
  }
  
  public void a(a parama)
  {
    a(new be(null), parama, a);
  }
  
  public void a(KahunaAttributeIri paramKahunaAttributeIri, String paramString)
  {
    a(paramKahunaAttributeIri.getAttribute(), paramString);
  }
  
  public void a(KahunaEventIri paramKahunaEventIri)
  {
    e.a(paramKahunaEventIri.getEventName());
  }
  
  public void a(be parambe, a parama, c.a parama1)
  {
    f = parama;
    if ((!d.getBoolean("migration_complete", false)) && (!e.f()))
    {
      parambe.a(parama1);
      parambe.f(new Void[0]);
      return;
    }
    parama.a();
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */