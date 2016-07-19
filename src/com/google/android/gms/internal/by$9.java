package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.overlay.zzd;
import java.util.Map;

final class by$9
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramMap = paramib.i();
    if (paramMap != null)
    {
      paramMap.a();
      return;
    }
    paramib = paramib.j();
    if (paramib != null)
    {
      paramib.a();
      return;
    }
    gz.d("A GMSG tried to close something that wasn't an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */