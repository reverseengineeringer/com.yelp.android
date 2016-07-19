package com.google.android.gms.internal;

import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.LinkedList;

@fv
class cv
{
  private final LinkedList<a> a;
  private AdRequestParcel b;
  private final String c;
  private final int d;
  
  cv(AdRequestParcel paramAdRequestParcel, String paramString, int paramInt)
  {
    zzx.zzz(paramAdRequestParcel);
    zzx.zzz(paramString);
    a = new LinkedList();
    b = paramAdRequestParcel;
    c = paramString;
    d = paramInt;
  }
  
  AdRequestParcel a()
  {
    return b;
  }
  
  void a(cp paramcp)
  {
    paramcp = new a(paramcp);
    a.add(paramcp);
    paramcp.a(b);
  }
  
  int b()
  {
    return d;
  }
  
  String c()
  {
    return c;
  }
  
  a d()
  {
    return (a)a.remove();
  }
  
  int e()
  {
    return a.size();
  }
  
  class a
  {
    l a;
    MutableContextWrapper b;
    cq c;
    long d;
    boolean e;
    boolean f;
    
    a(cp paramcp)
    {
      cp localcp = paramcp.a();
      b = paramcp.b();
      a = localcp.a(cv.a(cv.this));
      c = new cq();
      c.a(a);
    }
    
    private void a()
    {
      if ((!e) && (cv.c(cv.this) != null))
      {
        f = a.a(cv.c(cv.this));
        e = true;
        d = s.i().a();
      }
    }
    
    void a(AdRequestParcel paramAdRequestParcel)
    {
      if (paramAdRequestParcel != null) {
        cv.a(cv.this, paramAdRequestParcel);
      }
      a();
      paramAdRequestParcel = cv.b(cv.this).iterator();
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */