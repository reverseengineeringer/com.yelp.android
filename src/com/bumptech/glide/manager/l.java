package com.bumptech.glide.manager;

import com.bumptech.glide.request.b;
import com.yelp.android.ao.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class l
{
  private final Set<b> a = Collections.newSetFromMap(new WeakHashMap());
  private final List<b> b = new ArrayList();
  private boolean c;
  
  public void a()
  {
    c = true;
    Iterator localIterator = h.a(a).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (localb.f())
      {
        localb.e();
        b.add(localb);
      }
    }
  }
  
  public void a(b paramb)
  {
    a.add(paramb);
    if (!c)
    {
      paramb.b();
      return;
    }
    b.add(paramb);
  }
  
  public void b()
  {
    c = false;
    Iterator localIterator = h.a(a).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if ((!localb.g()) && (!localb.i()) && (!localb.f())) {
        localb.b();
      }
    }
    b.clear();
  }
  
  public void b(b paramb)
  {
    a.remove(paramb);
    b.remove(paramb);
  }
  
  public void c()
  {
    Iterator localIterator = h.a(a).iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).d();
    }
    b.clear();
  }
  
  public void d()
  {
    Iterator localIterator = h.a(a).iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if ((!localb.g()) && (!localb.i()))
      {
        localb.e();
        if (!c) {
          localb.b();
        } else {
          b.add(localb);
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