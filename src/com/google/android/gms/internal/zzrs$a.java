package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Map;

public class zzrs$a
{
  private final Map<String, d.a> a;
  private final d.a b;
  
  public Map<String, d.a> a()
  {
    return Collections.unmodifiableMap(a);
  }
  
  public void a(String paramString, d.a parama)
  {
    a.put(paramString, parama);
  }
  
  public d.a b()
  {
    return b;
  }
  
  public String toString()
  {
    return "Properties: " + a() + " pushAfterEvaluate: " + b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzrs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */