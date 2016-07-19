package com.google.android.gms.internal;

import java.util.Map;
import java.util.concurrent.Future;

@fv
public final class fz
{
  ib a;
  db.d b;
  public final bz c = new bz()
  {
    public void a(ib arg1, Map<String, String> paramAnonymousMap)
    {
      synchronized (fz.a(fz.this))
      {
        if (fz.b(fz.this).isDone()) {
          return;
        }
        if (!fz.c(fz.this).equals(paramAnonymousMap.get("request_id"))) {
          return;
        }
      }
      paramAnonymousMap = new gc(1, paramAnonymousMap);
      gz.d("Invalid " + paramAnonymousMap.e() + " request error: " + paramAnonymousMap.b());
      fz.b(fz.this).b(paramAnonymousMap);
    }
  };
  public final bz d = new bz()
  {
    public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
    {
      gc localgc;
      synchronized (fz.a(fz.this))
      {
        if (fz.b(fz.this).isDone()) {
          return;
        }
        localgc = new gc(-2, paramAnonymousMap);
        if (!fz.c(fz.this).equals(localgc.g()))
        {
          gz.d(localgc.g() + " ==== " + fz.c(fz.this));
          return;
        }
      }
      String str = localgc.d();
      if (str == null)
      {
        gz.d("URL missing in loadAdUrl GMSG.");
        return;
      }
      if (str.contains("%40mediation_adapters%40"))
      {
        paramAnonymousib = str.replaceAll("%40mediation_adapters%40", gx.a(paramAnonymousib.getContext(), (String)paramAnonymousMap.get("check_adapters"), fz.d(fz.this)));
        localgc.a(paramAnonymousib);
        gz.e("Ad request URL modified to " + paramAnonymousib);
      }
      fz.b(fz.this).b(localgc);
    }
  };
  private final Object e = new Object();
  private String f;
  private String g;
  private hp<gc> h = new hp();
  
  public fz(String paramString1, String paramString2)
  {
    g = paramString2;
    f = paramString1;
  }
  
  public db.d a()
  {
    return b;
  }
  
  public void a(db.d paramd)
  {
    b = paramd;
  }
  
  public void a(ib paramib)
  {
    a = paramib;
  }
  
  public Future<gc> b()
  {
    return h;
  }
  
  public void c()
  {
    if (a != null)
    {
      a.destroy();
      a = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */