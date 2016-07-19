package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public final class di
{
  public final String a;
  public final String b;
  public final List<String> c;
  public final String d;
  public final String e;
  public final List<String> f;
  public final List<String> g;
  public final String h;
  public final List<String> i;
  public final List<String> j;
  public final String k;
  public final String l;
  public final String m;
  public final List<String> n;
  public final String o;
  
  public di(JSONObject paramJSONObject)
    throws JSONException
  {
    b = paramJSONObject.getString("id");
    Object localObject1 = paramJSONObject.getJSONArray("adapters");
    Object localObject3 = new ArrayList(((JSONArray)localObject1).length());
    int i1 = 0;
    while (i1 < ((JSONArray)localObject1).length())
    {
      ((List)localObject3).add(((JSONArray)localObject1).getString(i1));
      i1 += 1;
    }
    c = Collections.unmodifiableList((List)localObject3);
    d = paramJSONObject.optString("allocation_id", null);
    f = s.r().a(paramJSONObject, "clickurl");
    g = s.r().a(paramJSONObject, "imp_urls");
    i = s.r().a(paramJSONObject, "video_start_urls");
    j = s.r().a(paramJSONObject, "video_complete_urls");
    localObject1 = paramJSONObject.optJSONObject("ad");
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).toString();
      a = ((String)localObject1);
      localObject3 = paramJSONObject.optJSONObject("data");
      if (localObject3 == null) {
        break label288;
      }
      localObject1 = ((JSONObject)localObject3).toString();
      label179:
      h = ((String)localObject1);
      if (localObject3 == null) {
        break label293;
      }
      localObject1 = ((JSONObject)localObject3).optString("class_name");
      label197:
      e = ((String)localObject1);
      k = paramJSONObject.optString("html_template", null);
      l = paramJSONObject.optString("ad_base_url", null);
      localObject1 = paramJSONObject.optJSONObject("assets");
      if (localObject1 == null) {
        break label298;
      }
    }
    label288:
    label293:
    label298:
    for (localObject1 = ((JSONObject)localObject1).toString();; localObject1 = null)
    {
      m = ((String)localObject1);
      n = s.r().a(paramJSONObject, "template_ids");
      localObject1 = paramJSONObject.optJSONObject("ad_loader_options");
      paramJSONObject = (JSONObject)localObject2;
      if (localObject1 != null) {
        paramJSONObject = ((JSONObject)localObject1).toString();
      }
      o = paramJSONObject;
      return;
      localObject1 = null;
      break;
      localObject1 = null;
      break label179;
      localObject1 = null;
      break label197;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */