package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.mediation.g;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.gz;

@KeepName
public final class CustomEventAdapter
  implements com.google.ads.mediation.d<com.google.android.gms.ads.mediation.customevent.d, f>, com.google.ads.mediation.f<com.google.android.gms.ads.mediation.customevent.d, f>
{
  b a;
  d b;
  private View c;
  
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
  
  b a(g paramg)
  {
    return new b(this, paramg);
  }
  
  public void a()
  {
    if (a != null) {
      a.a();
    }
    if (b != null) {
      b.a();
    }
  }
  
  public void a(com.google.ads.mediation.e parame, Activity paramActivity, f paramf, AdSize paramAdSize, com.google.ads.mediation.b paramb, com.google.android.gms.ads.mediation.customevent.d paramd)
  {
    a = ((b)a(b));
    if (a == null)
    {
      parame.a(this, AdRequest.ErrorCode.INTERNAL_ERROR);
      return;
    }
    if (paramd == null) {}
    for (paramd = null;; paramd = paramd.a(a))
    {
      a.a(new a(this, parame), paramActivity, a, c, paramAdSize, paramb, paramd);
      return;
    }
  }
  
  public void a(g paramg, Activity paramActivity, f paramf, com.google.ads.mediation.b paramb, com.google.android.gms.ads.mediation.customevent.d paramd)
  {
    b = ((d)a(b));
    if (b == null)
    {
      paramg.a(this, AdRequest.ErrorCode.INTERNAL_ERROR);
      return;
    }
    if (paramd == null) {}
    for (paramd = null;; paramd = paramd.a(a))
    {
      b.a(a(paramg), paramActivity, a, c, paramb, paramd);
      return;
    }
  }
  
  public Class<com.google.android.gms.ads.mediation.customevent.d> b()
  {
    return com.google.android.gms.ads.mediation.customevent.d.class;
  }
  
  public Class<f> c()
  {
    return f.class;
  }
  
  public View d()
  {
    return c;
  }
  
  public void e()
  {
    b.b();
  }
  
  static final class a
    implements c
  {
    private final CustomEventAdapter a;
    private final com.google.ads.mediation.e b;
    
    public a(CustomEventAdapter paramCustomEventAdapter, com.google.ads.mediation.e parame)
    {
      a = paramCustomEventAdapter;
      b = parame;
    }
  }
  
  class b
    implements e
  {
    private final CustomEventAdapter b;
    private final g c;
    
    public b(CustomEventAdapter paramCustomEventAdapter, g paramg)
    {
      b = paramCustomEventAdapter;
      c = paramg;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */