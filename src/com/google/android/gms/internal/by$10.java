package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.overlay.l;
import com.google.android.gms.ads.internal.overlay.zzd;
import java.util.Map;
import org.json.JSONObject;

final class by$10
  implements bz
{
  private void a(ib paramib)
  {
    gz.c("Received support message, responding.");
    boolean bool2 = false;
    Object localObject = paramib.h();
    boolean bool1 = bool2;
    if (localObject != null)
    {
      localObject = c;
      bool1 = bool2;
      if (localObject != null) {
        bool1 = ((l)localObject).a();
      }
    }
    localObject = new JSONObject();
    try
    {
      ((JSONObject)localObject).put("event", "checkSupport");
      ((JSONObject)localObject).put("supports", bool1);
      paramib.b("appStreaming", (JSONObject)localObject);
      return;
    }
    catch (Throwable paramib) {}
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    if ("checkSupport".equals(paramMap.get("action"))) {
      a(paramib);
    }
    zzd localzzd;
    do
    {
      return;
      localzzd = paramib.i();
    } while (localzzd == null);
    localzzd.a(paramib, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */