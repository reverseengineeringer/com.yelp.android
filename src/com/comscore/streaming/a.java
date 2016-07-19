package com.comscore.streaming;

import android.content.Context;
import com.comscore.utils.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class a
{
  protected com.comscore.analytics.a a;
  private HashMap<String, String> b;
  private String c;
  private long d;
  private long e;
  private StreamSenseState f;
  private int g;
  private d h;
  private Runnable i;
  private boolean j;
  private Runnable k;
  private k l;
  private Runnable m;
  private long n;
  private int o;
  private long p;
  private boolean q;
  private StreamSenseState r;
  private String s;
  private String t;
  private HashMap<String, String> u;
  private List<c> v;
  private List<HashMap<String, Long>> w;
  private int x;
  private int y;
  
  private long a(long paramLong)
  {
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      HashMap localHashMap = (HashMap)localIterator.next();
      Long localLong = (Long)localHashMap.get("playingtime");
      if ((localLong == null) || (paramLong < localLong.longValue())) {
        return ((Long)localHashMap.get("interval")).longValue();
      }
    }
    return 0L;
  }
  
  private StreamSenseState a(StreamSenseEventType paramStreamSenseEventType)
  {
    if (paramStreamSenseEventType == StreamSenseEventType.PLAY) {
      return StreamSenseState.PLAYING;
    }
    if (paramStreamSenseEventType == StreamSenseEventType.PAUSE) {
      return StreamSenseState.PAUSED;
    }
    if (paramStreamSenseEventType == StreamSenseEventType.BUFFER) {
      return StreamSenseState.BUFFERING;
    }
    if (paramStreamSenseEventType == StreamSenseEventType.END) {
      return StreamSenseState.IDLE;
    }
    return null;
  }
  
  private HashMap<String, String> a(StreamSenseEventType paramStreamSenseEventType, HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {
      new HashMap();
    }
    com.comscore.utils.c.a(this, "createMeasurementLabels(" + paramStreamSenseEventType + ")");
    HashMap localHashMap = new HashMap();
    if (paramHashMap != null) {
      localHashMap.putAll(paramHashMap);
    }
    if (!localHashMap.containsKey("ns_ts")) {
      localHashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
    }
    if ((paramStreamSenseEventType != null) && (!localHashMap.containsKey("ns_st_ev"))) {
      localHashMap.put("ns_st_ev", paramStreamSenseEventType.toString());
    }
    localHashMap.putAll(d());
    b(paramStreamSenseEventType, localHashMap);
    h.a(paramStreamSenseEventType, localHashMap);
    h.b().a(paramStreamSenseEventType, localHashMap);
    if (!localHashMap.containsKey("ns_st_mp")) {
      localHashMap.put("ns_st_mp", s);
    }
    if (!localHashMap.containsKey("ns_st_mv")) {
      localHashMap.put("ns_st_mv", t);
    }
    if (!localHashMap.containsKey("ns_st_ub")) {
      localHashMap.put("ns_st_ub", "0");
    }
    if (!localHashMap.containsKey("ns_st_br")) {
      localHashMap.put("ns_st_br", "0");
    }
    if (!localHashMap.containsKey("ns_st_pn")) {
      localHashMap.put("ns_st_pn", "1");
    }
    if (!localHashMap.containsKey("ns_st_tp")) {
      localHashMap.put("ns_st_tp", "1");
    }
    if (!localHashMap.containsKey("ns_st_it")) {
      localHashMap.put("ns_st_it", "c");
    }
    localHashMap.put("ns_st_sv", "4.1508.28");
    return localHashMap;
  }
  
  private void a(StreamSenseState paramStreamSenseState, HashMap<String, String> paramHashMap)
  {
    long l1 = 0L;
    if (!a.ao()) {}
    do
    {
      do
      {
        return;
        com.comscore.utils.c.a(this, "transitionTo(" + paramStreamSenseState + ", " + paramHashMap + ")");
        q();
      } while (!c(paramStreamSenseState));
      StreamSenseState localStreamSenseState = c();
      long l2 = d;
      long l3 = f(paramHashMap);
      if (l2 >= 0L) {
        l1 = l3 - l2;
      }
      b(c(), paramHashMap);
      c(paramStreamSenseState, paramHashMap);
      d(paramStreamSenseState);
      Iterator localIterator = v.iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).a(localStreamSenseState, paramStreamSenseState, paramHashMap, l1);
      }
      c(paramHashMap);
      h.a(paramHashMap, paramStreamSenseState);
      h.b().a(paramHashMap, paramStreamSenseState);
      paramStreamSenseState = a(paramStreamSenseState.toEventType(), paramHashMap);
      paramStreamSenseState.putAll(paramHashMap);
    } while (!b(f));
    a(paramStreamSenseState);
    r = f;
    g += 1;
  }
  
  private void a(StreamSenseState paramStreamSenseState, HashMap<String, String> paramHashMap, long paramLong)
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "transitionTo(" + paramStreamSenseState + ", " + paramHashMap + ", " + paramLong + ")");
    q();
    l = new i(this, paramStreamSenseState, paramHashMap);
    a.s().a(l, paramLong);
  }
  
  private boolean a(StreamSenseState paramStreamSenseState)
  {
    if (!a.ao()) {}
    while ((paramStreamSenseState != StreamSenseState.PLAYING) && (paramStreamSenseState != StreamSenseState.PAUSED)) {
      return false;
    }
    return true;
  }
  
  private HashMap<String, String> b(StreamSenseEventType paramStreamSenseEventType, HashMap<String, String> paramHashMap)
  {
    Object localObject;
    if (!a.ao())
    {
      localObject = new HashMap();
      return (HashMap<String, String>)localObject;
    }
    if (paramHashMap != null) {}
    for (;;)
    {
      paramHashMap.put("ns_st_ec", String.valueOf(g));
      if (!paramHashMap.containsKey("ns_st_po"))
      {
        long l2 = e;
        long l3 = f(paramHashMap);
        long l1;
        if ((paramStreamSenseEventType != StreamSenseEventType.PLAY) && (paramStreamSenseEventType != StreamSenseEventType.KEEP_ALIVE) && (paramStreamSenseEventType != StreamSenseEventType.HEART_BEAT))
        {
          l1 = l2;
          if (paramStreamSenseEventType == null)
          {
            l1 = l2;
            if (f != StreamSenseState.PLAYING) {}
          }
        }
        else
        {
          l1 = l2 + (l3 - h.b().f());
        }
        paramHashMap.put("ns_st_po", String.valueOf(l1));
      }
      localObject = paramHashMap;
      if (paramStreamSenseEventType != StreamSenseEventType.HEART_BEAT) {
        break;
      }
      paramHashMap.put("ns_st_hc", String.valueOf(o));
      paramHashMap.put("ns_st_pe", "1");
      return paramHashMap;
      paramHashMap = new HashMap();
    }
  }
  
  private void b(StreamSenseState paramStreamSenseState, HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "onExit(" + paramStreamSenseState + ", " + paramHashMap + ")");
      long l1 = f(paramHashMap);
      if (paramStreamSenseState == StreamSenseState.PLAYING)
      {
        h.a(l1);
        j();
        m();
        return;
      }
      if (paramStreamSenseState == StreamSenseState.BUFFERING)
      {
        h.b(l1);
        p();
        return;
      }
    } while (paramStreamSenseState != StreamSenseState.IDLE);
    g().a(g().a().keySet());
  }
  
  private void b(HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {}
    while (f(paramHashMap) >= 0L) {
      return;
    }
    paramHashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
  }
  
  private boolean b(StreamSenseState paramStreamSenseState)
  {
    if ((paramStreamSenseState == StreamSenseState.PAUSED) && ((r == StreamSenseState.IDLE) || (r == null))) {}
    while ((paramStreamSenseState == StreamSenseState.BUFFERING) || (r == paramStreamSenseState)) {
      return false;
    }
    return true;
  }
  
  private void c(StreamSenseState paramStreamSenseState, HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {}
    do
    {
      do
      {
        long l1;
        do
        {
          do
          {
            do
            {
              return;
              com.comscore.utils.c.a(this, "onEnter(" + paramStreamSenseState + ", " + paramHashMap + ")");
              l1 = f(paramHashMap);
              e = e(paramHashMap);
              if (paramStreamSenseState != StreamSenseState.PLAYING) {
                break;
              }
              i();
              l();
              h.b().c(l1);
            } while (!b(paramStreamSenseState));
            h.b().c();
          } while (h.c() >= 1);
          h.a(1);
          return;
          if (paramStreamSenseState != StreamSenseState.PAUSED) {
            break;
          }
        } while (!b(paramStreamSenseState));
        h.f();
        return;
        if (paramStreamSenseState != StreamSenseState.BUFFERING) {
          break;
        }
        h.b().d(l1);
      } while (!j);
      h();
      return;
    } while (paramStreamSenseState != StreamSenseState.IDLE);
    k();
  }
  
  private void c(HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {}
    String str;
    do
    {
      return;
      str = (String)paramHashMap.get("ns_st_mp");
      if (str != null)
      {
        s = str;
        paramHashMap.remove("ns_st_mp");
      }
      str = (String)paramHashMap.get("ns_st_mv");
      if (str != null)
      {
        t = str;
        paramHashMap.remove("ns_st_mv");
      }
      str = (String)paramHashMap.get("ns_st_ec");
    } while (str == null);
    try
    {
      g = Integer.parseInt(str);
      paramHashMap.remove("ns_st_ec");
      return;
    }
    catch (NumberFormatException paramHashMap) {}
  }
  
  private boolean c(StreamSenseState paramStreamSenseState)
  {
    return (paramStreamSenseState != null) && (c() != paramStreamSenseState);
  }
  
  private void d(StreamSenseState paramStreamSenseState)
  {
    if (!a.ao()) {
      return;
    }
    f = paramStreamSenseState;
    d = System.currentTimeMillis();
  }
  
  private void d(HashMap<String, String> paramHashMap)
  {
    if (!a.ao()) {
      return;
    }
    u = g(null);
    u.putAll(paramHashMap);
  }
  
  private long e(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap.containsKey("ns_st_po")) {
      try
      {
        long l1 = Long.valueOf((String)paramHashMap.get("ns_st_po")).longValue();
        return l1;
      }
      catch (NumberFormatException paramHashMap)
      {
        return -1L;
      }
    }
    return -1L;
  }
  
  private long f(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap.containsKey("ns_ts")) {
      try
      {
        long l1 = Long.valueOf((String)paramHashMap.get("ns_ts")).longValue();
        return l1;
      }
      catch (NumberFormatException paramHashMap)
      {
        return -1L;
      }
    }
    return -1L;
  }
  
  private HashMap<String, String> g(HashMap<String, String> paramHashMap)
  {
    return a(f.toEventType(), paramHashMap);
  }
  
  private void h()
  {
    if (!a.ao()) {}
    do
    {
      return;
      p();
    } while ((!e()) || (!b(StreamSenseState.PAUSED)));
    i = new f(this);
    a.s().a(i, y);
  }
  
  private void i()
  {
    if (!a.ao()) {}
    for (;;)
    {
      return;
      n();
      if (w != null)
      {
        long l1;
        if (n >= 0L)
        {
          l1 = n;
          com.comscore.utils.c.a(this, "Resuming heart beat timer. Next event in " + l1 + " ms");
        }
        while (l1 > 0L)
        {
          p = (System.currentTimeMillis() + l1);
          m = new g(this);
          a.s().a(m, l1);
          return;
          l1 = a(h.b().e());
          com.comscore.utils.c.a(this, "Starting heart beat timer. Next event in " + l1 + " ms");
        }
      }
    }
  }
  
  private void j()
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "Pausing heartbeat timer.");
    n();
    n = (p - System.currentTimeMillis());
    p = -1L;
  }
  
  private void k()
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "Resetting heartbeat timer.");
    n = -1L;
    p = -1L;
    o = 0;
  }
  
  private void l()
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "Starting keep alive timer");
    m();
    k = new h(this);
    a.s().a(k, x, true, x);
  }
  
  private void m()
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "stopKeepAliveTask()");
    } while (k == null);
    a.s().b(k);
    k = null;
  }
  
  private void n()
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "releaseHeartBeatTask()");
    } while (m == null);
    a.s().b(m);
    m = null;
  }
  
  private void o()
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "Firing paused on buffering event");
    } while (r != StreamSenseState.PLAYING);
    h.g();
    h.f();
    a(a(StreamSenseEventType.PAUSE, null));
    g += 1;
    r = StreamSenseState.PAUSED;
  }
  
  private void p()
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "stopPausedOnBufferingTask()");
    } while (i == null);
    a.s().b(i);
    i = null;
  }
  
  private void q()
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "stopDelayedTransitionTask()");
    } while (l == null);
    a.s().b(l);
    l = null;
  }
  
  private boolean r()
  {
    Context localContext = a.N();
    String str1 = a.U();
    String str2 = a.Q();
    return (localContext == null) || (str1 == null) || (str1.length() == 0) || (str2 == null) || (str2.length() == 0);
  }
  
  protected void a()
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "Firing heart beat");
    o += 1;
    a(a(StreamSenseEventType.HEART_BEAT, null));
    n = -1L;
    i();
  }
  
  public void a(StreamSenseEventType paramStreamSenseEventType, HashMap<String, String> paramHashMap, long paramLong)
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "notify(" + paramStreamSenseEventType + ", " + paramHashMap + ")");
    StreamSenseState localStreamSenseState = a(paramStreamSenseEventType);
    paramHashMap = n.a(paramHashMap);
    b(paramHashMap);
    if (!paramHashMap.containsKey("ns_st_po")) {
      paramHashMap.put("ns_st_po", String.valueOf(paramLong));
    }
    if ((paramStreamSenseEventType == StreamSenseEventType.PLAY) || (paramStreamSenseEventType == StreamSenseEventType.PAUSE) || (paramStreamSenseEventType == StreamSenseEventType.BUFFER) || (paramStreamSenseEventType == StreamSenseEventType.END))
    {
      if ((f()) && (a(f)) && (a(localStreamSenseState)) && ((f != StreamSenseState.PLAYING) || (localStreamSenseState != StreamSenseState.PAUSED) || (l != null)))
      {
        a(localStreamSenseState, paramHashMap, 500L);
        return;
      }
      a(localStreamSenseState, paramHashMap);
      return;
    }
    paramStreamSenseEventType = a(paramStreamSenseEventType, paramHashMap);
    paramStreamSenseEventType.putAll(paramHashMap);
    a(paramStreamSenseEventType, false);
    g += 1;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (!a.ao()) {
      return;
    }
    if (paramString2 == null)
    {
      b.remove(paramString1);
      return;
    }
    b.put(paramString1, paramString2);
  }
  
  protected void a(HashMap<String, String> paramHashMap)
  {
    a(paramHashMap, true);
  }
  
  protected void a(HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "dispatch(" + paramHashMap + ", " + paramBoolean + ")");
      if (paramBoolean) {
        d(paramHashMap);
      }
    } while (r());
    String str = c;
    a.s().a(new j(this, paramHashMap, str), true);
  }
  
  protected void b()
  {
    if (!a.ao()) {
      return;
    }
    com.comscore.utils.c.a(this, "Firing keep alive");
    a(a(StreamSenseEventType.KEEP_ALIVE, null));
    g += 1;
  }
  
  public StreamSenseState c()
  {
    return f;
  }
  
  public HashMap<String, String> d()
  {
    return b;
  }
  
  public boolean e()
  {
    return j;
  }
  
  public boolean f()
  {
    return q;
  }
  
  public b g()
  {
    return h.b();
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */