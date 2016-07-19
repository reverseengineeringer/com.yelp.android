package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.util.client.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fv
class ht
{
  private final Object a = new Object();
  private final List<Runnable> b = new ArrayList();
  private final List<Runnable> c = new ArrayList();
  private boolean d = false;
  
  private void c(Runnable paramRunnable)
  {
    hc.a(paramRunnable);
  }
  
  private void d(Runnable paramRunnable)
  {
    a.a.post(paramRunnable);
  }
  
  public void a()
  {
    synchronized (a)
    {
      if (d) {
        return;
      }
      Iterator localIterator1 = b.iterator();
      if (localIterator1.hasNext()) {
        c((Runnable)localIterator1.next());
      }
    }
    Iterator localIterator2 = c.iterator();
    while (localIterator2.hasNext()) {
      d((Runnable)localIterator2.next());
    }
    b.clear();
    c.clear();
    d = true;
  }
  
  public void a(Runnable paramRunnable)
  {
    synchronized (a)
    {
      if (d)
      {
        c(paramRunnable);
        return;
      }
      b.add(paramRunnable);
    }
  }
  
  public void b(Runnable paramRunnable)
  {
    synchronized (a)
    {
      if (d)
      {
        d(paramRunnable);
        return;
      }
      c.add(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */