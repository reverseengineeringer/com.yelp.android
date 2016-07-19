package com.yelp.android.p;

import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.be;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public class f
{
  private final ArrayList<az> a = new ArrayList();
  private long b = -1L;
  private Interpolator c;
  private bd d;
  private boolean e;
  private final be f = new be()
  {
    private boolean b = false;
    private int c = 0;
    
    void a()
    {
      c = 0;
      b = false;
      f.b(f.this);
    }
    
    public void a(View paramAnonymousView)
    {
      if (b) {}
      do
      {
        return;
        b = true;
      } while (f.a(f.this) == null);
      f.a(f.this).a(null);
    }
    
    public void b(View paramAnonymousView)
    {
      int i = c + 1;
      c = i;
      if (i == f.c(f.this).size())
      {
        if (f.a(f.this) != null) {
          f.a(f.this).b(null);
        }
        a();
      }
    }
  };
  
  private void c()
  {
    e = false;
  }
  
  public f a(long paramLong)
  {
    if (!e) {
      b = paramLong;
    }
    return this;
  }
  
  public f a(az paramaz)
  {
    if (!e) {
      a.add(paramaz);
    }
    return this;
  }
  
  public f a(az paramaz1, az paramaz2)
  {
    a.add(paramaz1);
    paramaz2.b(paramaz1.a());
    a.add(paramaz2);
    return this;
  }
  
  public f a(bd parambd)
  {
    if (!e) {
      d = parambd;
    }
    return this;
  }
  
  public f a(Interpolator paramInterpolator)
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
      az localaz = (az)localIterator.next();
      if (b >= 0L) {
        localaz.a(b);
      }
      if (c != null) {
        localaz.a(c);
      }
      if (d != null) {
        localaz.a(f);
      }
      localaz.c();
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
      ((az)localIterator.next()).b();
    }
    e = false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */