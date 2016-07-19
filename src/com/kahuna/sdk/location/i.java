package com.kahuna.sdk.location;

import android.content.Context;
import android.util.Log;
import com.kahuna.sdk.l;
import com.kahuna.sdk.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class i
{
  private static final i a = new i();
  private f b;
  private e c;
  private boolean d = false;
  private Map<String, Long> e;
  private Object f = new Object();
  private Context g;
  
  public static void a(Context paramContext)
  {
    ag = paramContext;
  }
  
  public static void a(l paraml)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot init the Region Manager externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      Object localObject3;
      for (;;)
      {
        return;
        try
        {
          ad = b(ag);
          if (ad)
          {
            ab = new f(ag);
            ac = new e(ag);
            synchronized (af)
            {
              ae = s.a(paraml, ag);
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
            if (!l.u()) {}
          }
        }
        catch (Throwable paraml)
        {
          ad = false;
        }
      }
      Log.d("Kahuna", "Caught error in Region Manager init: " + paraml);
      paraml.printStackTrace();
      return;
      Object localObject2 = ((Set)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        ae.remove(localObject3);
      }
      s.a(paraml, ae, ag);
      localObject2 = s.b(paraml, ag);
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
    a(paraml, (List)???, ag);
  }
  
  public static void a(l paraml, String paramString)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot set last entered region externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      return;
      s.a(paraml, ag, paramString);
    } while (!l.u());
    Log.d("Kahuna", "Saving last entered regionId: " + paramString);
  }
  
  public static void a(l paraml, List<d> paramList, Context paramContext)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot request to add geofences to the Region Manager externally from the Kahuna SDK. Aborting!");
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
          if (!l.u()) {}
        }
        catch (Exception paraml) {}
      }
      Log.d("Kahuna", "Caught exception in Region Manager add geofences: " + paraml);
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
      s.a(paraml, ae, paramContext);
      s.a(paraml, paramList, paramContext);
      return;
    } while (!l.u());
    Log.d("Kahuna", "Attempted to register geofences but device is not properly setup.");
  }
  
  public static void a(l paraml, JSONObject paramJSONObject, Context paramContext)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot request to process regions externally from the Kahuna SDK. Aborting!");
    }
    label275:
    do
    {
      ArrayList localArrayList;
      for (;;)
      {
        return;
        try
        {
          if (!ad) {
            break label275;
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
                  if (l.u())
                  {
                    Log.d("Kahuna", "Encountered error processing geofence regions from Kahuna servers.");
                    localException.printStackTrace();
                  }
                }
              }
              i += 1;
            }
            if (!l.u()) {}
          }
        }
        catch (Exception paraml) {}
      }
      Log.d("Kahuna", "Caught exception in Region Manager process server regions: " + paraml);
      return;
      d(paraml);
      a(paraml, localArrayList, paramContext);
      return;
    } while (!l.u());
    Log.d("Kahuna", "Server responded with available geofence regions but device is not setup properly.");
  }
  
  public static boolean a()
  {
    return ad;
  }
  
  public static Set<String> b(l arg0)
  {
    if ((??? == null) || (!(??? instanceof l)))
    {
      Log.e("Kahuna", "You cannot request to obtain Kahuna monitoring specs externally from the Kahuna SDK. Aborting!");
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
  
  private static boolean b(Context paramContext)
  {
    try
    {
      boolean bool2 = h.a(paramContext);
      boolean bool1 = bool2;
      if (bool2) {
        bool1 = h.a(paramContext, "android.permission.ACCESS_FINE_LOCATION");
      }
      return bool1;
    }
    catch (Throwable paramContext)
    {
      if (l.u())
      {
        Log.w("Kahuna", "Caught error when checking for play services. If you are NOT using Geofencing please ignore this error: ");
        Log.w("Kahuna", paramContext);
      }
    }
    return false;
  }
  
  public static String c(l paraml)
  {
    if ((paraml == null) || (!(paraml instanceof l)))
    {
      Log.e("Kahuna", "You cannot get last entered region externally from the Kahuna SDK. Aborting!");
      return null;
    }
    return s.c(paraml, ag);
  }
  
  public static void d(l paraml)
  {
    if ((paraml == null) || (!(paraml instanceof l))) {
      Log.e("Kahuna", "You cannot clear entered region externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      return;
      s.a(paraml, ag, null);
    } while (!l.u());
    Log.d("Kahuna", "Cleared last entered regionId");
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */