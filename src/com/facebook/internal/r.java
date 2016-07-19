package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

class r
{
  private static final ConcurrentHashMap<String, JSONObject> a = new ConcurrentHashMap();
  
  public static JSONObject a(String paramString)
  {
    return (JSONObject)a.get(paramString);
  }
  
  public static void a(String paramString, JSONObject paramJSONObject)
  {
    a.put(paramString, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */