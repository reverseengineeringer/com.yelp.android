package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

class cl$1
  implements Runnable
{
  cl$1(cl paramcl, String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  public void run()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "precacheProgress");
    localHashMap.put("src", a);
    localHashMap.put("cachedSrc", b);
    localHashMap.put("bytesLoaded", Integer.toString(c));
    localHashMap.put("totalBytes", Integer.toString(d));
    if (e) {}
    for (String str = "1";; str = "0")
    {
      localHashMap.put("cacheReady", str);
      cl.a(f, "onPrecacheEvent", localHashMap);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */