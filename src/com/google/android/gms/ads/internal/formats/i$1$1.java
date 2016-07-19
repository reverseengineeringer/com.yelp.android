package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic.a;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class i$1$1
  implements ic.a
{
  i$1$1(i.1 param1, Map paramMap) {}
  
  public void a(ib paramib, boolean paramBoolean)
  {
    i.a(b.a, (String)a.get("id"));
    paramib = new JSONObject();
    try
    {
      paramib.put("messageType", "htmlLoaded");
      paramib.put("id", i.a(b.a));
      i.b(b.a).b("sendMessageToNativeJs", paramib);
      return;
    }
    catch (JSONException paramib)
    {
      gz.b("Unable to dispatch sendMessageToNativeJsevent", paramib);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.i.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */