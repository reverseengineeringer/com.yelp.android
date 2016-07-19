package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class v
{
  private final long a;
  private final String b;
  private final String c;
  private final boolean d;
  private long e;
  private final Map<String, String> f;
  
  public v(long paramLong1, String paramString1, String paramString2, boolean paramBoolean, long paramLong2, Map<String, String> paramMap)
  {
    zzx.zzcM(paramString1);
    zzx.zzcM(paramString2);
    a = paramLong1;
    b = paramString1;
    c = paramString2;
    d = paramBoolean;
    e = paramLong2;
    if (paramMap != null)
    {
      f = new HashMap(paramMap);
      return;
    }
    f = Collections.emptyMap();
  }
  
  public long a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    e = paramLong;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public long e()
  {
    return e;
  }
  
  public Map<String, String> f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */