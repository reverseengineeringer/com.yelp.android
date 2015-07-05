package com.comscore.streaming;

import com.comscore.utils.c;
import java.util.HashMap;

public class d
{
  private b a;
  private String b;
  private int c;
  private int d;
  private int e;
  private long f;
  private long g;
  private HashMap<String, String> h;
  private boolean i;
  
  public HashMap<String, String> a()
  {
    return h;
  }
  
  protected HashMap<String, String> a(StreamSenseEventType paramStreamSenseEventType, HashMap<String, String> paramHashMap)
  {
    if (paramHashMap != null) {}
    for (;;)
    {
      paramHashMap.put("ns_st_bp", String.valueOf(d()));
      paramHashMap.put("ns_st_sp", String.valueOf(c));
      paramHashMap.put("ns_st_id", String.valueOf(b));
      if (e > 0) {
        paramHashMap.put("ns_st_bc", String.valueOf(e));
      }
      if ((paramStreamSenseEventType == StreamSenseEventType.PAUSE) || (paramStreamSenseEventType == StreamSenseEventType.END) || (paramStreamSenseEventType == StreamSenseEventType.KEEP_ALIVE) || (paramStreamSenseEventType == StreamSenseEventType.HEART_BEAT) || (paramStreamSenseEventType == null))
      {
        paramHashMap.put("ns_st_pa", String.valueOf(e()));
        paramHashMap.put("ns_st_pp", String.valueOf(d));
      }
      if (((paramStreamSenseEventType == StreamSenseEventType.PLAY) || (paramStreamSenseEventType == null)) && (!h()))
      {
        paramHashMap.put("ns_st_pb", "1");
        a(true);
      }
      paramHashMap.putAll(a());
      return paramHashMap;
      paramHashMap = new HashMap();
    }
  }
  
  protected void a(int paramInt)
  {
    c = paramInt;
  }
  
  protected void a(long paramLong)
  {
    c.a(this, "addPlaybackTime(" + paramLong + ")");
    if (a.f() >= 0L)
    {
      long l = paramLong - a.f();
      a.c(-1L);
      a.b(a.e() + l);
      d(e() + l);
      c.a(this, "addPlaybackTime(" + paramLong + ") ->" + l);
    }
  }
  
  protected void a(HashMap<String, String> paramHashMap, StreamSenseState paramStreamSenseState)
  {
    String str = (String)paramHashMap.get("ns_st_sp");
    if (str != null) {}
    try
    {
      c = Integer.parseInt(str);
      paramHashMap.remove("ns_st_sp");
      str = (String)paramHashMap.get("ns_st_bc");
      if (str != null) {}
      try
      {
        e = Integer.parseInt(str);
        paramHashMap.remove("ns_st_bc");
        str = (String)paramHashMap.get("ns_st_bp");
        if (str != null) {}
        try
        {
          f = Long.parseLong(str);
          paramHashMap.remove("ns_st_bp");
          str = (String)paramHashMap.get("ns_st_id");
          if (str != null)
          {
            b = str;
            paramHashMap.remove("ns_st_id");
          }
          if (paramStreamSenseState != StreamSenseState.BUFFERING)
          {
            str = (String)paramHashMap.get("ns_st_pa");
            if (str == null) {}
          }
          try
          {
            g = Long.parseLong(str);
            paramHashMap.remove("ns_st_pa");
            if ((paramStreamSenseState == StreamSenseState.PAUSED) || (paramStreamSenseState == StreamSenseState.IDLE) || (paramStreamSenseState == null))
            {
              paramStreamSenseState = (String)paramHashMap.get("ns_st_pp");
              if (paramStreamSenseState == null) {}
            }
            try
            {
              d = Integer.parseInt(paramStreamSenseState);
              paramHashMap.remove("ns_st_pp");
              return;
            }
            catch (NumberFormatException paramHashMap) {}
          }
          catch (NumberFormatException localNumberFormatException1)
          {
            for (;;) {}
          }
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          for (;;) {}
        }
      }
      catch (NumberFormatException localNumberFormatException3)
      {
        for (;;) {}
      }
    }
    catch (NumberFormatException localNumberFormatException4)
    {
      for (;;) {}
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public b b()
  {
    return a;
  }
  
  protected void b(long paramLong)
  {
    c.a(this, "addBufferingTime(" + paramLong + ")");
    if (a.g() >= 0L)
    {
      long l = paramLong - a.g();
      a.d(-1L);
      a.a(a.d() + l);
      c(d() + l);
      c.a(this, "addBufferingTime(" + paramLong + ") ->" + l);
    }
  }
  
  protected int c()
  {
    return c;
  }
  
  protected void c(long paramLong)
  {
    f = paramLong;
  }
  
  protected long d()
  {
    long l2 = f;
    long l1 = l2;
    if (a.g() >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - a.g());
    }
    return l1;
  }
  
  protected void d(long paramLong)
  {
    g = paramLong;
  }
  
  protected long e()
  {
    long l2 = g;
    long l1 = l2;
    if (a.f() >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - a.f());
    }
    return l1;
  }
  
  protected void f()
  {
    d += 1;
    a.b();
  }
  
  protected void g()
  {
    e += 1;
  }
  
  protected boolean h()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */