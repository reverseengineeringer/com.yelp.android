package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

@ey
public final class ae
  implements ag
{
  private final Object mH = new Object();
  private final WeakHashMap<fy, af> mI = new WeakHashMap();
  private final ArrayList<af> mJ = new ArrayList();
  
  public af a(Context paramContext, ay paramay, fy paramfy, View paramView, gs paramgs)
  {
    synchronized (mH)
    {
      if (c(paramfy))
      {
        paramContext = (af)mI.get(paramfy);
        return paramContext;
      }
      paramContext = new af(paramContext, paramay, paramfy, paramView, paramgs);
      paramContext.a(this);
      mI.put(paramfy, paramContext);
      mJ.add(paramContext);
      return paramContext;
    }
  }
  
  public af a(ay paramay, fy paramfy)
  {
    return a(se.getContext(), paramay, paramfy, se, se.dG());
  }
  
  public void a(af paramaf)
  {
    synchronized (mH)
    {
      if (!paramaf.aM()) {
        mJ.remove(paramaf);
      }
      return;
    }
  }
  
  public boolean c(fy paramfy)
  {
    for (;;)
    {
      synchronized (mH)
      {
        paramfy = (af)mI.get(paramfy);
        if ((paramfy != null) && (paramfy.aM()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void d(fy paramfy)
  {
    synchronized (mH)
    {
      paramfy = (af)mI.get(paramfy);
      if (paramfy != null) {
        paramfy.aK();
      }
      return;
    }
  }
  
  public void pause()
  {
    synchronized (mH)
    {
      Iterator localIterator = mJ.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).pause();
      }
    }
  }
  
  public void resume()
  {
    synchronized (mH)
    {
      Iterator localIterator = mJ.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).resume();
      }
    }
  }
  
  public void stop()
  {
    synchronized (mH)
    {
      Iterator localIterator = mJ.iterator();
      if (localIterator.hasNext()) {
        ((af)localIterator.next()).stop();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */