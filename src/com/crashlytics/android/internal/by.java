package com.crashlytics.android.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;

public class by
{
  private final ConcurrentMap<Class<?>, Set<Object>> a = new ConcurrentHashMap();
  private final ConcurrentMap<Class<?>, Object> b = new ConcurrentHashMap();
  private final String c;
  private final ce d;
  private final cc e;
  private final ThreadLocal<ConcurrentLinkedQueue<Object>> f = new ca(this);
  private final ThreadLocal<Boolean> g = new cb(this);
  private final Map<Class<?>, Set<Class<?>>> h = new HashMap();
  
  public by(ce paramce)
  {
    this(paramce, "default");
  }
  
  public by(ce paramce, String paramString)
  {
    this(paramce, paramString, cc.a);
  }
  
  private by(ce paramce, String paramString, cc paramcc)
  {
    d = paramce;
    c = paramString;
    e = paramcc;
  }
  
  public String toString()
  {
    return "[Bus \"" + c + "\"]";
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */