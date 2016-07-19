package com.yelp.android.analytics;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.util.i;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class h
{
  public static void a(Context paramContext, g.a parama)
  {
    if (AppData.d()) {}
    for (paramContext = AppData.b().r();; paramContext = LocationService.c(paramContext))
    {
      paramContext = paramContext.c();
      if (paramContext != null)
      {
        double d = i.d(paramContext.getAccuracy());
        TreeMap localTreeMap = new TreeMap();
        localTreeMap.put("lat", String.valueOf(paramContext.getLatitude()));
        localTreeMap.put("long", String.valueOf(paramContext.getLongitude()));
        localTreeMap.put("accuracy", String.valueOf(d));
        parama.a("efs", com.yelp.android.util.a.a(localTreeMap));
      }
      return;
    }
  }
  
  public static void a(IriSource paramIriSource, List<ReviewSuggestion> paramList)
  {
    paramIriSource = paramIriSource.getMapWithParameter();
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = ((ReviewSuggestion)paramList.next()).c();
      if (locala.containsKey(str)) {
        locala.put(str, Integer.valueOf(((Integer)locala.get(str)).intValue() + 1));
      } else {
        locala.put(str, Integer.valueOf(1));
      }
    }
    paramIriSource.put("suggestion_type_counts", locala);
    AppData.a(ViewIri.ReviewSuggestionsViewed, paramIriSource);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */