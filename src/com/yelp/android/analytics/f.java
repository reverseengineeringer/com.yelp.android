package com.yelp.android.analytics;

import android.content.Context;
import com.yelp.android.analytics.iris.AnalyticCategory;
import com.yelp.android.appdata.BaseYelpApplication;
import org.json.JSONObject;

class f
  extends b
{
  private final String a;
  private final String b;
  
  public f(Context paramContext, String paramString)
  {
    a(AnalyticCategory.ERROR);
    a = BaseYelpApplication.c(paramContext);
    b = paramString;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("type", "bundle_image_not_found");
    localJSONObject.put("app_version", a);
    localJSONObject.put("description", "bundle://" + b);
    localJSONObject.put("is_crash", false);
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */