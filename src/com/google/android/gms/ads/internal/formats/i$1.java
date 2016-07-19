package com.google.android.gms.ads.internal.formats;

import android.text.TextUtils;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.ic.a;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class i$1
  implements bz
{
  i$1(i parami) {}
  
  public void a(ib paramib, final Map<String, String> paramMap)
  {
    i.c(a).l().a(new ic.a()
    {
      public void a(ib paramAnonymousib, boolean paramAnonymousBoolean)
      {
        i.a(a, (String)paramMap.get("id"));
        paramAnonymousib = new JSONObject();
        try
        {
          paramAnonymousib.put("messageType", "htmlLoaded");
          paramAnonymousib.put("id", i.a(a));
          i.b(a).b("sendMessageToNativeJs", paramAnonymousib);
          return;
        }
        catch (JSONException paramAnonymousib)
        {
          gz.b("Unable to dispatch sendMessageToNativeJsevent", paramAnonymousib);
        }
      }
    });
    paramib = (String)paramMap.get("overlayHtml");
    paramMap = (String)paramMap.get("baseUrl");
    if (TextUtils.isEmpty(paramMap))
    {
      i.c(a).loadData(paramib, "text/html", "UTF-8");
      return;
    }
    i.c(a).loadDataWithBaseURL(paramMap, paramib, "text/html", "UTF-8", null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */