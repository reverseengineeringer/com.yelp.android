package com.yelp.android.analytics;

import org.json.JSONException;
import org.json.JSONObject;

public class j
  extends b
{
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("end", a());
    localJSONObject.put("reason", "background");
    return localJSONObject;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append("[MetricsSessionEnd:");
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
 * Qualified Name:     com.yelp.android.analytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */