package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hu.c;

class l$2$1
  implements hu.c<dc>
{
  l$2$1(l.2 param2) {}
  
  public void a(dc paramdc)
  {
    try
    {
      paramdc.a("AFMA_getAdapterLessMediationAd", a.a);
      return;
    }
    catch (Exception paramdc)
    {
      gz.b("Error requesting an ad url", paramdc);
      l.c().b(a.b);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.l.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */