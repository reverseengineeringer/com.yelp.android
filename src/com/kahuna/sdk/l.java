package com.kahuna.sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import com.kahuna.sdk.location.KahunaIBeaconManager;
import com.kahuna.sdk.location.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class l
  implements h
{
  private static p L;
  private static boolean M = false;
  private static boolean N = false;
  private static int O = -1;
  private static int P = -1;
  private static boolean Q = false;
  private static boolean R = false;
  private static boolean S = false;
  private static ExecutorService V = Executors.newSingleThreadExecutor();
  private static boolean W = false;
  private static boolean X = false;
  protected static boolean a = false;
  protected static int b;
  protected static String c;
  private static boolean e = false;
  private static Object f = new Object();
  private static l g = null;
  private Object A = new Object();
  private List<Event> B;
  private List<Event> C;
  private Object D = new Object();
  private boolean E;
  private Object F = new Object();
  private a G;
  private int[][] H = { { 5000, 10000 }, { 10000, 20000 }, { 20000, 40000 }, { 40000, 80000 } };
  private int I = 0;
  private AtomicInteger J;
  private Timer K;
  private t T;
  private long U = 0L;
  private AtomicInteger Y = new AtomicInteger(0);
  private AtomicLong Z = new AtomicLong(1L);
  private String aa = null;
  private JSONArray ab = null;
  private boolean ac = false;
  private boolean d = false;
  private final String h = "2.4.1";
  private final String i = "Android";
  private String j = null;
  private String k = null;
  private Context l;
  private final m m = new m();
  private String n;
  private boolean o = false;
  private boolean p = true;
  private String q = "https://tap-nexus.appspot.com";
  private String r = q + "/" + "log";
  private String s;
  private String t;
  private String u;
  private String v;
  private String w = "Android";
  private String x;
  private final String y = "2.4.1";
  private String z;
  
  static
  {
    b = 5000;
  }
  
  protected l()
  {
    m.a(60000);
    g = this;
  }
  
  private void A()
  {
    s.b(null, l);
    s.c(null, l);
  }
  
  private Map<String, String> B()
  {
    try
    {
      Map localMap = s.g(l);
      Object localObject3 = localMap;
      if (localMap == null) {
        localObject3 = new HashMap();
      }
      return (Map<String, String>)localObject3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (a) {
          Log.d("Kahuna", "Exception attempting to retrieve stored attributes:" + localException);
        }
        Object localObject1 = null;
      }
    }
    finally {}
  }
  
  private boolean C()
  {
    synchronized (A)
    {
      Set localSet = T.e();
      if ((localSet.size() > 0) && (B.size() > 0))
      {
        Iterator localIterator = B.iterator();
        while (localIterator.hasNext()) {
          if (localSet.contains(((Event)localIterator.next()).a().toLowerCase())) {
            return true;
          }
        }
      }
      return false;
    }
  }
  
  private long D()
  {
    try
    {
      int i2 = I;
      int i1 = i2;
      if (i2 >= H.length) {
        i1 = H.length - 1;
      }
      i2 = H[i1][1];
      i1 = H[i1][0];
      double d1 = Math.random();
      double d2 = i2 - i1;
      long l1 = (int)(i1 + d1 * d2);
      return l1;
    }
    finally {}
  }
  
  private void E()
  {
    try
    {
      I = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private String F()
  {
    String str2 = s.a(l);
    String str1 = str2;
    if (w.a(str2))
    {
      str1 = UUID.randomUUID().toString();
      s.a(str1, l);
    }
    return str1;
  }
  
  private JSONObject a(String paramString, Object paramObject)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(paramString, paramObject);
      return localJSONObject;
    }
    catch (JSONException paramString)
    {
      if (a) {
        Log.w("Kahuna", "Caught exception when attempting to create flush reason:" + paramString);
      }
    }
    return null;
  }
  
  private void a(long paramLong, JSONObject paramJSONObject, boolean paramBoolean)
  {
    Object localObject = F;
    if (paramBoolean) {}
    try
    {
      if (G != null)
      {
        G.cancel();
        G = null;
      }
      if (G == null)
      {
        G = new a(null);
        G.schedule(new b(paramJSONObject), paramLong);
      }
      return;
    }
    finally {}
  }
  
  private void a(Activity paramActivity)
  {
    if (paramActivity != null) {}
    try
    {
      com.kahuna.sdk.inapp.c.a(paramActivity);
      V.execute(new k(new Runnable()
      {
        public void run()
        {
          if (!l.b(l.this)) {
            l.c(l.this);
          }
          for (;;)
          {
            Object localObject2;
            synchronized (l.v())
            {
              if (l.g(l.this).incrementAndGet() == 1)
              {
                if (q.a()) {
                  q.a(l.h(l.this), l.i(l.this), l.j(l.this));
                }
                l.a(q.b(l.a(l.this)));
                if (l.k(l.this) != null)
                {
                  l.k(l.this).cancel();
                  l.a(l.this, null);
                  return;
                }
                if ((l.l(l.this)) && (!w.a(l.c)))
                {
                  localObject2 = f.b();
                  if (!"".equals(localObject2)) {
                    break label284;
                  }
                  if (l.a) {
                    Log.d("Kahuna", "Device not registered yet, will now register with GCM");
                  }
                  c("");
                  f.a(l.c);
                }
                l.a(l.this, new Event("Start"));
              }
            }
            try
            {
              Object localObject4 = agetResourcesgetConfigurationlocale;
              localObject2 = TimeZone.getDefault();
              localObject2 = ((TimeZone)localObject2).getDisplayName(((TimeZone)localObject2).inDaylightTime(new Date(System.currentTimeMillis())), 0);
              localObject4 = ((Locale)localObject4).getLanguage();
              HashMap localHashMap = new HashMap();
              localHashMap.put("kahuna_tz", localObject2);
              localHashMap.put("kahuna_lang", localObject4);
              l.a(l.this, localHashMap);
              l.m(l.this);
              o.a();
              return;
              label284:
              c((String)localObject2);
              if (!l.a) {
                continue;
              }
              Log.d("Kahuna", "Device already registered");
              continue;
              localObject3 = finally;
              throw ((Throwable)localObject3);
            }
            catch (Exception localException)
            {
              for (;;)
              {
                if (l.a) {
                  Log.d("Kahuna", "Exception occured trying to retrieve app language or timezone:" + localException);
                }
              }
            }
          }
        }
      }));
      return;
    }
    catch (Exception paramActivity)
    {
      Log.d("Kahuna", "Handled exception in KahunaCommon.start(): " + paramActivity);
    }
  }
  
  private void a(Event paramEvent, int paramInt)
  {
    int i2 = 0;
    Object localObject1 = paramEvent.h();
    String str1;
    JSONArray localJSONArray;
    if (localObject1 != null)
    {
      localObject2 = new HashMap();
      if (paramInt <= 0) {
        break label427;
      }
      localIterator = ((JSONObject)localObject1).keys();
      int i1;
      while (localIterator.hasNext())
      {
        str1 = (String)localIterator.next();
        localJSONArray = ((JSONObject)localObject1).optJSONArray(str1);
        if (localJSONArray != null)
        {
          if (!((Map)localObject2).containsKey(str1)) {
            ((Map)localObject2).put(str1, new HashSet());
          }
          Set localSet = (Set)((Map)localObject2).get(str1);
          int i3 = localJSONArray.length();
          i1 = 0;
          while (i1 < i3)
          {
            String str2 = localJSONArray.optString(i1);
            if (T.a(paramEvent.a(), str1, str2)) {
              localSet.add(str2);
            }
            i1 += 1;
          }
          if (localSet.size() > 0) {
            ((Map)localObject2).put(str1, localSet);
          }
        }
      }
      localObject1 = localObject2;
      if (((Map)localObject2).size() > paramInt)
      {
        localObject1 = new HashMap();
        localIterator = ((Map)localObject2).keySet().iterator();
        i1 = i2;
        while (i1 < paramInt)
        {
          str1 = (String)localIterator.next();
          ((Map)localObject1).put(str1, ((Map)localObject2).get(str1));
          i1 += 1;
        }
      }
      if (w.a((Map)localObject1)) {
        paramEvent.a(null);
      }
    }
    else
    {
      return;
    }
    Object localObject2 = new JSONObject();
    Iterator localIterator = ((Map)localObject1).keySet().iterator();
    while (localIterator.hasNext())
    {
      str1 = (String)localIterator.next();
      try
      {
        localJSONArray = new JSONArray((Set)((Map)localObject1).get(str1));
        if (localJSONArray.length() <= 0) {
          continue;
        }
        ((JSONObject)localObject2).put(str1, localJSONArray);
      }
      catch (Exception localException) {}
      if (a) {
        Log.w("Kahuna", "Exception when filtering event properties: " + localException);
      }
    }
    paramEvent.a((JSONObject)localObject2);
    return;
    label427:
    paramEvent.a(null);
  }
  
  private void a(Event paramEvent1, Event paramEvent2)
  {
    try
    {
      paramEvent1 = w.b(paramEvent1.l().getJSONObject("user_info"));
      Map localMap = w.b(paramEvent2.l().getJSONObject("user_info"));
      localMap.putAll(paramEvent1);
      paramEvent2.b(localMap);
      if (a) {
        Log.d("Kahuna", "Merged adjacent User Attributes to event:" + paramEvent2.l());
      }
      return;
    }
    catch (JSONException paramEvent1)
    {
      Log.d("Kahuna", "error merging User Attributes: " + paramEvent1);
    }
  }
  
  private void a(final String paramString, final int paramInt1, final int paramInt2, final boolean paramBoolean)
  {
    if (w.a(paramString))
    {
      if (a) {
        Log.w("Kahuna", "You cannot track a null or empty String event name. Ignoring event.");
      }
      return;
    }
    paramString = new String(paramString);
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        try
        {
          d locald = new d(paramString);
          if (paramBoolean) {
            locald.a(paramInt1, paramInt2);
          }
          l.a(l.this, locald.a());
          return;
        }
        catch (Exception localException)
        {
          Log.d("Kahuna", "Handled exception in KahunaCommon.trackEvent(): " + localException);
        }
      }
    }));
  }
  
  private void a(JSONObject paramJSONObject)
  {
    synchronized (F)
    {
      if (G != null)
      {
        G.cancel();
        G = null;
      }
      if (I >= T.f())
      {
        E();
        Y.set(0);
        if (a) {
          Log.d("Kahuna", "Reached our max retry limit. Will not retry until the next request to flush events. Max attempts: " + T.f());
        }
        return;
      }
    }
    long l1 = D();
    if (a) {
      Log.d("Kahuna", "Scheduling next retry in: " + l1 + "(ms)");
    }
    if (paramJSONObject == null) {
      paramJSONObject = new JSONObject();
    }
    for (;;)
    {
      try
      {
        paramJSONObject.put("retry", l1 / 1000L);
        a(l1, paramJSONObject, false);
        I += 1;
        return;
      }
      catch (JSONException paramJSONObject)
      {
        if (a) {
          Log.w("Kahuna", "Caught exception when attempting to create flush reason in flush failure:" + paramJSONObject);
        }
        paramJSONObject = null;
      }
    }
  }
  
  protected static void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a = paramBoolean;
      return;
    }
    a = e;
  }
  
  private void b(Activity paramActivity)
  {
    if (paramActivity != null) {}
    try
    {
      com.kahuna.sdk.inapp.c.b(paramActivity);
      V.execute(new k(new Runnable()
      {
        public void run()
        {
          synchronized ()
          {
            int i = l.g(l.this).decrementAndGet();
            if (l.a) {
              Log.d("Kahuna", "Called stop, remaining activities in foreground is: " + i);
            }
            if (i == 0)
            {
              if (l.k(l.this) != null)
              {
                l.k(l.this).cancel();
                l.a(l.this, null);
              }
              l.a(l.this, new Timer());
              l.k(l.this).schedule(new TimerTask()
              {
                /* Error */
                public void run()
                {
                  // Byte code:
                  //   0: invokestatic 26	com/kahuna/sdk/l:v	()Ljava/lang/Object;
                  //   3: astore_2
                  //   4: aload_2
                  //   5: monitorenter
                  //   6: aload_0
                  //   7: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
                  //   10: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
                  //   13: invokestatic 33	com/kahuna/sdk/l:k	(Lcom/kahuna/sdk/l;)Ljava/util/Timer;
                  //   16: ifnull +28 -> 44
                  //   19: aload_0
                  //   20: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
                  //   23: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
                  //   26: invokestatic 33	com/kahuna/sdk/l:k	(Lcom/kahuna/sdk/l;)Ljava/util/Timer;
                  //   29: invokevirtual 38	java/util/Timer:cancel	()V
                  //   32: aload_0
                  //   33: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
                  //   36: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
                  //   39: aconst_null
                  //   40: invokestatic 41	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;
                  //   43: pop
                  //   44: aload_0
                  //   45: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
                  //   48: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
                  //   51: invokestatic 45	com/kahuna/sdk/l:g	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
                  //   54: invokevirtual 51	java/util/concurrent/atomic/AtomicInteger:get	()I
                  //   57: istore_1
                  //   58: iload_1
                  //   59: ifle +6 -> 65
                  //   62: aload_2
                  //   63: monitorexit
                  //   64: return
                  //   65: aload_0
                  //   66: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
                  //   69: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
                  //   72: ldc 53
                  //   74: invokestatic 57	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Ljava/lang/String;)V
                  //   77: aload_2
                  //   78: monitorexit
                  //   79: return
                  //   80: astore_3
                  //   81: aload_2
                  //   82: monitorexit
                  //   83: aload_3
                  //   84: athrow
                  //   85: astore_3
                  //   86: getstatic 60	com/kahuna/sdk/l:a	Z
                  //   89: ifeq -12 -> 77
                  //   92: ldc 62
                  //   94: new 64	java/lang/StringBuilder
                  //   97: dup
                  //   98: invokespecial 65	java/lang/StringBuilder:<init>	()V
                  //   101: ldc 67
                  //   103: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                  //   106: aload_3
                  //   107: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
                  //   110: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
                  //   113: invokestatic 84	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
                  //   116: pop
                  //   117: goto -40 -> 77
                  // Local variable table:
                  //   start	length	slot	name	signature
                  //   0	120	0	this	1
                  //   57	2	1	i	int
                  //   80	4	3	localObject2	Object
                  //   85	22	3	localException	Exception
                  // Exception table:
                  //   from	to	target	type
                  //   6	44	80	finally
                  //   44	58	80	finally
                  //   62	64	80	finally
                  //   65	77	80	finally
                  //   77	79	80	finally
                  //   81	83	80	finally
                  //   86	117	80	finally
                  //   6	44	85	java/lang/Exception
                  //   44	58	85	java/lang/Exception
                  //   65	77	85	java/lang/Exception
                }
              }, 5000L);
            }
            synchronized (l.d(l.this))
            {
              s.a(l.e(l.this), l.a(l.this));
              s.b(l.f(l.this).get(), l.a(l.this));
              return;
            }
          }
        }
      }));
      return;
    }
    catch (Exception paramActivity)
    {
      Log.d("Kahuna", "Handled exception in KahunaCommon.stopInternal(): " + paramActivity);
    }
  }
  
  private void b(final Event paramEvent)
  {
    if (paramEvent == null)
    {
      if (a) {
        Log.w("Kahuna", "Event is null.");
      }
      return;
    }
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        try
        {
          l.a(l.this, paramEvent);
          return;
        }
        catch (Exception localException)
        {
          Log.d("Kahuna", "Handled exception in KahunaCommon.trackEvent(): " + localException);
        }
      }
    }));
  }
  
  private void b(Map<String, String> paramMap)
  {
    if (paramMap == null) {}
    try
    {
      if (!a) {
        break label408;
      }
      Log.d("Kahuna", "You must specify a valid Map for user Attributes. Ignoring this call to setUserAttributes");
      return;
    }
    catch (Exception paramMap)
    {
      Map localMap;
      HashMap localHashMap;
      int i1;
      Iterator localIterator;
      if (!a) {
        break label408;
      }
      Log.d("Kahuna", "Exception attempting to set user attributes:" + paramMap);
      return;
      if (!a) {
        break label408;
      }
      Log.d("Kahuna", "Did not detect any change in user attributes, not sending request...");
      return;
    }
    localMap = B();
    localHashMap = new HashMap();
    i1 = 0;
    localIterator = paramMap.keySet().iterator();
    label408:
    label409:
    for (;;)
    {
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (w.a(str)) {
          continue;
        }
        if (!localMap.containsKey(str))
        {
          localMap.put(str, paramMap.get(str));
          localHashMap.put(str, paramMap.get(str));
          i1 = 1;
          break label409;
        }
        if ((localMap.get(str) == null) || (paramMap.get(str) == null))
        {
          if (localMap.get(str) != paramMap.get(str))
          {
            localMap.put(str, paramMap.get(str));
            localHashMap.put(str, paramMap.get(str));
            i1 = 1;
            break label409;
          }
        }
        else if (!((String)localMap.get(str)).equals(paramMap.get(str)))
        {
          localMap.put(str, paramMap.get(str));
          localHashMap.put(str, paramMap.get(str));
          i1 = 1;
          break label409;
        }
      }
      else if (i1 != 0)
      {
        s.c(localMap, l);
        if (localHashMap != null)
        {
          paramMap = new Event("k_user_attributes");
          paramMap.b(localHashMap);
          c(paramMap);
        }
        if (!a) {
          break label408;
        }
        Log.d("Kahuna", "Detected changes for the following user attributes: " + localHashMap);
        return;
      }
      return;
    }
  }
  
  private void c(Event arg1)
  {
    int i1 = 1;
    if (??? == null) {
      if (a) {
        Log.w("Kahuna", "Ignoring request to track (null) Event object");
      }
    }
    do
    {
      return;
      if (!w.a(???.a())) {
        break;
      }
    } while (!a);
    Log.w("Kahuna", "Cannot track null or empty event name");
    return;
    if (!o) {
      i();
    }
    Object localObject1 = ???;
    Event localEvent1;
    if (!t.a.contains(???.a().toLowerCase()))
    {
      localObject1 = T.j();
      localEvent1 = ???;
      if (localObject1 != null)
      {
        localEvent1 = ???;
        if (!((Map)localObject1).isEmpty())
        {
          localObject1 = ((Map)localObject1).entrySet().iterator();
          do
          {
            localEvent1 = ???;
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            ??? = (Map.Entry)((Iterator)localObject1).next();
          } while (!w.a((String)((Map.Entry)???).getKey(), ???.a()));
          localEvent1 = new Event(???);
          localEvent1.a((String)((Map.Entry)???).getValue());
          if (!a) {
            break label921;
          }
          Log.w("Kahuna", "Mapped event name from: " + ???.a() + " to:" + localEvent1.a());
        }
      }
    }
    label900:
    label921:
    for (;;)
    {
      localObject1 = T.l();
      ??? = T.k();
      if ((localObject1 != null) && (!((Set)localObject1).isEmpty()))
      {
        ??? = ((Set)localObject1).iterator();
        do
        {
          if (!???.hasNext()) {
            break;
          }
        } while (!w.a((String)???.next(), localEvent1.a()));
      }
      for (;;)
      {
        localObject1 = localEvent1;
        if (i1 == 0)
        {
          if (!a) {
            break;
          }
          Log.w("Kahuna", "Ignoring event: " + localEvent1.a() + " not in include list.");
          return;
          localObject1 = localEvent1;
          if (??? != null)
          {
            localObject1 = localEvent1;
            if (!???.isEmpty())
            {
              ??? = ???.iterator();
              do
              {
                if (!???.hasNext()) {
                  break;
                }
              } while (!w.a((String)???.next(), localEvent1.a()));
            }
          }
        }
        for (i1 = 1;; i1 = 0)
        {
          localObject1 = localEvent1;
          if (i1 != 0)
          {
            if (!a) {
              break;
            }
            Log.w("Kahuna", "Ignoring event: " + localEvent1.a() + " in exclude list.");
            return;
          }
          a((Event)localObject1, T.m());
          if ((c.a(((Event)localObject1).a().toLowerCase())) && (!((Event)localObject1).e())) {}
          for (;;)
          {
            synchronized (A)
            {
              localEvent1 = c.a(((Event)localObject1).a(), ((Event)localObject1).b());
              if (localEvent1 == null)
              {
                d((Event)localObject1);
                if (a) {
                  Log.d("Kahuna", "Queueing event:" + ((Event)localObject1).a());
                }
                c.a((Event)localObject1);
                ??? = (Event)localObject1;
                ???.j();
                if (a) {
                  Log.d("Kahuna", "incrementing bucket count for event:" + ???.a());
                }
                if (((Event)localObject1).f() > 0)
                {
                  if (???.f() < 0) {
                    ???.a(0);
                  }
                  ???.a(???.f() + ((Event)localObject1).f());
                }
                if (((Event)localObject1).g() > 0)
                {
                  if (???.g() < 0) {
                    ???.b(0);
                  }
                  ???.b(???.g() + ((Event)localObject1).g());
                }
                if (!o) {
                  break label900;
                }
                synchronized (D)
                {
                  if (!E) {
                    break;
                  }
                  return;
                }
              }
              ??? = localEvent2;
              if (!"k_user_attributes".equals(((Event)localObject1).a())) {
                continue;
              }
              a((Event)localObject1, localEvent2);
              ??? = localEvent2;
            }
            if ((!w.a(B)) && ("k_user_attributes".equals(((Event)localObject1).a())) && ("k_user_attributes".equals(((Event)B.get(B.size() - 1)).a())))
            {
              a((Event)localObject1, (Event)B.get(B.size() - 1));
            }
            else
            {
              d((Event)localObject1);
              if (a) {
                Log.d("Kahuna", "Queueing event:" + ((Event)localObject1).a());
              }
            }
          }
          d(((Event)localObject1).a());
          return;
          Log.d("Kahuna", "Please call the method onAppCreate() with your secretKey before trackEvent otherwise events cannot be logged");
          return;
        }
        i1 = 0;
      }
    }
  }
  
  private void d(Event paramEvent)
  {
    synchronized (A)
    {
      paramEvent.a(Z.getAndIncrement());
      B.add(paramEvent);
      return;
    }
  }
  
  private void d(String arg1)
  {
    String str2;
    long l1;
    for (;;)
    {
      int i2;
      String str1;
      int i1;
      synchronized (A)
      {
        if (w.a(B)) {
          return;
        }
        i2 = B.size();
        str2 = ???.toLowerCase();
        str1 = null;
        ??? = null;
        l1 = System.currentTimeMillis() / 1000L;
        i1 = 0;
        if (T.e().contains(str2))
        {
          i1 = 1;
          str1 = "fi";
          ??? = str2;
          if (i1 == 0) {
            break;
          }
          l1 = 0L;
          if (U == 0L) {
            l1 = 2000L;
          }
          a(l1, a(str1, ???), true);
          return;
        }
      }
      if (i2 >= T.d())
      {
        i1 = 1;
        str1 = "n";
        ??? = Integer.valueOf(i2);
      }
      else if (T.c() + U < l1)
      {
        i1 = 1;
        str1 = "t";
        if (U == 0L)
        {
          str1 = "install";
          ??? = Long.valueOf(2L + l1);
        }
        else
        {
          ??? = Long.valueOf(l1 - U);
        }
      }
    }
    if (T.i().contains(???.toLowerCase()))
    {
      l1 = T.h() * 1000L;
      synchronized (F)
      {
        if ((G != null) && (G.a() - System.currentTimeMillis() > l1))
        {
          G.cancel();
          G = null;
        }
        a(l1, a("fs", str2), false);
        return;
      }
    }
    ??? = a("t", Long.valueOf(l1 - U + T.c()));
    a(T.c() * 1000L, ???, false);
  }
  
  private void i()
  {
    try
    {
      if (l == null) {
        throw new IllegalStateException("You did not call onAppCreate() in your MainApplication's onCreate() method.");
      }
    }
    finally {}
    boolean bool = o;
    if (bool) {}
    for (;;)
    {
      return;
      if (a) {
        Log.d("Kahuna", "Initializing SDK version: 2.4.1");
      }
      try
      {
        ??? = l.getApplicationInfo();
        s = l.getString(labelRes);
        t = l.getPackageManager().getPackageInfo(l.getPackageName(), 0).versionName;
        u = F();
        v = Build.VERSION.RELEASE;
        x = Build.MODEL;
      }
      catch (Exception localException2)
      {
        try
        {
          p = s.b(l);
          J = new AtomicInteger();
        }
        catch (Exception localException2)
        {
          synchronized (A)
          {
            do
            {
              for (;;)
              {
                if (B == null) {
                  B = new ArrayList();
                }
                E = false;
                o = true;
                d = w.a(l);
                T = t.a(l);
                c.a(T.p());
                U = s.i(l);
                if (!a) {
                  break;
                }
                Log.d("Kahuna", "Loading SDK Config:" + T.a() + " flushInterval: " + T.b() + " flushEventCount: " + T.d() + " events:" + T.e());
                break;
                localException1 = localException1;
                if (a) {
                  Log.d("Kahuna", "Exception occured trying to set appName and/or appVersion:" + localException1);
                }
                t = "";
                s = "unknown";
              }
              localException2 = localException2;
            } while (!a);
            Log.d("Kahuna", "Exception occured trying to retrieve previous push enabled setting:" + localException2);
          }
        }
      }
    }
  }
  
  protected static l j()
  {
    return g;
  }
  
  protected static p m()
  {
    return L;
  }
  
  protected static boolean r()
  {
    return S;
  }
  
  public static boolean u()
  {
    return a;
  }
  
  public void a()
  {
    if (!ac) {
      a(null);
    }
  }
  
  public void a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Must have valid Application context to use Kahuna Analytics.");
    }
    if (w.a(paramString1)) {
      throw new IllegalArgumentException("Attempted to start Kahuna with invalid key! You must use your api Key with Kahuna");
    }
    l = paramContext.getApplicationContext();
    n = paramString1;
    c = paramString2;
    if (a) {
      Log.d("Kahuna", "Called onCreate with Key:" + n);
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ac = true;
      N = true;
      ((Application)paramContext.getApplicationContext()).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks()
      {
        public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
        
        public void onActivityDestroyed(Activity paramAnonymousActivity) {}
        
        public void onActivityPaused(Activity paramAnonymousActivity) {}
        
        public void onActivityResumed(Activity paramAnonymousActivity) {}
        
        public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
        
        public void onActivityStarted(Activity paramAnonymousActivity)
        {
          l.a(l.this, paramAnonymousActivity);
        }
        
        public void onActivityStopped(Activity paramAnonymousActivity)
        {
          l.b(l.this, paramAnonymousActivity);
        }
      });
    }
    f.a(l);
    com.kahuna.sdk.location.i.a(l);
    com.kahuna.sdk.inapp.c.a(l);
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        u.a(l.j(), l.a(l.this));
        if (!l.b(l.this)) {
          l.c(l.this);
        }
        q.a(l.a(l.this));
        f.a();
        y.a(l.a(l.this));
        try
        {
          com.kahuna.sdk.location.i.a(l.j());
          locala = s.a(l.a(l.this), false);
        }
        catch (Throwable localThrowable)
        {
          synchronized (l.d(l.this))
          {
            a locala;
            l.a(l.this, locala.a());
            if (!l.e(l.this).isEmpty()) {}
            Object localObject1;
            for (Event localEvent = (Event)l.e(l.this).get(l.e(l.this).size() - 1);; localObject1 = null)
            {
              if ((localEvent == null) || (localEvent.k() <= 0L)) {
                break label234;
              }
              l.f(l.this).set(localEvent.k() + 1L);
              c.a(l.e(l.this));
              l.a(l.this, locala.b());
              l.a(l.this, locala.c());
              return;
              localThrowable = localThrowable;
              if (!l.a) {
                break;
              }
              Log.w("Kahuna", "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: ");
              Log.w("Kahuna", localThrowable);
              break;
            }
            label234:
            l.f(l.this).set(s.n(l.a(l.this)));
          }
        }
      }
    }));
  }
  
  public void a(Event paramEvent)
  {
    b(paramEvent);
  }
  
  public void a(final i parami)
    throws EmptyCredentialsException
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        Object localObject2 = s.f(l.a(l.this));
        Object localObject1;
        if (parami != null)
        {
          localObject1 = parami.a();
          if (!((Map)localObject2).isEmpty()) {
            break label131;
          }
          if (!w.a(parami)) {
            break label59;
          }
        }
        for (;;)
        {
          return;
          localObject1 = new HashMap();
          break;
          label59:
          if (l.a) {
            Log.d("Kahuna", "login() called and no previous credentials found. Storing new credentials: " + localObject1);
          }
          s.b((Map)localObject1, l.a(l.this));
          int i = 1;
          while (i != 0)
          {
            localObject2 = new Event("k_user_login");
            ((Event)localObject2).a((Map)localObject1);
            l.a(l.this, (Event)localObject2);
            return;
            label131:
            if (w.a(parami))
            {
              if (l.a) {
                Log.d("Kahuna", "login() called with previous credentials but new credentials are empty. Triggering empty k_user_login.");
              }
              l.n(l.this);
              i = 1;
              localObject1 = null;
            }
            else if (!parami.a(new v((Map)localObject2)))
            {
              if (w.a((Map)localObject2, (Map)localObject1))
              {
                localObject1 = ((Map)localObject1).entrySet().iterator();
                while (((Iterator)localObject1).hasNext())
                {
                  Map.Entry localEntry = (Map.Entry)((Iterator)localObject1).next();
                  if (((Map)localObject2).containsKey(localEntry.getKey())) {
                    ((Set)((Map)localObject2).get(localEntry.getKey())).addAll((Collection)localEntry.getValue());
                  } else {
                    ((Map)localObject2).put(localEntry.getKey(), localEntry.getValue());
                  }
                }
                if (l.a) {
                  Log.d("Kahuna", "login() called with overlapping credentials. Merging all credentials: " + localObject2);
                }
                s.b((Map)localObject2, l.a(l.this));
                i = 1;
                localObject1 = localObject2;
              }
              else
              {
                if (l.a) {
                  Log.d("Kahuna", "login() called with no overlapping credentials. Sending up only new credentials.");
                }
                l.n(l.this);
                s.b((Map)localObject1, l.a(l.this));
                i = 1;
              }
            }
            else
            {
              if (l.a) {
                Log.d("Kahuna", "login() called with no change in credentials.");
              }
              i = 0;
              localObject1 = null;
            }
          }
        }
      }
    }));
    if ((parami == null) || (parami.b()))
    {
      Log.e("Kahuna", "You cannot call login() with null or empty credentials.");
      throw new EmptyCredentialsException("You cannot call login without setting any credentials.");
    }
  }
  
  public void a(final g paramg, final String paramString)
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        try
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("id", paramg.a());
          localHashMap.put("status", paramString);
          localHashMap.put("type", "beacon");
          if (paramg.c() > -1) {
            localHashMap.put("major", Integer.valueOf(paramg.c()));
          }
          if (paramg.d() > -1) {
            localHashMap.put("minor", Integer.valueOf(paramg.d()));
          }
          Event localEvent = new Event("k_user_location", System.currentTimeMillis() / 1000L);
          localEvent.c(localHashMap);
          l.a(l.this, localEvent);
          return;
        }
        catch (Exception localException)
        {
          Log.d("Kahuna", "Handled exception in KahunaCommon.trackRegionMonitoringEvent(): " + localException);
        }
      }
    }));
  }
  
  public void a(p paramp)
  {
    M = true;
    L = paramp;
  }
  
  public void a(Class<? extends BroadcastReceiver> paramClass)
  {
    y.a(paramClass);
  }
  
  public void a(String paramString)
  {
    a(paramString, -1, -1, false);
  }
  
  protected void a(final String paramString1, final String paramString2)
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        try
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("id", paramString1);
          localHashMap.put("status", paramString2);
          localHashMap.put("type", "circle");
          Event localEvent = new Event("k_user_location");
          localEvent.c(localHashMap);
          l.a(l.this, localEvent);
          return;
        }
        catch (Exception localException)
        {
          Log.d("Kahuna", "Handled exception in KahunaCommon.trackRegionMonitoringEvent(): " + localException);
        }
      }
    }));
  }
  
  public void a(final Map<String, String> paramMap)
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        l.a(l.this, paramMap);
      }
    }));
  }
  
  public void b()
  {
    if (!ac) {
      b(null);
    }
  }
  
  public void b(String paramString)
  {
    try
    {
      Event localEvent = new Event("k_push_clicked", System.currentTimeMillis() / 1000L);
      localEvent.b(paramString);
      if (Q) {
        localEvent.c();
      }
      b(localEvent);
      return;
    }
    catch (Exception paramString)
    {
      Log.d("Kahuna", "Handled exception in KahunaCommon.trackPushClicked(): " + paramString);
    }
  }
  
  public i c()
  {
    return new v();
  }
  
  protected void c(String paramString)
  {
    for (;;)
    {
      try
      {
        if (w.a(paramString))
        {
          z = "";
          s.b(z, l);
          return;
        }
        if (paramString.length() < 32)
        {
          s.c(paramString, l);
          if (w.a(s.c(l))) {
            c(new Event("k_push_enabled"));
          }
          s.b(z, l);
          continue;
        }
        s.c("", l);
      }
      finally {}
      z = paramString;
    }
  }
  
  public i d()
  {
    try
    {
      i locali = (i)V.submit(new Callable()
      {
        public i a()
        {
          return new v(s.f(l.a(l.this)));
        }
      }).get();
      return locali;
    }
    catch (Exception localException)
    {
      if (a) {
        Log.d("Kahuna", "Exception attempting to retrieve stored credentials:" + localException);
      }
    }
    return c();
  }
  
  public void e()
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        if (!l.b(l.this)) {
          Log.e("Kahuna", "You need to call onAppCreate() before any other call to the SDK. Ignoring enablePush request");
        }
        while (l.l(l.this) == true) {
          return;
        }
        l.a(l.this, true);
        s.a(l.l(l.this), l.a(l.this));
        l.a(l.this, new Event("k_push_enabled"));
      }
    }));
  }
  
  public boolean f()
  {
    if (l == null) {
      Log.d("Kahuna", "Error, push state unknown. You must call onAppCreate() before getting the current status of push.");
    }
    return p;
  }
  
  public void g()
  {
    L = null;
  }
  
  public void h()
  {
    S = true;
  }
  
  protected String k()
  {
    return n;
  }
  
  public void l()
  {
    V.execute(new k(new Runnable()
    {
      public void run()
      {
        if (!l.b(l.this)) {
          Log.e("Kahuna", "You need to call onAppCreate() before any other call to the SDK. Ignoring disablePush request");
        }
        while (!l.l(l.this)) {
          return;
        }
        l.a(l.this, false);
        s.a(l.l(l.this), l.a(l.this));
        l.a(l.this, new Event("k_push_disabled"));
      }
    }));
  }
  
  public int n()
  {
    return O;
  }
  
  public int o()
  {
    return P;
  }
  
  public boolean p()
  {
    return Q;
  }
  
  public boolean q()
  {
    if (!o) {}
    while ((!R) || (J.get() <= 0)) {
      return true;
    }
    return false;
  }
  
  protected String s()
  {
    return "2.4.1";
  }
  
  protected String t()
  {
    return q;
  }
  
  private class a
    extends Timer
  {
    private long b = -1L;
    
    private a() {}
    
    public long a()
    {
      return b;
    }
    
    public void schedule(TimerTask paramTimerTask, long paramLong)
    {
      b = (System.currentTimeMillis() + paramLong);
      super.schedule(paramTimerTask, paramLong);
    }
  }
  
  private class b
    extends TimerTask
  {
    private JSONObject b = null;
    
    public b(JSONObject paramJSONObject)
    {
      b = paramJSONObject;
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   4: invokestatic 32	com/kahuna/sdk/l:p	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
      //   7: astore_3
      //   8: aload_3
      //   9: monitorenter
      //   10: aload_0
      //   11: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   14: iconst_1
      //   15: invokestatic 35	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Z)Z
      //   18: pop
      //   19: aload_3
      //   20: monitorexit
      //   21: new 37	com/kahuna/sdk/RequestParams
      //   24: dup
      //   25: invokespecial 38	com/kahuna/sdk/RequestParams:<init>	()V
      //   28: astore 4
      //   30: aload 4
      //   32: ldc 40
      //   34: aload_0
      //   35: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   38: invokestatic 44	com/kahuna/sdk/l:h	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   41: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   44: aload 4
      //   46: ldc 50
      //   48: aload_0
      //   49: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   52: invokestatic 53	com/kahuna/sdk/l:i	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   55: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   58: aload 4
      //   60: ldc 55
      //   62: aload_0
      //   63: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   66: invokestatic 58	com/kahuna/sdk/l:q	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   69: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   72: aload 4
      //   74: ldc 60
      //   76: aload_0
      //   77: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   80: invokestatic 63	com/kahuna/sdk/l:r	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   83: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   86: aload 4
      //   88: ldc 65
      //   90: aload_0
      //   91: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   94: invokestatic 68	com/kahuna/sdk/l:s	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   97: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   100: aload 4
      //   102: ldc 70
      //   104: aload_0
      //   105: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   108: invokestatic 73	com/kahuna/sdk/l:t	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   111: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   114: aload 4
      //   116: ldc 75
      //   118: aload_0
      //   119: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   122: invokestatic 78	com/kahuna/sdk/l:u	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   125: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   128: aload 4
      //   130: ldc 80
      //   132: new 82	java/lang/StringBuilder
      //   135: dup
      //   136: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   139: ldc 85
      //   141: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   144: invokestatic 95	java/lang/System:currentTimeMillis	()J
      //   147: ldc2_w 96
      //   150: ldiv
      //   151: invokevirtual 100	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   154: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   157: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   160: aload 4
      //   162: ldc 106
      //   164: ldc 108
      //   166: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   169: aload_0
      //   170: getfield 21	com/kahuna/sdk/l$b:b	Lorg/json/JSONObject;
      //   173: invokestatic 113	com/kahuna/sdk/w:a	(Lorg/json/JSONObject;)Z
      //   176: ifne +17 -> 193
      //   179: aload 4
      //   181: ldc 115
      //   183: aload_0
      //   184: getfield 21	com/kahuna/sdk/l$b:b	Lorg/json/JSONObject;
      //   187: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
      //   190: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   193: aload_0
      //   194: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   197: invokestatic 121	com/kahuna/sdk/l:v	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   200: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
      //   203: ifne +17 -> 220
      //   206: aload 4
      //   208: ldc 126
      //   210: aload_0
      //   211: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   214: invokestatic 121	com/kahuna/sdk/l:v	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   217: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   220: aload_0
      //   221: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   224: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
      //   227: invokestatic 135	com/kahuna/sdk/s:d	(Landroid/content/Context;)Ljava/lang/String;
      //   230: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
      //   233: ifne +20 -> 253
      //   236: aload 4
      //   238: ldc -119
      //   240: aload_0
      //   241: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   244: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
      //   247: invokestatic 135	com/kahuna/sdk/s:d	(Landroid/content/Context;)Ljava/lang/String;
      //   250: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   253: aload_0
      //   254: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   257: invokestatic 141	com/kahuna/sdk/l:w	(Lcom/kahuna/sdk/l;)J
      //   260: lconst_0
      //   261: lcmp
      //   262: ifle +20 -> 282
      //   265: aload 4
      //   267: ldc -113
      //   269: aload_0
      //   270: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   273: invokestatic 141	com/kahuna/sdk/l:w	(Lcom/kahuna/sdk/l;)J
      //   276: invokestatic 149	java/lang/String:valueOf	(J)Ljava/lang/String;
      //   279: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   282: aload_0
      //   283: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   286: invokestatic 152	com/kahuna/sdk/l:x	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   289: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
      //   292: ifne +44 -> 336
      //   295: aload_0
      //   296: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   299: invokestatic 155	com/kahuna/sdk/l:y	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   302: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
      //   305: ifne +31 -> 336
      //   308: aload 4
      //   310: ldc -99
      //   312: aload_0
      //   313: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   316: invokestatic 152	com/kahuna/sdk/l:x	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   319: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   322: aload 4
      //   324: ldc -97
      //   326: aload_0
      //   327: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   330: invokestatic 155	com/kahuna/sdk/l:y	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   333: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   336: aload_0
      //   337: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   340: invokestatic 163	com/kahuna/sdk/l:j	(Lcom/kahuna/sdk/l;)Z
      //   343: ifeq +439 -> 782
      //   346: ldc -92
      //   348: astore_3
      //   349: aload 4
      //   351: ldc -90
      //   353: aload_3
      //   354: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   357: aload 4
      //   359: ldc -88
      //   361: new 82	java/lang/StringBuilder
      //   364: dup
      //   365: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   368: ldc 85
      //   370: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   373: aload_0
      //   374: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   377: invokestatic 172	com/kahuna/sdk/l:z	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;
      //   380: invokevirtual 176	com/kahuna/sdk/t:a	()J
      //   383: invokevirtual 100	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   386: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   389: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   392: new 178	org/json/JSONArray
      //   395: dup
      //   396: invokespecial 179	org/json/JSONArray:<init>	()V
      //   399: astore_3
      //   400: invokestatic 182	com/kahuna/sdk/l:w	()Z
      //   403: ifeq +10 -> 413
      //   406: aload_3
      //   407: ldc -72
      //   409: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   412: pop
      //   413: invokestatic 189	com/kahuna/sdk/l:x	()Z
      //   416: ifeq +10 -> 426
      //   419: aload_3
      //   420: ldc -65
      //   422: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   425: pop
      //   426: invokestatic 193	com/kahuna/sdk/l:y	()Z
      //   429: ifeq +372 -> 801
      //   432: invokestatic 197	com/kahuna/sdk/location/i:a	()Z
      //   435: ifeq +366 -> 801
      //   438: aload_3
      //   439: ldc -57
      //   441: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   444: pop
      //   445: aload_0
      //   446: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   449: invokestatic 202	com/kahuna/sdk/location/i:b	(Lcom/kahuna/sdk/l;)Ljava/util/Set;
      //   452: astore 6
      //   454: aload 6
      //   456: invokeinterface 208 1 0
      //   461: ifle +340 -> 801
      //   464: new 178	org/json/JSONArray
      //   467: dup
      //   468: invokespecial 179	org/json/JSONArray:<init>	()V
      //   471: astore 5
      //   473: aload 6
      //   475: invokeinterface 212 1 0
      //   480: astore 6
      //   482: aload 6
      //   484: invokeinterface 217 1 0
      //   489: ifeq +300 -> 789
      //   492: aload 5
      //   494: aload 6
      //   496: invokeinterface 221 1 0
      //   501: checkcast 145	java/lang/String
      //   504: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   507: pop
      //   508: goto -26 -> 482
      //   511: astore 5
      //   513: aload_3
      //   514: invokestatic 224	com/kahuna/sdk/w:a	(Lorg/json/JSONArray;)Z
      //   517: ifne +14 -> 531
      //   520: aload 4
      //   522: ldc -30
      //   524: aload_3
      //   525: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
      //   528: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   531: new 178	org/json/JSONArray
      //   534: dup
      //   535: invokespecial 179	org/json/JSONArray:<init>	()V
      //   538: astore 5
      //   540: aload_0
      //   541: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   544: new 229	java/util/ArrayList
      //   547: dup
      //   548: invokespecial 230	java/util/ArrayList:<init>	()V
      //   551: invokestatic 233	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;
      //   554: pop
      //   555: aload_0
      //   556: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   559: invokestatic 235	com/kahuna/sdk/l:d	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
      //   562: astore_3
      //   563: aload_3
      //   564: monitorenter
      //   565: aload_0
      //   566: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   569: invokestatic 239	com/kahuna/sdk/l:A	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
      //   572: invokevirtual 244	java/util/concurrent/atomic/AtomicInteger:get	()I
      //   575: ifgt +25 -> 600
      //   578: aload_0
      //   579: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   582: invokestatic 239	com/kahuna/sdk/l:A	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
      //   585: aload_0
      //   586: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   589: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   592: invokeinterface 251 1 0
      //   597: invokevirtual 255	java/util/concurrent/atomic/AtomicInteger:set	(I)V
      //   600: aload_0
      //   601: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   604: invokestatic 172	com/kahuna/sdk/l:z	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;
      //   607: invokevirtual 257	com/kahuna/sdk/t:q	()I
      //   610: istore_1
      //   611: iload_1
      //   612: aload_0
      //   613: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   616: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   619: invokeinterface 251 1 0
      //   624: if_icmpge +297 -> 921
      //   627: goto +957 -> 1584
      //   630: iload_2
      //   631: iload_1
      //   632: if_icmpge +305 -> 937
      //   635: aload_0
      //   636: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   639: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   642: iload_2
      //   643: invokeinterface 260 2 0
      //   648: checkcast 262	com/kahuna/sdk/Event
      //   651: astore 6
      //   653: aload_0
      //   654: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   657: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   660: aload 6
      //   662: invokeinterface 269 2 0
      //   667: pop
      //   668: aload 6
      //   670: invokevirtual 273	com/kahuna/sdk/Event:l	()Lorg/json/JSONObject;
      //   673: astore 6
      //   675: aload 6
      //   677: ifnull +11 -> 688
      //   680: aload 5
      //   682: aload 6
      //   684: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   687: pop
      //   688: iload_2
      //   689: iconst_1
      //   690: iadd
      //   691: istore_2
      //   692: goto -62 -> 630
      //   695: astore 4
      //   697: aload_3
      //   698: monitorexit
      //   699: aload 4
      //   701: athrow
      //   702: astore_3
      //   703: getstatic 276	com/kahuna/sdk/l:a	Z
      //   706: ifeq +34 -> 740
      //   709: ldc_w 278
      //   712: new 82	java/lang/StringBuilder
      //   715: dup
      //   716: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   719: ldc_w 280
      //   722: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   725: aload_3
      //   726: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   729: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   732: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   735: pop
      //   736: aload_3
      //   737: invokevirtual 291	java/lang/Exception:printStackTrace	()V
      //   740: aload_0
      //   741: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   744: invokestatic 294	com/kahuna/sdk/l:C	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
      //   747: astore_3
      //   748: aload_3
      //   749: monitorenter
      //   750: aload_0
      //   751: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   754: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
      //   757: ifnull +22 -> 779
      //   760: aload_0
      //   761: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   764: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
      //   767: invokevirtual 303	com/kahuna/sdk/l$a:cancel	()V
      //   770: aload_0
      //   771: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   774: aconst_null
      //   775: invokestatic 306	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;
      //   778: pop
      //   779: aload_3
      //   780: monitorexit
      //   781: return
      //   782: ldc_w 307
      //   785: astore_3
      //   786: goto -437 -> 349
      //   789: aload 4
      //   791: ldc -57
      //   793: aload 5
      //   795: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
      //   798: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   801: getstatic 313	android/os/Build$VERSION:SDK_INT	I
      //   804: bipush 18
      //   806: if_icmplt -293 -> 513
      //   809: invokestatic 315	com/kahuna/sdk/l:z	()Z
      //   812: ifeq -299 -> 513
      //   815: invokestatic 318	com/kahuna/sdk/location/c:a	()Z
      //   818: ifeq -305 -> 513
      //   821: aload_0
      //   822: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   825: invokestatic 322	com/kahuna/sdk/location/KahunaIBeaconManager:a	(Lcom/kahuna/sdk/l;)Z
      //   828: ifeq -315 -> 513
      //   831: aload_3
      //   832: ldc_w 324
      //   835: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   838: pop
      //   839: aload_0
      //   840: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   843: invokestatic 325	com/kahuna/sdk/location/KahunaIBeaconManager:b	(Lcom/kahuna/sdk/l;)Ljava/util/Set;
      //   846: astore 6
      //   848: aload 6
      //   850: invokeinterface 208 1 0
      //   855: ifle -342 -> 513
      //   858: new 178	org/json/JSONArray
      //   861: dup
      //   862: invokespecial 179	org/json/JSONArray:<init>	()V
      //   865: astore 5
      //   867: aload 6
      //   869: invokeinterface 212 1 0
      //   874: astore 6
      //   876: aload 6
      //   878: invokeinterface 217 1 0
      //   883: ifeq +22 -> 905
      //   886: aload 5
      //   888: aload 6
      //   890: invokeinterface 221 1 0
      //   895: checkcast 145	java/lang/String
      //   898: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
      //   901: pop
      //   902: goto -26 -> 876
      //   905: aload 4
      //   907: ldc_w 324
      //   910: aload 5
      //   912: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
      //   915: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   918: goto -405 -> 513
      //   921: aload_0
      //   922: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   925: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   928: invokeinterface 251 1 0
      //   933: istore_1
      //   934: goto +650 -> 1584
      //   937: aload_3
      //   938: monitorexit
      //   939: invokestatic 329	com/kahuna/sdk/c:a	()V
      //   942: aload_0
      //   943: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   946: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   949: invokeinterface 251 1 0
      //   954: ifne +87 -> 1041
      //   957: aload_0
      //   958: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   961: invokestatic 32	com/kahuna/sdk/l:p	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
      //   964: astore_3
      //   965: aload_3
      //   966: monitorenter
      //   967: aload_0
      //   968: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   971: iconst_0
      //   972: invokestatic 35	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Z)Z
      //   975: pop
      //   976: aload_3
      //   977: monitorexit
      //   978: aload_0
      //   979: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   982: invokestatic 294	com/kahuna/sdk/l:C	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
      //   985: astore_3
      //   986: aload_3
      //   987: monitorenter
      //   988: aload_0
      //   989: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   992: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
      //   995: ifnull +22 -> 1017
      //   998: aload_0
      //   999: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1002: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
      //   1005: invokevirtual 303	com/kahuna/sdk/l$a:cancel	()V
      //   1008: aload_0
      //   1009: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1012: aconst_null
      //   1013: invokestatic 306	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;
      //   1016: pop
      //   1017: aload_3
      //   1018: monitorexit
      //   1019: return
      //   1020: astore 4
      //   1022: aload_3
      //   1023: monitorexit
      //   1024: aload 4
      //   1026: athrow
      //   1027: astore 4
      //   1029: aload_3
      //   1030: monitorexit
      //   1031: aload 4
      //   1033: athrow
      //   1034: astore 4
      //   1036: aload_3
      //   1037: monitorexit
      //   1038: aload 4
      //   1040: athrow
      //   1041: aload 5
      //   1043: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
      //   1046: astore_3
      //   1047: aload 4
      //   1049: ldc_w 331
      //   1052: aload_3
      //   1053: ldc_w 333
      //   1056: iconst_0
      //   1057: invokestatic 336	com/kahuna/sdk/w:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
      //   1060: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   1063: aload 4
      //   1065: ldc_w 338
      //   1068: aload_3
      //   1069: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   1072: aload_0
      //   1073: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1076: invokestatic 341	com/kahuna/sdk/l:E	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   1079: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
      //   1082: ifne +18 -> 1100
      //   1085: aload 4
      //   1087: ldc_w 343
      //   1090: aload_0
      //   1091: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1094: invokestatic 341	com/kahuna/sdk/l:E	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   1097: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   1100: aload_0
      //   1101: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1104: invokestatic 347	com/kahuna/sdk/l:F	(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;
      //   1107: invokestatic 224	com/kahuna/sdk/w:a	(Lorg/json/JSONArray;)Z
      //   1110: ifne +21 -> 1131
      //   1113: aload 4
      //   1115: ldc_w 349
      //   1118: aload_0
      //   1119: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1122: invokestatic 347	com/kahuna/sdk/l:F	(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;
      //   1125: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
      //   1128: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
      //   1131: aload 4
      //   1133: invokevirtual 353	com/kahuna/sdk/RequestParams:getUrlParams	()Ljava/util/Map;
      //   1136: invokestatic 358	com/kahuna/sdk/m:a	(Ljava/util/Map;)Ljava/lang/String;
      //   1139: ldc_w 333
      //   1142: iconst_0
      //   1143: invokestatic 336	com/kahuna/sdk/w:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
      //   1146: astore_3
      //   1147: getstatic 276	com/kahuna/sdk/l:a	Z
      //   1150: ifeq +30 -> 1180
      //   1153: ldc_w 278
      //   1156: new 82	java/lang/StringBuilder
      //   1159: dup
      //   1160: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1163: ldc_w 360
      //   1166: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1169: aload_3
      //   1170: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1173: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1176: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1179: pop
      //   1180: new 362	com/kahuna/sdk/b
      //   1183: dup
      //   1184: ldc_w 364
      //   1187: aload_3
      //   1188: invokespecial 366	com/kahuna/sdk/b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
      //   1191: astore_3
      //   1192: getstatic 276	com/kahuna/sdk/l:a	Z
      //   1195: ifeq +299 -> 1494
      //   1198: aload_0
      //   1199: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1202: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
      //   1205: invokestatic 371	com/kahuna/sdk/q:b	(Landroid/content/Context;)Z
      //   1208: ifeq +338 -> 1546
      //   1211: ldc_w 278
      //   1214: ldc_w 373
      //   1217: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1220: pop
      //   1221: aload 4
      //   1223: invokevirtual 353	com/kahuna/sdk/RequestParams:getUrlParams	()Ljava/util/Map;
      //   1226: astore 5
      //   1228: new 82	java/lang/StringBuilder
      //   1231: dup
      //   1232: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1235: astore 6
      //   1237: aload 5
      //   1239: invokeinterface 379 1 0
      //   1244: invokeinterface 212 1 0
      //   1249: astore 7
      //   1251: aload 7
      //   1253: invokeinterface 217 1 0
      //   1258: ifeq +205 -> 1463
      //   1261: aload 7
      //   1263: invokeinterface 221 1 0
      //   1268: checkcast 145	java/lang/String
      //   1271: astore 8
      //   1273: ldc 40
      //   1275: aload 8
      //   1277: invokevirtual 382	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   1280: ifne -29 -> 1251
      //   1283: aload 6
      //   1285: invokevirtual 385	java/lang/StringBuilder:length	()I
      //   1288: ifle +12 -> 1300
      //   1291: aload 6
      //   1293: ldc_w 387
      //   1296: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1299: pop
      //   1300: ldc_w 338
      //   1303: aload 8
      //   1305: invokevirtual 382	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   1308: ifeq +110 -> 1418
      //   1311: aload 6
      //   1313: new 82	java/lang/StringBuilder
      //   1316: dup
      //   1317: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1320: aload 8
      //   1322: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1325: ldc_w 389
      //   1328: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1331: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1334: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1337: pop
      //   1338: aload_0
      //   1339: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1342: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   1345: invokeinterface 251 1 0
      //   1350: istore_2
      //   1351: iconst_0
      //   1352: istore_1
      //   1353: iload_1
      //   1354: iload_2
      //   1355: if_icmpge +51 -> 1406
      //   1358: aload_0
      //   1359: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1362: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
      //   1365: iload_1
      //   1366: invokeinterface 260 2 0
      //   1371: checkcast 262	com/kahuna/sdk/Event
      //   1374: invokevirtual 273	com/kahuna/sdk/Event:l	()Lorg/json/JSONObject;
      //   1377: astore 8
      //   1379: aload 8
      //   1381: ldc_w 391
      //   1384: invokevirtual 395	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
      //   1387: pop
      //   1388: aload 6
      //   1390: aload 8
      //   1392: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
      //   1395: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1398: pop
      //   1399: iload_1
      //   1400: iconst_1
      //   1401: iadd
      //   1402: istore_1
      //   1403: goto -50 -> 1353
      //   1406: aload 6
      //   1408: ldc_w 397
      //   1411: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1414: pop
      //   1415: goto -164 -> 1251
      //   1418: aload 6
      //   1420: new 82	java/lang/StringBuilder
      //   1423: dup
      //   1424: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1427: aload 8
      //   1429: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1432: ldc_w 399
      //   1435: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1438: aload 5
      //   1440: aload 8
      //   1442: invokeinterface 402 2 0
      //   1447: checkcast 145	java/lang/String
      //   1450: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1453: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1456: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1459: pop
      //   1460: goto -209 -> 1251
      //   1463: ldc_w 278
      //   1466: new 82	java/lang/StringBuilder
      //   1469: dup
      //   1470: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1473: ldc_w 404
      //   1476: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1479: aload 6
      //   1481: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1484: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1487: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1490: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1493: pop
      //   1494: aload_0
      //   1495: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1498: invokestatic 407	com/kahuna/sdk/l:I	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/m;
      //   1501: astore 5
      //   1503: aload_0
      //   1504: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
      //   1507: invokestatic 410	com/kahuna/sdk/l:G	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
      //   1510: astore 6
      //   1512: new 9	com/kahuna/sdk/l$b$1
      //   1515: dup
      //   1516: aload_0
      //   1517: invokespecial 413	com/kahuna/sdk/l$b$1:<init>	(Lcom/kahuna/sdk/l$b;)V
      //   1520: astore 7
      //   1522: aload 5
      //   1524: aconst_null
      //   1525: aload 6
      //   1527: iconst_1
      //   1528: anewarray 415	com/kahuna/sdk/g
      //   1531: dup
      //   1532: iconst_0
      //   1533: aload_3
      //   1534: aastore
      //   1535: aload 4
      //   1537: ldc_w 417
      //   1540: aload 7
      //   1542: invokevirtual 420	com/kahuna/sdk/m:a	(Landroid/content/Context;Ljava/lang/String;[Lcom/kahuna/sdk/g;Lcom/kahuna/sdk/RequestParams;Ljava/lang/String;Lcom/kahuna/sdk/n;)V
      //   1545: return
      //   1546: ldc_w 278
      //   1549: new 82	java/lang/StringBuilder
      //   1552: dup
      //   1553: invokespecial 83	java/lang/StringBuilder:<init>	()V
      //   1556: ldc_w 404
      //   1559: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1562: aload 4
      //   1564: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   1567: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1570: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1573: pop
      //   1574: goto -80 -> 1494
      //   1577: astore 4
      //   1579: aload_3
      //   1580: monitorexit
      //   1581: aload 4
      //   1583: athrow
      //   1584: iconst_0
      //   1585: istore_2
      //   1586: goto -956 -> 630
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	1589	0	this	b
      //   610	793	1	i	int
      //   630	956	2	j	int
      //   702	35	3	localException	Exception
      //   28	493	4	localRequestParams1	RequestParams
      //   695	211	4	localObject3	Object
      //   1020	5	4	localObject4	Object
      //   1027	5	4	localObject5	Object
      //   1034	529	4	localRequestParams2	RequestParams
      //   1577	5	4	localObject6	Object
      //   471	22	5	localJSONArray	JSONArray
      //   511	1	5	localThrowable	Throwable
      //   538	985	5	localObject7	Object
      //   452	1074	6	localObject8	Object
      //   1249	292	7	localObject9	Object
      //   1271	170	8	localObject10	Object
      // Exception table:
      //   from	to	target	type
      //   426	482	511	java/lang/Throwable
      //   482	508	511	java/lang/Throwable
      //   789	801	511	java/lang/Throwable
      //   801	876	511	java/lang/Throwable
      //   876	902	511	java/lang/Throwable
      //   905	918	511	java/lang/Throwable
      //   10	21	695	finally
      //   697	699	695	finally
      //   0	10	702	java/lang/Exception
      //   21	193	702	java/lang/Exception
      //   193	220	702	java/lang/Exception
      //   220	253	702	java/lang/Exception
      //   253	282	702	java/lang/Exception
      //   282	336	702	java/lang/Exception
      //   336	346	702	java/lang/Exception
      //   349	413	702	java/lang/Exception
      //   413	426	702	java/lang/Exception
      //   426	482	702	java/lang/Exception
      //   482	508	702	java/lang/Exception
      //   513	531	702	java/lang/Exception
      //   531	565	702	java/lang/Exception
      //   699	702	702	java/lang/Exception
      //   789	801	702	java/lang/Exception
      //   801	876	702	java/lang/Exception
      //   876	902	702	java/lang/Exception
      //   905	918	702	java/lang/Exception
      //   939	967	702	java/lang/Exception
      //   978	988	702	java/lang/Exception
      //   1024	1027	702	java/lang/Exception
      //   1031	1034	702	java/lang/Exception
      //   1038	1041	702	java/lang/Exception
      //   1041	1100	702	java/lang/Exception
      //   1100	1131	702	java/lang/Exception
      //   1131	1180	702	java/lang/Exception
      //   1180	1251	702	java/lang/Exception
      //   1251	1300	702	java/lang/Exception
      //   1300	1351	702	java/lang/Exception
      //   1358	1399	702	java/lang/Exception
      //   1406	1415	702	java/lang/Exception
      //   1418	1460	702	java/lang/Exception
      //   1463	1494	702	java/lang/Exception
      //   1494	1545	702	java/lang/Exception
      //   1546	1574	702	java/lang/Exception
      //   988	1017	1020	finally
      //   1017	1019	1020	finally
      //   1022	1024	1020	finally
      //   565	600	1027	finally
      //   600	627	1027	finally
      //   635	675	1027	finally
      //   680	688	1027	finally
      //   921	934	1027	finally
      //   937	939	1027	finally
      //   1029	1031	1027	finally
      //   967	978	1034	finally
      //   1036	1038	1034	finally
      //   750	779	1577	finally
      //   779	781	1577	finally
      //   1579	1581	1577	finally
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */