package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

class a
  implements g
{
  private final Set<h> a = Collections.newSetFromMap(new WeakHashMap());
  private boolean b;
  private boolean c;
  
  void a()
  {
    b = true;
    Iterator localIterator = com.yelp.android.ao.h.a(a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).d();
    }
  }
  
  public void a(h paramh)
  {
    a.add(paramh);
    if (c)
    {
      paramh.f();
      return;
    }
    if (b)
    {
      paramh.d();
      return;
    }
    paramh.e();
  }
  
  void b()
  {
    b = false;
    Iterator localIterator = com.yelp.android.ao.h.a(a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).e();
    }
  }
  
  void c()
  {
    c = true;
    Iterator localIterator = com.yelp.android.ao.h.a(a).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).f();
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */