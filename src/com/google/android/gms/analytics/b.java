package com.google.android.gms.analytics;

import com.google.android.gms.internal.ha;
import java.util.List;
import java.util.Map;

abstract interface b
{
  public abstract void a(Map<String, String> paramMap, long paramLong, String paramString, List<ha> paramList);
  
  public abstract void connect();
  
  public abstract void dQ();
  
  public abstract void disconnect();
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */