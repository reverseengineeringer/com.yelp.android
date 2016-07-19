package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.services.common.j;
import org.json.JSONException;
import org.json.JSONObject;

class k
  implements u
{
  private long a(j paramj, long paramLong, JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject.has("expires_at")) {
      return paramJSONObject.getLong("expires_at");
    }
    return paramj.a() + 1000L * paramLong;
  }
  
  private e b(JSONObject paramJSONObject)
    throws JSONException
  {
    String str1 = paramJSONObject.getString("identifier");
    String str2 = paramJSONObject.getString("status");
    String str3 = paramJSONObject.getString("url");
    String str4 = paramJSONObject.getString("reports_url");
    boolean bool = paramJSONObject.optBoolean("update_required", false);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramJSONObject.has("icon"))
    {
      localObject1 = localObject2;
      if (paramJSONObject.getJSONObject("icon").has("hash")) {
        localObject1 = c(paramJSONObject.getJSONObject("icon"));
      }
    }
    return new e(str1, str2, str3, str4, bool, (c)localObject1);
  }
  
  private c c(JSONObject paramJSONObject)
    throws JSONException
  {
    return new c(paramJSONObject.getString("hash"), paramJSONObject.getInt("width"), paramJSONObject.getInt("height"));
  }
  
  private m d(JSONObject paramJSONObject)
  {
    return new m(paramJSONObject.optBoolean("prompt_enabled", false), paramJSONObject.optBoolean("collect_logged_exceptions", true), paramJSONObject.optBoolean("collect_reports", true), paramJSONObject.optBoolean("collect_analytics", false));
  }
  
  private b e(JSONObject paramJSONObject)
  {
    return new b(paramJSONObject.optString("url", "https://e.crashlytics.com/spi/v2/events"), paramJSONObject.optInt("flush_interval_secs", 600), paramJSONObject.optInt("max_byte_size_per_file", 8000), paramJSONObject.optInt("max_file_count_per_send", 1), paramJSONObject.optInt("max_pending_send_file_count", 100), paramJSONObject.optBoolean("track_custom_events", true), paramJSONObject.optInt("sampling_rate", 1));
  }
  
  private p f(JSONObject paramJSONObject)
    throws JSONException
  {
    return new p(paramJSONObject.optInt("log_buffer_size", 64000), paramJSONObject.optInt("max_chained_exception_depth", 8), paramJSONObject.optInt("max_custom_exception_events", 64), paramJSONObject.optInt("max_custom_key_value_pairs", 64), paramJSONObject.optInt("identifier_mask", 255), paramJSONObject.optBoolean("send_session_without_crash", false));
  }
  
  private o g(JSONObject paramJSONObject)
    throws JSONException
  {
    return new o(paramJSONObject.optString("title", "Send Crash Report?"), paramJSONObject.optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), paramJSONObject.optString("send_button_title", "Send"), paramJSONObject.optBoolean("show_cancel_button", true), paramJSONObject.optString("cancel_button_title", "Don't Send"), paramJSONObject.optBoolean("show_always_send_button", true), paramJSONObject.optString("always_send_button_title", "Always Send"));
  }
  
  private f h(JSONObject paramJSONObject)
    throws JSONException
  {
    return new f(paramJSONObject.optString("update_endpoint", t.a), paramJSONObject.optInt("update_suspend_duration", 3600));
  }
  
  public s a(j paramj, JSONObject paramJSONObject)
    throws JSONException
  {
    int i = paramJSONObject.optInt("settings_version", 0);
    int j = paramJSONObject.optInt("cache_duration", 3600);
    e locale = b(paramJSONObject.getJSONObject("app"));
    p localp = f(paramJSONObject.getJSONObject("session"));
    o localo = g(paramJSONObject.getJSONObject("prompt"));
    m localm = d(paramJSONObject.getJSONObject("features"));
    b localb = e(paramJSONObject.getJSONObject("analytics"));
    f localf = h(paramJSONObject.getJSONObject("beta"));
    return new s(a(paramj, j, paramJSONObject), locale, localp, localo, localm, localb, localf, i, j);
  }
  
  public JSONObject a(JSONObject paramJSONObject)
    throws JSONException
  {
    paramJSONObject = new JSONObject(paramJSONObject.toString());
    paramJSONObject.getJSONObject("features").remove("collect_analytics");
    paramJSONObject.remove("analytics");
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */