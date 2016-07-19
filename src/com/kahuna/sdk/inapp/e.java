package com.kahuna.sdk.inapp;

import android.util.Log;
import com.kahuna.sdk.l;
import com.kahuna.sdk.w;
import org.json.JSONObject;

public class e
{
  private final String a;
  private final int b;
  
  e(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
  }
  
  public static e a(JSONObject paramJSONObject)
  {
    String str;
    if (!w.a(paramJSONObject))
    {
      str = paramJSONObject.optString("text");
      if (!w.a(str)) {
        if (!paramJSONObject.has("color")) {
          break label90;
        }
      }
    }
    label90:
    for (Integer localInteger = w.e(paramJSONObject.optJSONObject("color"));; localInteger = Integer.valueOf(-16777216))
    {
      if (localInteger != null) {
        return new e(str, localInteger.intValue());
      }
      if (l.u()) {
        Log.e("Kahuna", "Invalid Rich In App Text object: " + paramJSONObject);
      }
      return null;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */