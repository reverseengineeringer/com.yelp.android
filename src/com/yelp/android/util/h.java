package com.yelp.android.util;

import java.lang.reflect.Field;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;

public class h
{
  private static SimpleDateFormat a = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss:SSS z", Locale.US);
  
  public static String a()
  {
    localStringBuilder = new StringBuilder();
    try
    {
      Object localObject1 = InetAddress.class.getDeclaredField("addressCache");
      ((Field)localObject1).setAccessible(true);
      localObject1 = ((Field)localObject1).get(null);
      Object localObject2 = localObject1.getClass().getDeclaredField("cache");
      ((Field)localObject2).setAccessible(true);
      localObject1 = ((Field)localObject2).get(localObject1);
      localObject2 = localObject1.getClass().getDeclaredField("map");
      ((Field)localObject2).setAccessible(true);
      localObject1 = ((LinkedHashMap)((Field)localObject2).get(localObject1)).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject3 = (Map.Entry)((Iterator)localObject1).next();
        localObject2 = ((Map.Entry)localObject3).getValue();
        localObject3 = ((Map.Entry)localObject3).getKey();
        Object localObject4 = localObject3.getClass().getDeclaredField("mHostname");
        ((Field)localObject4).setAccessible(true);
        localStringBuilder.append((String)((Field)localObject4).get(localObject3)).append(" ");
        localObject3 = localObject2.getClass();
        localObject4 = ((Class)localObject3).getDeclaredField("expiryNanos");
        ((Field)localObject4).setAccessible(true);
        long l2 = ((Long)((Field)localObject4).get(localObject2)).longValue();
        long l1 = System.currentTimeMillis();
        l2 = (l2 - System.nanoTime()) / 1000000L;
        localStringBuilder.append(a.format(new Date(l2 + Long.valueOf(l1).longValue()))).append(" ");
        localObject3 = ((Class)localObject3).getDeclaredField("value");
        ((Field)localObject3).setAccessible(true);
        try
        {
          localObject4 = (InetAddress[])((Field)localObject3).get(localObject2);
          ArrayList localArrayList = new ArrayList(localObject4.length);
          int j = localObject4.length;
          int i = 0;
          while (i < j)
          {
            localArrayList.add(localObject4[i].getHostAddress());
            i += 1;
          }
          localStringBuilder.append(localArrayList).append("\n");
        }
        catch (ClassCastException localClassCastException)
        {
          localObject2 = ((Field)localObject3).get(localObject2);
          localStringBuilder.append("\n").append(localClassCastException.getMessage()).append(", printing raw cache entry: ").append(localObject2).append("\n");
        }
      }
      return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      localStringBuilder.append(localException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */