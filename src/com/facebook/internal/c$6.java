package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class c$6
  implements c.a
{
  public void a(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    throw new IllegalArgumentException("Unexpected type from JSON");
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    paramObject = (String[])paramObject;
    int j = paramObject.length;
    int i = 0;
    while (i < j)
    {
      localJSONArray.put(paramObject[i]);
      i += 1;
    }
    paramJSONObject.put(paramString, localJSONArray);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.c.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */