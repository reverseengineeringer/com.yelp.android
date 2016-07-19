package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.db;
import com.google.android.gms.internal.db.d;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hu.a;
import com.google.android.gms.internal.hu.c;
import org.json.JSONObject;

class l$2
  implements Runnable
{
  l$2(l paraml, JSONObject paramJSONObject, String paramString) {}
  
  public void run()
  {
    l.a(c, l.f().b());
    l.b(c).a(new hu.c()new hu.a
    {
      public void a(dc paramAnonymousdc)
      {
        try
        {
          paramAnonymousdc.a("AFMA_getAdapterLessMediationAd", a);
          return;
        }
        catch (Exception paramAnonymousdc)
        {
          gz.b("Error requesting an ad url", paramAnonymousdc);
          l.c().b(b);
        }
      }
    }, new hu.a()
    {
      public void a()
      {
        l.c().b(b);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.l.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */