package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.AnalyticCategory;
import org.json.JSONException;
import org.json.JSONObject;

public class o
  extends b
{
  private final String a;
  private final String b;
  
  public o(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
    a(AnalyticCategory.REQUEST);
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("time", a());
    localJSONObject.put("request_id", b);
    localJSONObject.put("path", a);
    return localJSONObject;
  }
  
  public String toString()
  {
    return String.format("[MetricsWebRequest:index=%s, path=%s, request_id=%s]", new Object[] { Integer.valueOf(b()), a, b });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */