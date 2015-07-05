package com.yelp.android.analytics;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.util.a;
import com.yelp.android.util.o;
import java.util.TreeMap;

public class i
{
  static final Class[] a = { ViewIri.class, EventIri.class, AutoIri.class };
  
  public static void a(Context paramContext, h paramh)
  {
    if (AppData.d()) {}
    for (paramContext = AppData.b().n();; paramContext = LocationService.c(paramContext))
    {
      paramContext = paramContext.c();
      if (paramContext != null)
      {
        double d = o.d(paramContext.getAccuracy());
        TreeMap localTreeMap = new TreeMap();
        localTreeMap.put("lat", String.valueOf(paramContext.getLatitude()));
        localTreeMap.put("long", String.valueOf(paramContext.getLongitude()));
        localTreeMap.put("accuracy", String.valueOf(d));
        paramh.a("efs", a.a(localTreeMap));
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */