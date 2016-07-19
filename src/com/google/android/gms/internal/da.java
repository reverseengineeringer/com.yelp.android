package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.overlay.o;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@fv
public class da
  implements cy
{
  private final ib a;
  
  public da(Context paramContext, VersionInfoParcel paramVersionInfoParcel, j paramj)
  {
    a = s.f().a(paramContext, new AdSizeParcel(), false, false, paramj, paramVersionInfoParcel);
    a.a().setWillNotDraw(true);
  }
  
  private void a(Runnable paramRunnable)
  {
    if (v.a().b())
    {
      paramRunnable.run();
      return;
    }
    hd.a.post(paramRunnable);
  }
  
  public void a()
  {
    a.destroy();
  }
  
  public void a(com.google.android.gms.ads.internal.client.a parama, com.google.android.gms.ads.internal.overlay.f paramf, bv parambv, o paramo, boolean paramBoolean, cb paramcb, cd paramcd, com.google.android.gms.ads.internal.f paramf1, ep paramep)
  {
    a.l().a(parama, paramf, parambv, paramo, paramBoolean, paramcb, paramcd, new com.google.android.gms.ads.internal.f(false), paramep);
  }
  
  public void a(final cy.a parama)
  {
    a.l().a(new ic.a()
    {
      public void a(ib paramAnonymousib, boolean paramAnonymousBoolean)
      {
        parama.a();
      }
    });
  }
  
  public void a(String paramString)
  {
    a(new Runnable()
    {
      public void run()
      {
        da.a(da.this).loadData(a, "text/html", "UTF-8");
      }
    });
  }
  
  public void a(String paramString, bz parambz)
  {
    a.l().a(paramString, parambz);
  }
  
  public void a(final String paramString1, final String paramString2)
  {
    a(new Runnable()
    {
      public void run()
      {
        da.a(da.this).a(paramString1, paramString2);
      }
    });
  }
  
  public void a(final String paramString, final JSONObject paramJSONObject)
  {
    a(new Runnable()
    {
      public void run()
      {
        da.a(da.this).a(paramString, paramJSONObject);
      }
    });
  }
  
  public dd b()
  {
    return new de(this);
  }
  
  public void b(final String paramString)
  {
    a(new Runnable()
    {
      public void run()
      {
        da.a(da.this).loadUrl(paramString);
      }
    });
  }
  
  public void b(String paramString, bz parambz)
  {
    a.l().b(paramString, parambz);
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    a.b(paramString, paramJSONObject);
  }
  
  public void c(final String paramString)
  {
    a(new Runnable()
    {
      public void run()
      {
        da.a(da.this).loadData(paramString, "text/html", "UTF-8");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */