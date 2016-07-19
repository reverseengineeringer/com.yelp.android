package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

final class u$1
  implements Runnable
{
  u$1(String paramString1, Context paramContext, String paramString2) {}
  
  public void run()
  {
    JSONObject localJSONObject = u.f(a);
    if (localJSONObject != null)
    {
      u.a(a, localJSONObject);
      b.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).edit().putString(c, localJSONObject.toString()).apply();
    }
    u.a().set(false);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.u.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */