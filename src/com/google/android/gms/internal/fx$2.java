package com.google.android.gms.internal;

final class fx$2
  implements Runnable
{
  fx$2(db paramdb, fz paramfz, ax paramax, au paramau, String paramString) {}
  
  public void run()
  {
    db.d locald = a.b();
    b.a(locald);
    c.a(d, new String[] { "rwc" });
    locald.a(new hu.c()new hu.a
    {
      public void a(dc paramAnonymousdc)
      {
        c.a(a, new String[] { "jsf" });
        c.b();
        paramAnonymousdc.a("/invalidRequest", b.c);
        paramAnonymousdc.a("/loadAdURL", b.d);
        try
        {
          paramAnonymousdc.a("AFMA_buildAdURL", e);
          return;
        }
        catch (Exception paramAnonymousdc)
        {
          gz.b("Error requesting an ad url", paramAnonymousdc);
        }
      }
    }, new hu.a()
    {
      public void a() {}
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */