package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.AnalyticCategory;
import org.json.JSONObject;

public class p
  extends b
{
  private final String a;
  private final String b;
  private final long c;
  private final long d;
  private final long e;
  private final long f;
  private final long g;
  
  public p(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    a = paramString1;
    b = paramString2;
    a(AnalyticCategory.REQUEST);
    c = paramLong3;
    d = paramLong1;
    e = paramLong2;
    f = paramLong4;
    g = paramLong5;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject = super.c();
    localJSONObject.put("time", a());
    localJSONObject.put("request_id", b);
    localJSONObject.put("path", a);
    localJSONObject.put("interval_data", c);
    if (d > 0L) {
      localJSONObject.put("interval_request", d);
    }
    if (e > 0L) {
      localJSONObject.put("interval_response", e);
    }
    if (f > 0L) {
      localJSONObject.put("interval_parse", f);
    }
    if (g > 0L) {
      localJSONObject.put("response_content_length", g);
    }
    return localJSONObject;
  }
  
  public String toString()
  {
    return String.format("[MetricsWebRequest:index=%s, path=%s, request_id=%s, interval_data=%s]", new Object[] { Integer.valueOf(b()), a, b, Long.valueOf(e - d) });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */