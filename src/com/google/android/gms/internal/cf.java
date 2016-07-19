package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.f;
import java.util.Map;

@fv
public class cf
  implements bz
{
  static final Map<String, Integer> a = ju.a("resize", Integer.valueOf(1), "playVideo", Integer.valueOf(2), "storePicture", Integer.valueOf(3), "createCalendarEvent", Integer.valueOf(4), "setOrientationProperties", Integer.valueOf(5), "closeResizedAd", Integer.valueOf(6));
  private final f b;
  private final ej c;
  
  public cf(f paramf, ej paramej)
  {
    b = paramf;
    c = paramej;
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    int i = ((Integer)a.get(str)).intValue();
    if ((i != 5) && (b != null) && (!b.b()))
    {
      b.a(null);
      return;
    }
    switch (i)
    {
    case 2: 
    default: 
      gz.c("Unknown MRAID command called.");
      return;
    case 1: 
      c.a(paramMap);
      return;
    case 4: 
      new ei(paramib, paramMap).a();
      return;
    case 3: 
      new el(paramib, paramMap).a();
      return;
    case 5: 
      new ek(paramib, paramMap).a();
      return;
    }
    c.a(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */