package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.internal.zzb;
import java.util.Map;

@fv
public class cm
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    ck localck = s.t();
    if (paramMap.containsKey("abort"))
    {
      if (!localck.a(paramib)) {
        gz.d("Precache abort but no preload task running.");
      }
      return;
    }
    String str = (String)paramMap.get("src");
    if (str == null)
    {
      gz.d("Precache video action is missing the src parameter.");
      return;
    }
    try
    {
      i = Integer.parseInt((String)paramMap.get("player"));
      if (paramMap.containsKey("mimetype"))
      {
        paramMap = (String)paramMap.get("mimetype");
        if (!localck.b(paramib)) {
          break label121;
        }
        gz.d("Precache task already running.");
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      int i;
      for (;;)
      {
        i = 0;
        continue;
        paramMap = "";
      }
      label121:
      zzb.zzv(paramib.h());
      new cj(paramib, ha.a(paramib, i, paramMap), str).g();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */