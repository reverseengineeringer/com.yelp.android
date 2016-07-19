package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class i$5
  implements bz
{
  i$5(i parami) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramib = new JSONObject();
    try
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramib.put(str, paramMap.get(str));
      }
      paramib.put("id", i.a(a));
    }
    catch (JSONException paramib)
    {
      gz.b("Unable to dispatch sendMessageToNativeJs event", paramib);
      return;
    }
    i.b(a).b("sendMessageToNativeJs", paramib);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.i.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */