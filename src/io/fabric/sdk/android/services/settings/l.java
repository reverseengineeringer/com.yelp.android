package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class l
  extends a
  implements w
{
  public l(h paramh, String paramString1, String paramString2, io.fabric.sdk.android.services.network.c paramc)
  {
    this(paramh, paramString1, paramString2, paramc, HttpMethod.GET);
  }
  
  l(h paramh, String paramString1, String paramString2, io.fabric.sdk.android.services.network.c paramc, HttpMethod paramHttpMethod)
  {
    super(paramh, paramString1, paramString2, paramc, paramHttpMethod);
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, v paramv)
  {
    return paramHttpRequest.a("X-CRASHLYTICS-API-KEY", a).a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-D", b).a("X-CRASHLYTICS-API-CLIENT-VERSION", a.a()).a("Accept", "application/json");
  }
  
  private JSONObject a(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      return localJSONObject;
    }
    catch (Exception localException)
    {
      io.fabric.sdk.android.c.h().a("Fabric", "Failed to parse settings JSON from " + a(), localException);
      io.fabric.sdk.android.c.h().a("Fabric", "Settings response " + paramString);
    }
    return null;
  }
  
  private Map<String, String> b(v paramv)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("build_version", e);
    localHashMap.put("display_version", d);
    localHashMap.put("source", Integer.toString(f));
    if (g != null) {
      localHashMap.put("icon_hash", g);
    }
    paramv = c;
    if (!CommonUtils.c(paramv)) {
      localHashMap.put("instance", paramv);
    }
    return localHashMap;
  }
  
  JSONObject a(HttpRequest paramHttpRequest)
  {
    int i = paramHttpRequest.b();
    io.fabric.sdk.android.c.h().a("Fabric", "Settings result was: " + i);
    if (a(i)) {
      return a(paramHttpRequest.e());
    }
    io.fabric.sdk.android.c.h().e("Fabric", "Failed to retrieve settings from " + a());
    return null;
  }
  
  public JSONObject a(v paramv)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      Map localMap = b(paramv);
      localObject1 = localObject2;
      localObject2 = a(localMap);
      localObject1 = localObject2;
      paramv = a((HttpRequest)localObject2, paramv);
      localObject1 = paramv;
      io.fabric.sdk.android.c.h().a("Fabric", "Requesting settings from " + a());
      localObject1 = paramv;
      io.fabric.sdk.android.c.h().a("Fabric", "Settings query params were: " + localMap);
      localObject1 = paramv;
      localObject2 = a(paramv);
      if (paramv != null) {
        io.fabric.sdk.android.c.h().a("Fabric", "Settings request ID: " + paramv.b("X-REQUEST-ID"));
      }
      return (JSONObject)localObject2;
    }
    finally
    {
      if (localObject1 != null) {
        io.fabric.sdk.android.c.h().a("Fabric", "Settings request ID: " + ((HttpRequest)localObject1).b("X-REQUEST-ID"));
      }
    }
  }
  
  boolean a(int paramInt)
  {
    return (paramInt == 200) || (paramInt == 201) || (paramInt == 202) || (paramInt == 203);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */