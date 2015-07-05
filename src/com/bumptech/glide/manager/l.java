package com.bumptech.glide.manager;

import com.bumptech.glide.request.a;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class l
{
  private final Set<a> a = Collections.newSetFromMap(new WeakHashMap());
  private boolean b;
  
  public void a()
  {
    b = true;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (locala.f()) {
        locala.e();
      }
    }
  }
  
  public void a(a parama)
  {
    a.add(parama);
    if (!b) {
      parama.b();
    }
  }
  
  public void b()
  {
    b = false;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((!locala.g()) && (!locala.i()) && (!locala.f())) {
        locala.b();
      }
    }
  }
  
  public void b(a parama)
  {
    a.remove(parama);
  }
  
  public void c()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).d();
    }
  }
  
  public void d()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((!locala.g()) && (!locala.i()))
      {
        locala.e();
        if (!b) {
          locala.b();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.manager.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */