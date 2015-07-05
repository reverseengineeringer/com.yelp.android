package com.crashlytics.android.internal;

import org.json.JSONObject;

public class ba
{
  public az a(bi parambi, JSONObject paramJSONObject)
  {
    int i = paramJSONObject.optInt("settings_version", 0);
    int j = paramJSONObject.optInt("cache_duration", 3600);
    JSONObject localJSONObject = paramJSONObject.getJSONObject("app");
    Object localObject3 = localJSONObject.getString("identifier");
    Object localObject4 = localJSONObject.getString("status");
    Object localObject5 = localJSONObject.getString("url");
    String str = localJSONObject.getString("reports_url");
    boolean bool = localJSONObject.optBoolean("update_required", false);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (localJSONObject.has("icon"))
    {
      localObject1 = localObject2;
      if (localJSONObject.getJSONObject("icon").has("hash"))
      {
        localObject1 = localJSONObject.getJSONObject("icon");
        localObject1 = new al(((JSONObject)localObject1).getString("hash"), ((JSONObject)localObject1).getInt("width"), ((JSONObject)localObject1).getInt("height"));
      }
    }
    localObject1 = new am((String)localObject3, (String)localObject4, (String)localObject5, str, bool, (al)localObject1);
    localObject2 = paramJSONObject.getJSONObject("session");
    localObject2 = new as(((JSONObject)localObject2).optInt("log_buffer_size", 64000), ((JSONObject)localObject2).optInt("max_chained_exception_depth", 8), ((JSONObject)localObject2).optInt("max_custom_exception_events", 64), ((JSONObject)localObject2).optInt("max_custom_key_value_pairs", 64), ((JSONObject)localObject2).optInt("identifier_mask", 255), ((JSONObject)localObject2).optBoolean("send_session_without_crash", false));
    localObject3 = paramJSONObject.getJSONObject("prompt");
    localObject3 = new ar(((JSONObject)localObject3).optString("title", "Send Crash Report?"), ((JSONObject)localObject3).optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), ((JSONObject)localObject3).optString("send_button_title", "Send"), ((JSONObject)localObject3).optBoolean("show_cancel_button", true), ((JSONObject)localObject3).optString("cancel_button_title", "Don't Send"), ((JSONObject)localObject3).optBoolean("show_always_send_button", true), ((JSONObject)localObject3).optString("always_send_button_title", "Always Send"));
    localObject4 = paramJSONObject.getJSONObject("features");
    localObject4 = new aq(((JSONObject)localObject4).optBoolean("prompt_enabled", false), ((JSONObject)localObject4).optBoolean("collect_logged_exceptions", true), ((JSONObject)localObject4).optBoolean("collect_reports", true), ((JSONObject)localObject4).optBoolean("collect_analytics", false));
    localObject5 = paramJSONObject.getJSONObject("analytics");
    localObject5 = new ak(((JSONObject)localObject5).optString("url", "https://e.crashlytics.com/spi/v2/events"), ((JSONObject)localObject5).optInt("flush_interval_secs", 600), ((JSONObject)localObject5).optInt("max_byte_size_per_file", 8000), ((JSONObject)localObject5).optInt("max_file_count_per_send", 1), ((JSONObject)localObject5).optInt("max_pending_send_file_count", 100));
    long l = j;
    if (paramJSONObject.has("expires_at")) {}
    for (l = paramJSONObject.getLong("expires_at");; l = parambi.a() + l * 1000L) {
      return new az(l, (am)localObject1, (as)localObject2, (ar)localObject3, (aq)localObject4, (ak)localObject5, i, j);
    }
  }
  
  public JSONObject a(JSONObject paramJSONObject)
  {
    paramJSONObject = new JSONObject(paramJSONObject.toString());
    paramJSONObject.getJSONObject("features").remove("collect_analytics");
    paramJSONObject.remove("analytics");
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */