package com.yelp.android.services.push;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class i
{
  private final Map<String, WeakReference<j>> a = new HashMap();
  private String b;
  
  private boolean c(h paramh)
  {
    if ((!TextUtils.isEmpty(b)) && (b.equals(paramh.b()))) {
      return true;
    }
    b = paramh.b();
    return false;
  }
  
  public void a(j paramj)
  {
    if (paramj != null) {
      a.put(paramj.c(), new WeakReference(paramj));
    }
  }
  
  public boolean a(h paramh)
  {
    if (a.isEmpty()) {
      return true;
    }
    Iterator localIterator = a.values().iterator();
    boolean bool = true;
    if (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      if (localWeakReference.get() == null) {
        break label81;
      }
      bool = ((j)localWeakReference.get()).b(paramh) & bool;
    }
    label81:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  public void b(h paramh)
  {
    if (c(paramh)) {}
    for (;;)
    {
      return;
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        if (localWeakReference.get() != null) {
          ((j)localWeakReference.get()).a(paramh);
        }
      }
    }
  }
  
  public void b(j paramj)
  {
    if (paramj != null) {
      a.remove(paramj.c());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */