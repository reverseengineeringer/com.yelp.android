package com.comscore.streaming;

import com.comscore.utils.n;
import java.util.HashMap;
import java.util.Set;

public class b
{
  HashMap<String, String> a;
  private int b;
  private int c;
  private long d;
  private long e;
  private long f;
  private long g;
  private String h;
  
  private void a(String paramString, HashMap<String, String> paramHashMap)
  {
    paramHashMap = (String)paramHashMap.get(paramString);
    if (paramHashMap != null) {
      a.put(paramString, paramHashMap);
    }
  }
  
  public HashMap<String, String> a()
  {
    return a;
  }
  
  protected HashMap<String, String> a(StreamSenseEventType paramStreamSenseEventType, HashMap<String, String> paramHashMap)
  {
    if (paramHashMap != null) {}
    for (;;)
    {
      paramHashMap.put("ns_st_cn", h());
      paramHashMap.put("ns_st_bt", String.valueOf(d()));
      if ((paramStreamSenseEventType == StreamSenseEventType.PLAY) || (paramStreamSenseEventType == null)) {
        paramHashMap.put("ns_st_sq", String.valueOf(c));
      }
      if ((paramStreamSenseEventType == StreamSenseEventType.PAUSE) || (paramStreamSenseEventType == StreamSenseEventType.END) || (paramStreamSenseEventType == StreamSenseEventType.KEEP_ALIVE) || (paramStreamSenseEventType == StreamSenseEventType.HEART_BEAT) || (paramStreamSenseEventType == null))
      {
        paramHashMap.put("ns_st_pt", String.valueOf(e()));
        paramHashMap.put("ns_st_pc", String.valueOf(b));
      }
      paramHashMap.putAll(a());
      return paramHashMap;
      paramHashMap = new HashMap();
    }
  }
  
  protected void a(int paramInt)
  {
    b = paramInt;
  }
  
  protected void a(long paramLong)
  {
    d = paramLong;
  }
  
  public void a(String paramString)
  {
    h = paramString;
  }
  
  protected void a(HashMap<String, String> paramHashMap, StreamSenseState paramStreamSenseState)
  {
    String str = (String)paramHashMap.get("ns_st_cn");
    if (str != null)
    {
      a(str);
      paramHashMap.remove("ns_st_cn");
    }
    str = (String)paramHashMap.get("ns_st_bt");
    if (str != null) {}
    try
    {
      d = Long.parseLong(str);
      paramHashMap.remove("ns_st_bt");
      a("ns_st_cl", paramHashMap);
      a("ns_st_pn", paramHashMap);
      a("ns_st_tp", paramHashMap);
      a("ns_st_ub", paramHashMap);
      a("ns_st_br", paramHashMap);
      if ((paramStreamSenseState == StreamSenseState.PLAYING) || (paramStreamSenseState == null))
      {
        str = (String)paramHashMap.get("ns_st_sq");
        if (str == null) {}
      }
      try
      {
        c = Integer.parseInt(str);
        paramHashMap.remove("ns_st_sq");
        if (paramStreamSenseState != StreamSenseState.BUFFERING)
        {
          str = (String)paramHashMap.get("ns_st_pt");
          if (str == null) {}
        }
        try
        {
          f = Long.parseLong(str);
          paramHashMap.remove("ns_st_pt");
          if ((paramStreamSenseState == StreamSenseState.PAUSED) || (paramStreamSenseState == StreamSenseState.IDLE) || (paramStreamSenseState == null))
          {
            paramStreamSenseState = (String)paramHashMap.get("ns_st_pc");
            if (paramStreamSenseState == null) {}
          }
          try
          {
            b = Integer.parseInt(paramStreamSenseState);
            paramHashMap.remove("ns_st_pc");
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
  
  public void a(Set<String> paramSet)
  {
    if ((paramSet != null) && (!paramSet.isEmpty())) {
      e.a(a, paramSet);
    }
    for (;;)
    {
      if (!a.containsKey("ns_st_cl")) {
        a.put("ns_st_cl", "0");
      }
      if (!a.containsKey("ns_st_pn")) {
        a.put("ns_st_pn", "1");
      }
      if (!a.containsKey("ns_st_tp")) {
        a.put("ns_st_tp", "1");
      }
      a(0);
      b(0);
      a(0L);
      d(-1L);
      b(0L);
      c(-1L);
      return;
      a.clear();
    }
  }
  
  protected void b()
  {
    b += 1;
  }
  
  protected void b(int paramInt)
  {
    c = paramInt;
  }
  
  protected void b(long paramLong)
  {
    f = paramLong;
  }
  
  protected void c()
  {
    c += 1;
  }
  
  protected void c(long paramLong)
  {
    g = paramLong;
  }
  
  protected long d()
  {
    long l2 = d;
    long l1 = l2;
    if (e >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - e);
    }
    return l1;
  }
  
  protected void d(long paramLong)
  {
    e = paramLong;
  }
  
  protected long e()
  {
    long l2 = f;
    long l1 = l2;
    if (g >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - g);
    }
    return l1;
  }
  
  protected long f()
  {
    return g;
  }
  
  protected long g()
  {
    return e;
  }
  
  public String h()
  {
    if (n.g(h)) {
      a("1");
    }
    return h;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */