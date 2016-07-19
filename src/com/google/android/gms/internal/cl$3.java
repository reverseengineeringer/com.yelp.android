package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class cl$3
  implements Runnable
{
  cl$3(cl paramcl, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public void run()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "precacheCanceled");
    localHashMap.put("src", a);
    if (!TextUtils.isEmpty(b)) {
      localHashMap.put("cachedSrc", b);
    }
    localHashMap.put("type", cl.a(e, c));
    localHashMap.put("reason", c);
    if (!TextUtils.isEmpty(d)) {
      localHashMap.put("message", d);
    }
    cl.a(e, "onPrecacheEvent", localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cl.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */