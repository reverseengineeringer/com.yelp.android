package com.yelp.android.l;

import android.support.v4.view.eh;
import android.support.v4.view.ex;
import android.support.v4.view.ey;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public class h
{
  private final ArrayList<eh> a = new ArrayList();
  private long b = -1L;
  private Interpolator c;
  private ex d;
  private boolean e;
  private final ey f = new i(this);
  
  private void c()
  {
    e = false;
  }
  
  public h a(long paramLong)
  {
    if (!e) {
      b = paramLong;
    }
    return this;
  }
  
  public h a(eh parameh)
  {
    if (!e) {
      a.add(parameh);
    }
    return this;
  }
  
  public h a(ex paramex)
  {
    if (!e) {
      d = paramex;
    }
    return this;
  }
  
  public h a(Interpolator paramInterpolator)
  {
    if (!e) {
      c = paramInterpolator;
    }
    return this;
  }
  
  public void a()
  {
    if (e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      eh localeh = (eh)localIterator.next();
      if (b >= 0L) {
        localeh.a(b);
      }
      if (c != null) {
        localeh.a(c);
      }
      if (d != null) {
        localeh.a(f);
      }
      localeh.b();
    }
    e = true;
  }
  
  public void b()
  {
    if (!e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((eh)localIterator.next()).a();
    }
    e = false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.l.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */