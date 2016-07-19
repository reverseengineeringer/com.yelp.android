package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;

final class by$2
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (paramMap == null)
    {
      gz.d("URL missing from httpTrack GMSG.");
      return;
    }
    new hk(paramib.getContext(), ob, paramMap).g();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */