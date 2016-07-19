package com.google.android.gms.internal;

class fx$2$1
  implements hu.c<dc>
{
  fx$2$1(fx.2 param2, au paramau) {}
  
  public void a(dc paramdc)
  {
    b.c.a(a, new String[] { "jsf" });
    b.c.b();
    paramdc.a("/invalidRequest", b.b.c);
    paramdc.a("/loadAdURL", b.b.d);
    try
    {
      paramdc.a("AFMA_buildAdURL", b.e);
      return;
    }
    catch (Exception paramdc)
    {
      gz.b("Error requesting an ad url", paramdc);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */