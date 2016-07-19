package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

class cl$2
  implements Runnable
{
  cl$2(cl paramcl, String paramString1, String paramString2, int paramInt) {}
  
  public void run()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "precacheComplete");
    localHashMap.put("src", a);
    localHashMap.put("cachedSrc", b);
    localHashMap.put("totalBytes", Integer.toString(c));
    cl.a(d, "onPrecacheEvent", localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */