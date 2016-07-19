package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class v
  extends o
{
  private db.d d;
  private boolean e;
  
  public v(final Context paramContext, AdSizeParcel paramAdSizeParcel, gr paramgr, VersionInfoParcel paramVersionInfoParcel, w paramw, db paramdb)
  {
    super(paramContext, paramAdSizeParcel, paramgr, paramVersionInfoParcel, paramw);
    d = paramdb.b();
    try
    {
      paramContext = a(paramw.c().a());
      d.a(new hu.c()new hu.a
      {
        public void a(dc paramAnonymousdc)
        {
          a(paramContext);
        }
      }, new hu.a()
      {
        public void a() {}
      });
      d.a(new hu.c()new hu.a
      {
        public void a(dc paramAnonymousdc)
        {
          v.a(v.this, true);
          v.this.a(paramAnonymousdc);
          a();
          b(false);
        }
      }, new hu.a()
      {
        public void a()
        {
          c();
        }
      });
      gz.a("Tracking ad unit: " + b.d());
      return;
    }
    catch (RuntimeException paramContext)
    {
      for (;;)
      {
        gz.b("Failure while processing active view data.", paramContext);
      }
    }
    catch (JSONException paramContext)
    {
      for (;;) {}
    }
  }
  
  protected void b(final JSONObject paramJSONObject)
  {
    d.a(new hu.c()new hu.b
    {
      public void a(dc paramAnonymousdc)
      {
        paramAnonymousdc.a("AFMA_updateActiveView", paramJSONObject);
      }
    }, new hu.b());
  }
  
  protected void c()
  {
    synchronized (a)
    {
      super.c();
      d.a(new hu.c()new hu.b
      {
        public void a(dc paramAnonymousdc)
        {
          b(paramAnonymousdc);
        }
      }, new hu.b());
      d.a();
      return;
    }
  }
  
  protected boolean j()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */