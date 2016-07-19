package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.Map;
import java.util.Set;

abstract class g
{
  private final Set<String> a;
  
  public abstract d.a a(Map<String, d.a> paramMap);
  
  public abstract boolean a();
  
  boolean a(Set<String> paramSet)
  {
    return paramSet.containsAll(a);
  }
  
  public Set<String> b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */