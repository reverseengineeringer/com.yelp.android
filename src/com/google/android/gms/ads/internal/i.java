package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hc;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@fv
class i
  implements g, Runnable
{
  CountDownLatch a = new CountDownLatch(1);
  private final List<Object[]> b = new Vector();
  private final AtomicReference<g> c = new AtomicReference();
  private t d;
  
  public i(t paramt)
  {
    d = paramt;
    if (v.a().b())
    {
      hc.a(this);
      return;
    }
    run();
  }
  
  private Context b(Context paramContext)
  {
    if (!((Boolean)ao.m.c()).booleanValue()) {}
    Context localContext;
    do
    {
      return paramContext;
      localContext = paramContext.getApplicationContext();
    } while (localContext == null);
    return localContext;
  }
  
  private void b()
  {
    if (b.isEmpty()) {
      return;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object[] arrayOfObject = (Object[])localIterator.next();
      if (arrayOfObject.length == 1) {
        ((g)c.get()).a((MotionEvent)arrayOfObject[0]);
      } else if (arrayOfObject.length == 3) {
        ((g)c.get()).a(((Integer)arrayOfObject[0]).intValue(), ((Integer)arrayOfObject[1]).intValue(), ((Integer)arrayOfObject[2]).intValue());
      }
    }
    b.clear();
  }
  
  protected g a(String paramString, Context paramContext, boolean paramBoolean)
  {
    return com.google.android.gms.internal.i.a(paramString, paramContext, paramBoolean);
  }
  
  public String a(Context paramContext)
  {
    if (a())
    {
      g localg = (g)c.get();
      if (localg != null)
      {
        b();
        return localg.a(b(paramContext));
      }
    }
    return "";
  }
  
  public String a(Context paramContext, String paramString)
  {
    if (a())
    {
      g localg = (g)c.get();
      if (localg != null)
      {
        b();
        return localg.a(b(paramContext), paramString);
      }
    }
    return "";
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    g localg = (g)c.get();
    if (localg != null)
    {
      b();
      localg.a(paramInt1, paramInt2, paramInt3);
      return;
    }
    b.add(new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    g localg = (g)c.get();
    if (localg != null)
    {
      b();
      localg.a(paramMotionEvent);
      return;
    }
    b.add(new Object[] { paramMotionEvent });
  }
  
  protected void a(g paramg)
  {
    c.set(paramg);
  }
  
  protected boolean a()
  {
    try
    {
      a.await();
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      gz.d("Interrupted during GADSignals creation.", localInterruptedException);
    }
    return false;
  }
  
  public void run()
  {
    label94:
    for (;;)
    {
      try
      {
        if (((Boolean)ao.y.c()).booleanValue()) {
          if (d.e.e)
          {
            break label94;
            a(a(d.e.b, b(d.c), bool));
          }
          else
          {
            bool = false;
            continue;
          }
        }
        boolean bool = true;
      }
      finally
      {
        a.countDown();
        d = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */