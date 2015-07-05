package com.crashlytics.android.internal;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class v
{
  private static JSONObject a(Map<String, String> paramMap)
  {
    JSONObject localJSONObject = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
    }
    return localJSONObject;
  }
  
  public final byte[] a(u paramu)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("appBundleId", a);
      localJSONObject.put("executionId", b);
      localJSONObject.put("installationId", c);
      localJSONObject.put("androidId", d);
      localJSONObject.put("osVersion", e);
      localJSONObject.put("deviceModel", f);
      localJSONObject.put("appVersionCode", g);
      localJSONObject.put("appVersionName", h);
      localJSONObject.put("timestamp", i);
      localJSONObject.put("type", j.toString());
      localJSONObject.put("details", a(k));
      paramu = localJSONObject.toString().getBytes("UTF-8");
      return paramu;
    }
    catch (JSONException paramu)
    {
      throw new IOException(paramu.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */