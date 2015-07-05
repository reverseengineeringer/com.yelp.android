package com.kahuna.sdk.location;

import android.content.Context;
import android.util.Log;
import com.kahuna.sdk.ag;
import com.kahuna.sdk.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class m
{
  private static final m a = new m();
  private f b;
  private e c;
  private boolean d = false;
  private Map<String, Long> e;
  private Object f = new Object();
  private Context g;
  
  public static Set<String> a(h arg0)
  {
    if ((??? == null) || (!(??? instanceof h)))
    {
      Log.e("KahunaEngine", "You cannot request to obtain Kahuna monitoring specs externally from the Kahuna SDK. Aborting!");
      return new HashSet();
    }
    HashSet localHashSet = new HashSet();
    synchronized (af)
    {
      if (ae != null)
      {
        Iterator localIterator = ae.keySet().iterator();
        if (localIterator.hasNext()) {
          localHashSet.add(((String)localIterator.next()).replace("KahunaEngineRegion_", ""));
        }
      }
    }
    return localSet;
  }
  
  public static void a(h paramh, Context paramContext)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot init the Region Manager externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      Object localObject3;
      for (;;)
      {
        return;
        try
        {
          ag = paramContext;
          ad = a(paramContext);
          if (ad)
          {
            ab = new f(paramContext);
            ac = new e(paramContext);
            synchronized (af)
            {
              ae = ag.a(paramh, paramContext);
              long l = System.currentTimeMillis();
              localObject2 = new HashSet();
              localObject3 = ae.keySet().iterator();
              String str;
              do
              {
                if (!((Iterator)localObject3).hasNext()) {
                  break;
                }
                str = (String)((Iterator)localObject3).next();
              } while (l <= ((Long)ae.get(str)).longValue());
              ((Set)localObject2).add(str);
            }
            if (!h.p()) {}
          }
        }
        catch (Throwable paramh)
        {
          ad = false;
        }
      }
      Log.d("KahunaEngine", "Caught error in Region Manager init: " + paramh);
      paramh.printStackTrace();
      return;
      Object localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        ae.remove(localObject3);
      }
      ag.a(paramh, ae, paramContext);
      localObject2 = ag.b(paramh, paramContext);
      ??? = new ArrayList();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (d)((Iterator)localObject2).next();
        if (ae.containsKey(((d)localObject3).a())) {
          ((List)???).add(localObject3);
        }
      }
    } while (((List)???).size() <= 0);
    a(paramh, (List)???, paramContext);
  }
  
  public static void a(h paramh, String paramString)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot set last entered region externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      return;
      ag.a(paramh, ag, paramString);
    } while (!h.p());
    Log.d("KahunaEngine", "Saving last entered regionId: " + paramString);
  }
  
  public static void a(h paramh, List<d> paramList, Context paramContext)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot request to add geofences to the Region Manager externally from the Kahuna SDK. Aborting!");
    }
    label200:
    label352:
    do
    {
      d locald;
      for (;;)
      {
        return;
        try
        {
          if (!ad) {
            break label352;
          }
          synchronized (af)
          {
            localObject2 = new ArrayList();
            localObject1 = localObject2;
            if (ae == null) {
              break label200;
            }
            localObject1 = localObject2;
            if (ae.size() <= 0) {
              break label200;
            }
            localObject1 = new ArrayList(ae.keySet());
            localObject2 = paramList.iterator();
            do
            {
              if (!((Iterator)localObject2).hasNext()) {
                break;
              }
              locald = (d)((Iterator)localObject2).next();
            } while (!((List)localObject1).contains(locald.a()));
            ((List)localObject1).remove(locald.a());
          }
          if (!h.p()) {}
        }
        catch (Exception paramh) {}
      }
      Log.d("KahunaEngine", "Caught exception in Region Manager add geofences: " + paramh);
      return;
      if (((List)localObject1).size() > 0) {
        ac.a((List)localObject1);
      }
      Object localObject1 = new ArrayList();
      Object localObject2 = new HashMap();
      if (paramList != null)
      {
        int i = 0;
        while (i < paramList.size())
        {
          locald = (d)paramList.get(i);
          ((List)localObject1).add(locald.f());
          ((Map)localObject2).put(locald.a(), Long.valueOf(System.currentTimeMillis() + locald.e()));
          i += 1;
        }
      }
      ab.a((List)localObject1);
      ae = ((Map)localObject2);
      ag.a(paramh, ae, paramContext);
      ag.a(paramh, paramList, paramContext);
      return;
    } while (!h.p());
    Log.d("KahunaEngine", "Attempted to register geofences but device is not properly setup.");
  }
  
  public static void a(h paramh, JSONObject paramJSONObject, Context paramContext)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot request to process regions externally from the Kahuna SDK. Aborting!");
    }
    label277:
    do
    {
      ArrayList localArrayList;
      for (;;)
      {
        return;
        try
        {
          if (!ad) {
            break label277;
          }
          paramJSONObject = paramJSONObject.optJSONArray("circle");
          if (paramJSONObject != null)
          {
            int j = paramJSONObject.length();
            localArrayList = new ArrayList();
            int i = 0;
            while (i < j)
            {
              try
              {
                JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
                if (localJSONObject != null)
                {
                  String str = localJSONObject.getString("id");
                  double d1 = localJSONObject.getDouble("lat");
                  double d2 = localJSONObject.getDouble("long");
                  int k = localJSONObject.getInt("radius");
                  long l3 = localJSONObject.optLong("expiry");
                  long l2 = 0L;
                  long l1 = l2;
                  if (l3 > 0L)
                  {
                    l3 -= System.currentTimeMillis() / 1000L;
                    l1 = l2;
                    if (l3 > 0L) {
                      l1 = l3 * 1000L;
                    }
                  }
                  localArrayList.add(new d(str, d1, d2, k, l1, 3));
                }
              }
              catch (Exception localException)
              {
                for (;;)
                {
                  if (h.p())
                  {
                    Log.d("KahunaEngine", "Encountered error processing geofence regions from Kahuna servers.");
                    localException.printStackTrace();
                  }
                }
              }
              i += 1;
            }
            if (!h.p()) {}
          }
        }
        catch (Exception paramh) {}
      }
      Log.d("KahunaEngine", "Caught exception in Region Manager process server regions: " + paramh);
      return;
      c(paramh);
      a(paramh, localArrayList, paramContext);
      return;
    } while (!h.p());
    Log.d("KahunaEngine", "Server responded with available geofence regions but device is not setup properly.");
  }
  
  public static boolean a()
  {
    return ad;
  }
  
  private static boolean a(Context paramContext)
  {
    try
    {
      boolean bool2 = l.a(paramContext);
      boolean bool1 = bool2;
      if (bool2) {
        bool1 = l.a(paramContext, "android.permission.ACCESS_FINE_LOCATION");
      }
      return bool1;
    }
    catch (Throwable paramContext)
    {
      if (h.p())
      {
        Log.w("KahunaEngine", "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: ");
        Log.w("KahunaEngine", paramContext);
      }
    }
    return false;
  }
  
  public static String b(h paramh)
  {
    if ((paramh == null) || (!(paramh instanceof h)))
    {
      Log.e("KahunaEngine", "You cannot get last entered region externally from the Kahuna SDK. Aborting!");
      return null;
    }
    return ag.c(paramh, ag);
  }
  
  public static void c(h paramh)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot clear entered region externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      return;
      ag.a(paramh, ag, null);
    } while (!h.p());
    Log.d("KahunaEngine", "Cleared last entered regionId");
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */