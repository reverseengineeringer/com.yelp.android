package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import java.util.Map;

public class l$c
  implements bz
{
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramib = (String)paramMap.get("request_id");
    paramMap = (String)paramMap.get("errors");
    gz.d("Invalid request: " + paramMap);
    l.c().b(paramib);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.l.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */