package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

final class c$1
  implements c.a
{
  public void a(Bundle paramBundle, String paramString, Object paramObject)
    throws JSONException
  {
    paramBundle.putBoolean(paramString, ((Boolean)paramObject).booleanValue());
  }
  
  public void a(JSONObject paramJSONObject, String paramString, Object paramObject)
    throws JSONException
  {
    paramJSONObject.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */