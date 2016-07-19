package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

@fv
public class r
  implements s
{
  private final Object a = new Object();
  private final WeakHashMap<gr, o> b = new WeakHashMap();
  private final ArrayList<o> c = new ArrayList();
  private final Context d;
  private final VersionInfoParcel e;
  private final db f;
  
  public r(Context paramContext, VersionInfoParcel paramVersionInfoParcel, db paramdb)
  {
    d = paramContext.getApplicationContext();
    e = paramVersionInfoParcel;
    f = paramdb;
  }
  
  public o a(AdSizeParcel paramAdSizeParcel, gr paramgr)
  {
    return a(paramAdSizeParcel, paramgr, b.b());
  }
  
  public o a(AdSizeParcel paramAdSizeParcel, gr paramgr, View paramView)
  {
    return a(paramAdSizeParcel, paramgr, new o.d(paramView, paramgr), null);
  }
  
  public o a(AdSizeParcel paramAdSizeParcel, gr paramgr, View paramView, dc paramdc)
  {
    return a(paramAdSizeParcel, paramgr, new o.d(paramView, paramgr), paramdc);
  }
  
  public o a(AdSizeParcel paramAdSizeParcel, gr paramgr, h paramh)
  {
    return a(paramAdSizeParcel, paramgr, new o.a(paramh), null);
  }
  
  public o a(AdSizeParcel paramAdSizeParcel, gr paramgr, w paramw, dc paramdc)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (a(paramgr))
        {
          paramAdSizeParcel = (o)b.get(paramgr);
          return paramAdSizeParcel;
        }
        if (paramdc != null)
        {
          paramAdSizeParcel = new t(d, paramAdSizeParcel, paramgr, e, paramw, paramdc);
          paramAdSizeParcel.a(this);
          b.put(paramgr, paramAdSizeParcel);
          c.add(paramAdSizeParcel);
          return paramAdSizeParcel;
        }
      }
      paramAdSizeParcel = new v(d, paramAdSizeParcel, paramgr, e, paramw, f);
    }
  }
  
  public void a(o paramo)
  {
    synchronized (a)
    {
      if (!paramo.f())
      {
        c.remove(paramo);
        Iterator localIterator = b.entrySet().iterator();
        while (localIterator.hasNext()) {
          if (((Map.Entry)localIterator.next()).getValue() == paramo) {
            localIterator.remove();
          }
        }
      }
    }
  }
  
  public boolean a(gr paramgr)
  {
    for (;;)
    {
      synchronized (a)
      {
        paramgr = (o)b.get(paramgr);
        if ((paramgr != null) && (paramgr.f()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void b(gr paramgr)
  {
    synchronized (a)
    {
      paramgr = (o)b.get(paramgr);
      if (paramgr != null) {
        paramgr.d();
      }
      return;
    }
  }
  
  public void c(gr paramgr)
  {
    synchronized (a)
    {
      paramgr = (o)b.get(paramgr);
      if (paramgr != null) {
        paramgr.n();
      }
      return;
    }
  }
  
  public void d(gr paramgr)
  {
    synchronized (a)
    {
      paramgr = (o)b.get(paramgr);
      if (paramgr != null) {
        paramgr.o();
      }
      return;
    }
  }
  
  public void e(gr paramgr)
  {
    synchronized (a)
    {
      paramgr = (o)b.get(paramgr);
      if (paramgr != null) {
        paramgr.p();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */