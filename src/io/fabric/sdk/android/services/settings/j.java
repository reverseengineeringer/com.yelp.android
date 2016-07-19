package io.fabric.sdk.android.services.settings;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.cu.b;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;
import org.json.JSONException;
import org.json.JSONObject;

class j
  implements r
{
  private final v a;
  private final u b;
  private final io.fabric.sdk.android.services.common.j c;
  private final g d;
  private final w e;
  private final h f;
  private final b g;
  
  public j(h paramh, v paramv, io.fabric.sdk.android.services.common.j paramj, u paramu, g paramg, w paramw)
  {
    f = paramh;
    a = paramv;
    c = paramj;
    b = paramu;
    d = paramg;
    e = paramw;
    g = new com.yelp.android.cu.c(f);
  }
  
  private void a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = paramJSONObject;
    if (!CommonUtils.e(f.B())) {
      localJSONObject = b.a(paramJSONObject);
    }
    io.fabric.sdk.android.c.h().a("Fabric", paramString + localJSONObject.toString());
  }
  
  private s b(SettingsCacheBehavior paramSettingsCacheBehavior)
  {
    Object localObject = null;
    s locals = null;
    try
    {
      if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(paramSettingsCacheBehavior))
      {
        JSONObject localJSONObject = d.a();
        if (localJSONObject == null) {
          break label160;
        }
        locals = b.a(c, localJSONObject);
        if (locals == null) {
          break label145;
        }
        a(localJSONObject, "Loaded cached settings: ");
        long l = c.a();
        if (!SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(paramSettingsCacheBehavior))
        {
          boolean bool = locals.a(l);
          if (bool) {
            break label110;
          }
        }
      }
    }
    catch (Exception localException1)
    {
      label110:
      paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
    }
    try
    {
      io.fabric.sdk.android.c.h().a("Fabric", "Returning cached settings.");
      return locals;
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        paramSettingsCacheBehavior = localException1;
        Exception localException2 = localException3;
      }
    }
    io.fabric.sdk.android.c.h().a("Fabric", "Cached settings have expired.");
    return null;
    io.fabric.sdk.android.c.h().e("Fabric", "Failed to get cached settings", localException1);
    return paramSettingsCacheBehavior;
    label145:
    io.fabric.sdk.android.c.h().e("Fabric", "Failed to transform cached settings data.", null);
    return null;
    label160:
    io.fabric.sdk.android.c.h().a("Fabric", "No cached settings data found.");
    return null;
  }
  
  public s a()
  {
    return a(SettingsCacheBehavior.USE_CACHE);
  }
  
  public s a(SettingsCacheBehavior paramSettingsCacheBehavior)
  {
    JSONObject localJSONObject = null;
    Object localObject = localJSONObject;
    try
    {
      if (!io.fabric.sdk.android.c.i())
      {
        localObject = localJSONObject;
        if (!d()) {
          localObject = b(paramSettingsCacheBehavior);
        }
      }
      paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
      if (localObject == null) {
        paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
      }
      io.fabric.sdk.android.c.h().e("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", localException1);
    }
    catch (Exception localException1)
    {
      try
      {
        localJSONObject = e.a(a);
        paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
        if (localJSONObject != null)
        {
          paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
          localObject = b.a(c, localJSONObject);
          paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
          d.a(g, localJSONObject);
          paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
          a(localJSONObject, "Loaded settings: ");
          paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
          a(b());
          paramSettingsCacheBehavior = (SettingsCacheBehavior)localObject;
        }
        localObject = paramSettingsCacheBehavior;
        if (paramSettingsCacheBehavior != null) {}
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      try
      {
        localObject = b(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        return (s)localObject;
      }
      catch (Exception localException3)
      {
        break label127;
      }
      localException1 = localException1;
      paramSettingsCacheBehavior = null;
    }
    label127:
    return paramSettingsCacheBehavior;
  }
  
  @SuppressLint({"CommitPrefEdits"})
  boolean a(String paramString)
  {
    SharedPreferences.Editor localEditor = g.b();
    localEditor.putString("existing_instance_identifier", paramString);
    return g.a(localEditor);
  }
  
  String b()
  {
    return CommonUtils.a(new String[] { CommonUtils.m(f.B()) });
  }
  
  String c()
  {
    return g.a().getString("existing_instance_identifier", "");
  }
  
  boolean d()
  {
    return !c().equals(b());
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */