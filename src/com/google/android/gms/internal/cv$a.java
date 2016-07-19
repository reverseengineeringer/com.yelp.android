package com.google.android.gms.internal;

import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.s;
import java.util.Iterator;
import java.util.LinkedList;

class cv$a
{
  l a;
  MutableContextWrapper b;
  cq c;
  long d;
  boolean e;
  boolean f;
  
  cv$a(cv paramcv, cp paramcp)
  {
    cp localcp = paramcp.a();
    b = paramcp.b();
    a = localcp.a(cv.a(paramcv));
    c = new cq();
    c.a(a);
  }
  
  private void a()
  {
    if ((!e) && (cv.c(g) != null))
    {
      f = a.a(cv.c(g));
      e = true;
      d = s.i().a();
    }
  }
  
  void a(AdRequestParcel paramAdRequestParcel)
  {
    if (paramAdRequestParcel != null) {
      cv.a(g, paramAdRequestParcel);
    }
    a();
    paramAdRequestParcel = cv.b(g).iterator();
    while (paramAdRequestParcel.hasNext()) {
      ((a)paramAdRequestParcel.next()).a();
    }
  }
  
  void a(cp paramcp)
  {
    paramcp = paramcp.b().getBaseContext();
    b.setBaseContext(paramcp);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */