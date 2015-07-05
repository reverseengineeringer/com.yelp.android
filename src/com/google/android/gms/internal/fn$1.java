package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class fn$1
  implements cd
{
  fn$1(fn paramfn, ah paramah, gj paramgj) {}
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    up.g("/nativeAdPreProcess");
    try
    {
      paramgu = (String)paramMap.get("success");
      if (!TextUtils.isEmpty(paramgu))
      {
        uq.a(new JSONObject(paramgu).getJSONArray("ads").getJSONObject(0));
        return;
      }
    }
    catch (JSONException paramgu)
    {
      gr.b("Malformed native JSON response.", paramgu);
      ur.t(0);
      jx.a(ur.cO(), "Unable to set the ad state error!");
      uq.a(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */