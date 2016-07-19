package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.gz;
import com.yelp.android.bc.a;
import com.yelp.android.bc.l;

@KeepName
public final class CustomEventAdapter
  implements com.yelp.android.bc.c, com.yelp.android.bc.e, com.yelp.android.bc.g
{
  b a;
  e b;
  g c;
  private View d;
  
  private static <T> T a(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return (T)localObject;
    }
    catch (Throwable localThrowable)
    {
      gz.d("Could not instantiate custom event adapter: " + paramString + ". " + localThrowable.getMessage());
    }
    return null;
  }
  
  b a(com.yelp.android.bc.f paramf)
  {
    return new b(this, paramf);
  }
  
  public void a()
  {
    if (a != null) {
      a.a();
    }
    if (b != null) {
      b.a();
    }
    if (c != null) {
      c.a();
    }
  }
  
  public void a(Context paramContext, com.yelp.android.bc.d paramd, Bundle paramBundle1, com.google.android.gms.ads.d paramd1, a parama, Bundle paramBundle2)
  {
    a = ((b)a(paramBundle1.getString("class_name")));
    if (a == null)
    {
      paramd.a(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      a.a(paramContext, new a(this, paramd), paramBundle1.getString("parameter"), paramd1, parama, paramBundle2);
      return;
    }
  }
  
  public void a(Context paramContext, com.yelp.android.bc.f paramf, Bundle paramBundle1, a parama, Bundle paramBundle2)
  {
    b = ((e)a(paramBundle1.getString("class_name")));
    if (b == null)
    {
      paramf.a(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      b.a(paramContext, a(paramf), paramBundle1.getString("parameter"), parama, paramBundle2);
      return;
    }
  }
  
  public void a(Context paramContext, com.yelp.android.bc.h paramh, Bundle paramBundle1, l paraml, Bundle paramBundle2)
  {
    c = ((g)a(paramBundle1.getString("class_name")));
    if (c == null)
    {
      paramh.a(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      c.a(paramContext, new c(this, paramh), paramBundle1.getString("parameter"), paraml, paramBundle2);
      return;
    }
  }
  
  public void b()
  {
    if (a != null) {
      a.b();
    }
    if (b != null) {
      b.b();
    }
    if (c != null) {
      c.b();
    }
  }
  
  public void c()
  {
    if (a != null) {
      a.c();
    }
    if (b != null) {
      b.c();
    }
    if (c != null) {
      c.c();
    }
  }
  
  public View d()
  {
    return d;
  }
  
  public void e()
  {
    b.d();
  }
  
  static final class a
    implements c
  {
    private final CustomEventAdapter a;
    private final com.yelp.android.bc.d b;
    
    public a(CustomEventAdapter paramCustomEventAdapter, com.yelp.android.bc.d paramd)
    {
      a = paramCustomEventAdapter;
      b = paramd;
    }
  }
  
  class b
    implements f
  {
    private final CustomEventAdapter b;
    private final com.yelp.android.bc.f c;
    
    public b(CustomEventAdapter paramCustomEventAdapter, com.yelp.android.bc.f paramf)
    {
      b = paramCustomEventAdapter;
      c = paramf;
    }
  }
  
  static class c
    implements h
  {
    private final CustomEventAdapter a;
    private final com.yelp.android.bc.h b;
    
    public c(CustomEventAdapter paramCustomEventAdapter, com.yelp.android.bc.h paramh)
    {
      a = paramCustomEventAdapter;
      b = paramh;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */