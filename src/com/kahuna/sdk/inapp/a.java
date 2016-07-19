package com.kahuna.sdk.inapp;

import android.util.Log;
import com.kahuna.sdk.l;
import com.kahuna.sdk.w;
import org.json.JSONObject;

public class a
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final int e;
  private final int f;
  
  a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramInt1;
    f = paramInt2;
  }
  
  public static a a(String paramString, JSONObject paramJSONObject)
  {
    Object localObject2 = null;
    String str2;
    Object localObject1;
    String str1;
    if (!w.a(paramJSONObject))
    {
      str2 = paramJSONObject.optString("text");
      if (!paramJSONObject.has("action")) {
        break label214;
      }
      localObject1 = paramJSONObject.optJSONObject("action");
      if (w.a((JSONObject)localObject1)) {
        break label214;
      }
      if (((JSONObject)localObject1).has("close"))
      {
        str1 = "close";
        localObject1 = null;
      }
    }
    for (;;)
    {
      Integer localInteger1 = Integer.valueOf(-16777216);
      if (paramJSONObject.has("color")) {
        localInteger1 = w.e(paramJSONObject.optJSONObject("color"));
      }
      if (paramJSONObject.has("bgcolor")) {}
      for (Integer localInteger2 = w.e(paramJSONObject.optJSONObject("bgcolor"));; localInteger2 = Integer.valueOf(-1))
      {
        if ((localInteger1 != null) && (localInteger2 != null) && (!w.a(str1))) {
          paramString = new a(paramString, str2, str1, (String)localObject1, localInteger1.intValue(), localInteger2.intValue());
        }
        do
        {
          return paramString;
          if (w.a(((JSONObject)localObject1).optString("url"))) {
            break label214;
          }
          str1 = "url";
          localObject1 = ((JSONObject)localObject1).optString("url");
          break;
          paramString = (String)localObject2;
        } while (!l.u());
        Log.e("Kahuna", "Invalid Rich In App Button object: " + paramJSONObject);
        return null;
      }
      label214:
      localObject1 = null;
      str1 = null;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int e()
  {
    return e;
  }
  
  public int f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */