package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class fq$1
  implements bz
{
  fq$1(fq paramfq, cy paramcy, fq.b paramb, hp paramhp) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    a.b("/nativeAdPreProcess", b.a);
    try
    {
      paramib = (String)paramMap.get("success");
      if (!TextUtils.isEmpty(paramib))
      {
        c.b(new JSONObject(paramib).getJSONArray("ads").getJSONObject(0));
        return;
      }
    }
    catch (JSONException paramib)
    {
      gz.b("Malformed native JSON response.", paramib);
      d.a(0);
      zzx.zza(d.b(), "Unable to set the ad state error!");
      c.b(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */