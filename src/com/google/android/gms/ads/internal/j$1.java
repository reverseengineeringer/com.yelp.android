package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.lang.ref.WeakReference;

class j$1
  implements Runnable
{
  j$1(j paramj, AdRequestParcel paramAdRequestParcel) {}
  
  public void run()
  {
    synchronized (j.a(b))
    {
      q localq = b.c();
      j.a(b, new WeakReference(localq));
      localq.a(j.b(b));
      localq.a(j.c(b));
      localq.a(j.d(b));
      localq.a(j.e(b));
      localq.b(j.f(b));
      localq.a(j.g(b));
      localq.a(j.h(b));
      localq.a(j.i(b));
      localq.a(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */