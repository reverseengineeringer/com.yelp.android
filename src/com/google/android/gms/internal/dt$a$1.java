package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class dt$a$1
  implements Runnable
{
  private final WeakReference<dt> su = new WeakReference(sv);
  
  dt$a$1(dt.a parama, dt paramdt) {}
  
  public void run()
  {
    dt localdt = (dt)su.get();
    if ((!dt.a.a(sw)) && (localdt != null))
    {
      localdt.cr();
      sw.cs();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dt.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */