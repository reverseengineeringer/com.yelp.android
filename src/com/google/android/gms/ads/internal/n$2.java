package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic.a;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class n$2
  implements ic.a
{
  n$2(e parame, String paramString, ib paramib) {}
  
  public void a(ib paramib, boolean paramBoolean)
  {
    try
    {
      paramib = new JSONObject();
      paramib.put("headline", a.a());
      paramib.put("body", a.c());
      paramib.put("call_to_action", a.e());
      paramib.put("advertiser", a.f());
      paramib.put("logo", n.a(a.d()));
      localObject1 = new JSONArray();
      Object localObject2 = a.b();
      if (localObject2 != null)
      {
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((JSONArray)localObject1).put(n.a(n.a(((Iterator)localObject2).next())));
        }
      }
      paramib.put("images", localObject1);
    }
    catch (JSONException paramib)
    {
      gz.d("Exception occurred when loading assets", paramib);
      return;
    }
    paramib.put("extras", n.a(a.h(), b));
    Object localObject1 = new JSONObject();
    ((JSONObject)localObject1).put("assets", paramib);
    ((JSONObject)localObject1).put("template_id", "1");
    c.a("google.afma.nativeExpressAds.loadAssets", (JSONObject)localObject1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */