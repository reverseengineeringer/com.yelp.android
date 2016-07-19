package com.yelp.android.appdata;

import android.location.Location;
import java.util.Comparator;
import java.util.HashMap;

final class p$b
  implements Comparator<Location>
{
  private final HashMap<String, Integer> a;
  
  public p$b(HashMap<String, Integer> paramHashMap)
  {
    a = new HashMap(paramHashMap);
  }
  
  private static final float a(HashMap<String, Integer> paramHashMap, String paramString)
  {
    paramHashMap = (Integer)paramHashMap.get(paramString);
    if (paramHashMap != null)
    {
      int i = paramHashMap.intValue();
      if (i == 2) {
        return 1.2F;
      }
      if (i == 1) {
        return 1.5F;
      }
    }
    return 1.0F;
  }
  
  protected static Location a(Location paramLocation1, Location paramLocation2, long paramLong, HashMap<String, Integer> paramHashMap)
  {
    if ((paramLocation1 == null) || (paramLocation2 == null)) {
      if ((paramLocation1 == null) && (paramLocation2 == null)) {
        paramHashMap = null;
      }
    }
    float f1;
    float f2;
    long l;
    label168:
    do
    {
      Location localLocation;
      do
      {
        do
        {
          return paramHashMap;
          paramHashMap = paramLocation1;
        } while (paramLocation1 != null);
        return paramLocation2;
        f1 = 1.0F / a(paramHashMap, paramLocation1.getProvider());
        f2 = 1.0F / a(paramHashMap, paramLocation2.getProvider());
        if (paramLocation1.getTime() > paramLocation2.getTime()) {}
        for (localLocation = paramLocation1;; localLocation = paramLocation2)
        {
          l = paramLong - paramLocation1.getTime();
          paramLong -= paramLocation2.getTime();
          if ((paramLocation1.hasAccuracy()) && (paramLocation2.hasAccuracy())) {
            break label168;
          }
          if ((paramLocation1.hasAccuracy()) || (paramLocation2.hasAccuracy())) {
            break;
          }
          return localLocation;
        }
        if (!paramLocation1.hasAccuracy()) {
          break;
        }
        paramHashMap = paramLocation1;
      } while (l < 2L * paramLong);
      if ((paramLocation2.hasAccuracy()) && (paramLong < 2L * l)) {
        return paramLocation2;
      }
      return localLocation;
      paramHashMap = paramLocation1;
    } while ((float)l * f1 * paramLocation1.getAccuracy() < (float)paramLong * f2 * paramLocation2.getAccuracy());
    return paramLocation2;
  }
  
  public int a(Location paramLocation1, Location paramLocation2)
  {
    if ((paramLocation1 == null) && (paramLocation2 != null)) {}
    Location localLocation;
    do
    {
      return -1;
      if ((paramLocation2 == null) && (paramLocation1 != null)) {
        return 1;
      }
      if ((paramLocation1 == paramLocation2) || (paramLocation1.equals(paramLocation2))) {
        return 0;
      }
      localLocation = a(paramLocation1, paramLocation2, System.currentTimeMillis(), a);
      if (localLocation == paramLocation1) {
        return 1;
      }
    } while (localLocation == paramLocation2);
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */