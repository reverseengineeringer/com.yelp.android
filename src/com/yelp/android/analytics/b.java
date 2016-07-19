package com.yelp.android.analytics;

import android.text.TextUtils;
import com.yelp.android.analytics.iris.AnalyticCategory;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b
{
  private final long a = System.currentTimeMillis();
  private int b;
  private String c;
  private String d = AppData.b().f().Z();
  private AnalyticCategory e;
  
  public long a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(AnalyticCategory paramAnalyticCategory)
  {
    e = paramAnalyticCategory;
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public int b()
  {
    return b;
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("index", b);
    localJSONObject.put("session_id", c);
    localJSONObject.put("time", a);
    if (e != null) {
      localJSONObject.put("category", e.getCategoryName());
    }
    if (!TextUtils.isEmpty(d)) {
      localJSONObject.put("preinstalled_cohort", d);
    }
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */