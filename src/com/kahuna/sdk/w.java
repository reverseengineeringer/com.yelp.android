package com.kahuna.sdk;

import android.os.Build.VERSION;
import android.util.Log;
import com.kahuna.sdk.location.KahunaIBeaconManager;
import com.kahuna.sdk.location.m;
import com.yelp.android.ao.f;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

class w
  extends f
{
  w(v paramv) {}
  
  public void a(String arg1)
  {
    try
    {
      ??? = new JSONObject(???);
      bool1 = ???.getBoolean("success");
      if (bool1) {}
      try
      {
        synchronized (h.d(a.a))
        {
          h.e(a.a).removeAll(h.E(a.a));
          ag.a(h.e(a.a), h.a(a.a));
          if (h.a) {
            Log.d("KahunaAnalytics", "Number events submitted: " + h.E(a.a).size());
          }
          h.D(a.a).addAndGet(0 - h.E(a.a).size());
          h.E(a.a).clear();
          h.b(a.a, null);
          if (h.a) {
            Log.d("KahunaAnalytics", "Events let in Queue: " + h.e(a.a).size());
          }
          h.a(a.a, System.currentTimeMillis() / 1000L);
          ag.a(h.I(a.a), h.a(a.a));
          h.a(a.a, null);
          h.a(a.a, null);
          if (h.a) {
            Log.d("KahunaAnalytics", "server reply: " + bool1);
          }
          ??? = ???.optJSONArray("s");
          if (??? == null) {
            break label696;
          }
          int j = ((JSONArray)???).length();
          int i = 0;
          if (i >= j) {
            break label696;
          }
          Object localObject4 = ((JSONArray)???).optString(i);
          if ((!aj.a((String)localObject4)) && ("a".equals(((String)localObject4).trim())))
          {
            localObject4 = h.s(h.a());
            localObject4 = new Event("k_user_attributes", System.currentTimeMillis() / 1000L, null, (Map)localObject4, null, null);
            h.a(h.a(), (Event)localObject4);
          }
          i += 1;
        }
        bool2 = bool1;
      }
      catch (Exception ???) {}
    }
    catch (Exception ???)
    {
      for (;;)
      {
        boolean bool2;
        label696:
        boolean bool1 = false;
      }
    }
    if (h.a)
    {
      Log.w("KahunaAnalytics", "Caught exception in http response handler: " + ???);
      Thread.dumpStack();
      bool2 = bool1;
    }
    for (;;)
    {
      synchronized (h.t(a.a))
      {
        h.b(a.a, false);
        if (h.E(a.a) != null)
        {
          h.E(a.a).clear();
          h.b(a.a, null);
        }
        if (!bool2) {
          break;
        }
      }
      synchronized (h.p(a.a))
      {
        if (h.q(a.a) != null)
        {
          h.q(a.a).cancel();
          h.a(a.a, null);
        }
        if ((h.D(a.a).get() > 0) || (h.J(a.a)))
        {
          h.a(a.a, new u(a.a, null));
          h.q(a.a).schedule(new v(a.a, null), 2000L);
        }
        return;
        ??? = ???.optJSONObject("c");
        if (??? != null)
        {
          h.a(a.a, ah.a((JSONObject)???));
          b.a(h.C(a.a).m());
          ah.a(h.a(a.a), h.C(a.a));
          if (h.a) {
            Log.d("KahunaAnalytics", "Updated SDK Config Version:" + h.C(a.a).a() + " flushInterval: " + h.C(a.a).b() + " flushEventCount: " + h.C(a.a).d() + " events:" + h.C(a.a).e() + " flushWithDelayTime: " + h.C(a.a).g() + " delayEvents: " + h.C(a.a).i() + " bucketConfig: " + h.C(a.a).m() + " eventMapping: " + h.C(a.a).j() + " include: " + h.C(a.a).l() + " exclude: " + h.C(a.a).k());
          }
        }
        ??? = ???.optJSONObject("iam");
        if (??? != null) {
          y.a((JSONObject)???);
        }
        ??? = ???.optJSONObject("location");
        if (??? != null) {}
        try
        {
          m.a(h.a(), ???, h.a(h.a()));
          if (Build.VERSION.SDK_INT >= 18) {
            KahunaIBeaconManager.a(h.a(), ???, h.a(h.a()));
          }
          bool2 = bool1;
        }
        catch (Throwable ???)
        {
          for (;;)
          {
            if (h.a)
            {
              Log.w("KahunaAnalytics", "Caught error when attepmting to to parse server location services command. If you are NOT using location services please ignore this error: ");
              Log.w("KahunaAnalytics", ???);
            }
          }
        }
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
    h.H(a.a);
  }
  
  public void a(Throwable arg1, String paramString)
  {
    super.a(???, paramString);
    if (h.a) {
      Log.d("KahunaAnalytics", "Failed to send request: " + paramString, ???);
    }
    synchronized (h.t(a.a))
    {
      h.b(a.a, false);
      h.H(a.a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */