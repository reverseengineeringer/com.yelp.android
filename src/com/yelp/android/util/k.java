package com.yelp.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Locale;

public class k
{
  public static Intent a(Context paramContext, Class<? extends Activity> paramClass)
  {
    paramContext = new Intent(paramContext, paramClass);
    paramContext.setAction("android.intent.action.VIEW");
    return paramContext;
  }
  
  private static Intent a(Context paramContext, String paramString, double paramDouble1, double paramDouble2)
  {
    if (AppData.b().g().a(paramContext)) {}
    for (paramContext = "ptk";; paramContext = "ptm")
    {
      paramContext = String.format(Locale.US, "http://maps.google.com/maps?f=d&daddr=%s+@%f,%f&doflg=%s&navigate=yes", new Object[] { paramString, Double.valueOf(paramDouble1), Double.valueOf(paramDouble2), paramContext });
      paramString = new Intent("android.intent.action.VIEW");
      paramString.setData(Uri.parse(paramContext));
      return paramString;
    }
  }
  
  public static Intent a(Uri paramUri)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.DIAL");
    localIntent.setData(paramUri);
    return localIntent;
  }
  
  public static Intent a(String paramString)
  {
    return a(Uri.parse("tel:" + paramString));
  }
  
  public static void a(Context paramContext, Event paramEvent)
  {
    AppData.a(EventIri.OpenMapsApp, "address", paramEvent.A());
    paramContext.startActivity(a(paramContext, paramEvent.A(), paramEvent.o(), paramEvent.n()));
  }
  
  public static void a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    AppData.a(EventIri.OpenMapsApp, "biz_id", paramYelpBusiness.aD());
    paramContext.startActivity(a(paramContext, paramYelpBusiness.j(), paramYelpBusiness.R(), paramYelpBusiness.Q()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */