package com.yelp.android.analytics;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class k
  extends b
{
  private String a;
  
  public k(String paramString)
  {
    a = paramString;
  }
  
  public JSONObject c()
    throws JSONException
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
 * Qualified Name:     com.yelp.android.analytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */