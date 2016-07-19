package com.kahuna.sdk;

import android.os.Build.VERSION;
import android.util.Log;
import com.kahuna.sdk.location.KahunaIBeaconManager;
import com.kahuna.sdk.location.i;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

class l$b$1
  extends n
{
  l$b$1(l.b paramb) {}
  
  public void a(String arg1)
  {
    for (;;)
    {
      try
      {
        if (w.a(???))
        {
          Log.w("Kahuna", "onSuccess returned with empty string");
          ??? = null;
          bool1 = false;
          if (!bool1) {}
        }
        try
        {
          synchronized (l.d(a.a))
          {
            l.e(a.a).removeAll(l.B(a.a));
            s.a(l.e(a.a), l.a(a.a));
            s.b(l.f(a.a).get(), l.a(a.a));
            if (l.a) {
              Log.d("Kahuna", "Number events submitted: " + l.B(a.a).size());
            }
            l.A(a.a).addAndGet(0 - l.B(a.a).size());
            l.B(a.a).clear();
            l.b(a.a, null);
            if (l.a) {
              Log.d("Kahuna", "Events let in Queue: " + l.e(a.a).size());
            }
            l.a(a.a, System.currentTimeMillis() / 1000L);
            s.a(l.w(a.a), l.a(a.a));
            l.a(a.a, null);
            l.a(a.a, null);
            if (l.a) {
              Log.d("Kahuna", "server reply: " + bool1);
            }
            bool2 = bool1;
            if (??? == null) {
              continue;
            }
            ??? = ???.optJSONArray("s");
            if (??? == null) {
              continue;
            }
            int j = ((JSONArray)???).length();
            int i = 0;
            if (i >= j) {
              continue;
            }
            localObject4 = ((JSONArray)???).optString(i);
            if (!w.a((String)localObject4))
            {
              if (!"a".equals(((String)localObject4).trim())) {
                continue;
              }
              localObject4 = l.o(a.a);
              localEvent = new Event("k_server_request");
              localEvent.b((Map)localObject4);
              a.a.a(localEvent);
            }
            i += 1;
            continue;
            ??? = new JSONObject(???);
            bool1 = ???.getBoolean("success");
          }
          ???.printStackTrace();
        }
        catch (Exception ???) {}
      }
      catch (Exception ???)
      {
        boolean bool2;
        Object localObject4;
        Event localEvent;
        boolean bool1 = false;
        continue;
      }
      bool2 = bool1;
      if (l.a)
      {
        Log.w("Kahuna", "Caught exception in http response handler: " + ???);
        Thread.dumpStack();
        bool2 = bool1;
      }
      synchronized (l.p(a.a))
      {
        l.b(a.a, false);
        if (l.B(a.a) != null)
        {
          l.B(a.a).clear();
          l.b(a.a, null);
        }
        if (!bool2) {
          continue;
        }
      }
      synchronized (l.C(a.a))
      {
        if (l.D(a.a) != null)
        {
          l.D(a.a).cancel();
          l.a(a.a, null);
        }
        if ((l.A(a.a).get() > 0) || (l.H(a.a)))
        {
          ??? = l.a(a.a, "flushing", Long.valueOf(2L));
          l.a(a.a, 2000L, ???, false);
        }
        return;
        if ("c".equals(((String)localObject4).trim()))
        {
          localObject4 = s.f(l.a(a.a));
          localEvent = new Event("k_server_request");
          localEvent.a((Map)localObject4);
          a.a.a(localEvent);
          continue;
          ??? = ???.optJSONObject("c");
          if (??? != null)
          {
            l.a(a.a, t.a((JSONObject)???));
            c.a(l.z(a.a).p());
            t.a(l.a(a.a), l.z(a.a));
            if (l.a) {
              Log.d("Kahuna", "Updated SDK Config Version:" + l.z(a.a).a() + " flushInterval: " + l.z(a.a).b() + " flushEventCount: " + l.z(a.a).d() + " events:" + l.z(a.a).e() + " flushWithDelayTime: " + l.z(a.a).g() + " delayEvents: " + l.z(a.a).i() + " bucketConfig: " + l.z(a.a).p() + " eventMapping: " + l.z(a.a).j() + " include: " + l.z(a.a).l() + " exclude: " + l.z(a.a).k() + " eventPropertiesMaxCount: " + l.z(a.a).m() + " eventPropertiesIncludeMap: " + l.z(a.a).n() + " eventPropertiesExcludeMap: " + l.z(a.a).o());
            }
          }
          ??? = ???.optJSONObject("iam");
          if (??? != null) {
            o.a((JSONObject)???);
          }
          ??? = ???.optJSONObject("location");
          if (??? != null) {}
          try
          {
            i.a(a.a, (JSONObject)???, l.a(a.a));
            if (Build.VERSION.SDK_INT >= 18) {
              KahunaIBeaconManager.a(a.a, (JSONObject)???, l.a(a.a));
            }
            ??? = ???.optJSONObject("sdk_iam");
            bool2 = bool1;
            if (??? == null) {
              continue;
            }
            com.kahuna.sdk.inapp.c.a(???);
            bool2 = bool1;
          }
          catch (Throwable localThrowable)
          {
            if (!l.a) {
              continue;
            }
            Log.w("Kahuna", "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: ");
            Log.w("Kahuna", localThrowable);
            continue;
          }
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
    }
    l.a(a.a, l.b.a(a));
  }
  
  public void a(Throwable arg1, String paramString)
  {
    super.a(???, paramString);
    if (l.a) {
      Log.d("Kahuna", "Failed to send request: " + paramString, ???);
    }
    synchronized (l.p(a.a))
    {
      l.b(a.a, false);
      l.a(a.a, l.b.a(a));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */