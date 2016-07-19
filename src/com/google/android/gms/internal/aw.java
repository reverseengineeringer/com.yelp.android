package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

@fv
public class aw
{
  private final Map<String, au> a;
  private final ax b;
  
  public aw(ax paramax)
  {
    b = paramax;
    a = new HashMap();
  }
  
  public ax a()
  {
    return b;
  }
  
  public void a(String paramString, au paramau)
  {
    a.put(paramString, paramau);
  }
  
  public void a(String paramString1, String paramString2, long paramLong)
  {
    as.a(b, (au)a.get(paramString2), paramLong, new String[] { paramString1 });
    a.put(paramString1, as.a(b, paramLong));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */