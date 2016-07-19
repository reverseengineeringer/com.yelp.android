package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public abstract interface u
{
  public abstract a a(String paramString);
  
  public abstract void a();
  
  public abstract void a(String paramString, a parama);
  
  public static class a
  {
    public byte[] a;
    public String b;
    public long c;
    public long d;
    public long e;
    public long f;
    public Map<String, String> g = Collections.emptyMap();
    
    public boolean a()
    {
      return e < System.currentTimeMillis();
    }
    
    public boolean b()
    {
      return f < System.currentTimeMillis();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */