package com.yelp.android.analytics;

import android.text.TextUtils;
import org.json.JSONObject;

public class m
  extends b
{
  private String a;
  
  public m(String paramString)
  {
    a = paramString;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("start", a());
    if (!TextUtils.isEmpty(a)) {
      localJSONObject.put("user_id", a);
    }
    localJSONObject.put("version", 2);
    return localJSONObject;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append("[MetricsSessionStart:");
    localStringBuilder.append("index=");
    localStringBuilder.append(b());
    localStringBuilder.append(", ");
    localStringBuilder.append("start=");
    localStringBuilder.append(a());
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */