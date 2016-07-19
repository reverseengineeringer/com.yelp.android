package com.kahuna.sdk.inapp;

import android.graphics.Bitmap;
import com.kahuna.sdk.w;
import org.json.JSONObject;

public class b
{
  private final String a;
  private Bitmap b;
  
  b(String paramString)
  {
    a = paramString;
  }
  
  public static b a(JSONObject paramJSONObject)
  {
    if (!w.a(paramJSONObject))
    {
      paramJSONObject = paramJSONObject.optString("url");
      if (!w.a(paramJSONObject)) {
        return new b(paramJSONObject);
      }
    }
    return null;
  }
  
  public String a()
  {
    return a;
  }
  
  void a(Bitmap paramBitmap)
  {
    b = paramBitmap;
  }
  
  Bitmap b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */