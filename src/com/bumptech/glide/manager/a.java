package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

class a
  implements h
{
  private final Set<i> a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
  private boolean b;
  private boolean c;
  
  void a()
  {
    b = true;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).c();
    }
  }
  
  public void a(i parami)
  {
    a.add(parami);
    if (c)
    {
      parami.e();
      return;
    }
    if (b)
    {
      parami.c();
      return;
    }
    parami.d();
  }
  
  void b()
  {
    b = false;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).d();
    }
  }
  
  void c()
  {
    c = true;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).e();
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */