package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.s;
import java.util.Map;

@fv
public class ek
{
  private final ib a;
  private final boolean b;
  private final String c;
  
  public ek(ib paramib, Map<String, String> paramMap)
  {
    a = paramib;
    c = ((String)paramMap.get("forceOrientation"));
    if (paramMap.containsKey("allowOrientationChange"))
    {
      b = Boolean.parseBoolean((String)paramMap.get("allowOrientationChange"));
      return;
    }
    b = true;
  }
  
  public void a()
  {
    if (a == null)
    {
      gz.d("AdWebView is null");
      return;
    }
    int i;
    if ("portrait".equalsIgnoreCase(c)) {
      i = s.g().b();
    }
    for (;;)
    {
      a.b(i);
      return;
      if ("landscape".equalsIgnoreCase(c)) {
        i = s.g().a();
      } else if (b) {
        i = -1;
      } else {
        i = s.g().c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */