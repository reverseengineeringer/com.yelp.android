package com.crashlytics.android.answers;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import com.yelp.android.ct.c;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

class p
  implements c<SessionEvent>
{
  public byte[] a(SessionEvent paramSessionEvent)
    throws IOException
  {
    return b(paramSessionEvent).toString().getBytes("UTF-8");
  }
  
  @TargetApi(9)
  public JSONObject b(SessionEvent paramSessionEvent)
    throws IOException
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      o localo = a;
      localJSONObject.put("appBundleId", a);
      localJSONObject.put("executionId", b);
      localJSONObject.put("installationId", c);
      localJSONObject.put("androidId", d);
      localJSONObject.put("advertisingId", e);
      localJSONObject.put("betaDeviceToken", f);
      localJSONObject.put("buildId", g);
      localJSONObject.put("osVersion", h);
      localJSONObject.put("deviceModel", i);
      localJSONObject.put("appVersionCode", j);
      localJSONObject.put("appVersionName", k);
      localJSONObject.put("timestamp", b);
      localJSONObject.put("type", c.toString());
      localJSONObject.put("details", new JSONObject(d));
      localJSONObject.put("customType", e);
      localJSONObject.put("customAttributes", new JSONObject(f));
      return localJSONObject;
    }
    catch (JSONException paramSessionEvent)
    {
      if (Build.VERSION.SDK_INT >= 9) {
        throw new IOException(paramSessionEvent.getMessage(), paramSessionEvent);
      }
      throw new IOException(paramSessionEvent.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */