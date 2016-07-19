package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;

final class by$8
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    str = (String)paramMap.get("u");
    if (str == null)
    {
      gz.d("URL missing from click GMSG.");
      return;
    }
    paramMap = Uri.parse(str);
    try
    {
      Object localObject = paramib.n();
      if ((localObject == null) || (!((j)localObject).b(paramMap))) {
        break label120;
      }
      localObject = ((j)localObject).a(paramMap, paramib.getContext());
      paramMap = (Map<String, String>)localObject;
    }
    catch (zzao localzzao)
    {
      for (;;)
      {
        gz.d("Unable to append parameter to URL: " + str);
      }
    }
    paramMap = paramMap.toString();
    new hk(paramib.getContext(), ob, paramMap).g();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */