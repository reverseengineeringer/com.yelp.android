package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

final class c$4
  implements c.a
{
  public void a(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    paramBundle.putDouble(paramString, ((Double)paramObject).doubleValue());
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.c.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */