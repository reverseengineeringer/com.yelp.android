package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.AnalyticCategory;
import org.json.JSONException;
import org.json.JSONObject;

public class m
  extends b
{
  private final String a;
  private final String b;
  private final long c;
  private final long d;
  private final long e;
  private final long f;
  private final long g;
  
  public m(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    a = paramString1;
    b = paramString2;
    a(AnalyticCategory.TIMING);
    c = paramLong3;
    d = paramLong1;
    e = paramLong2;
    f = paramLong4;
    g = paramLong5;
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject1 = super.c();
    localJSONObject1.put("time", a());
    localJSONObject1.put("request_id", b);
    localJSONObject1.put("iri", "request");
    localJSONObject1.put("interval", d + f);
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.put("interval_data", c);
    if (d > 0L) {
      localJSONObject2.put("interval_request", d);
    }
    if (e > 0L) {
      localJSONObject2.put("interval_response", e);
    }
    if (f > 0L) {
      localJSONObject2.put("interval_parse", f);
    }
    if (g > 0L) {
      localJSONObject2.put("response_content_length", g);
    }
    localJSONObject2.put("path", a);
    localJSONObject1.put("params", localJSONObject2);
    return localJSONObject1;
  }
  
  public String toString()
  {
    return String.format("[MetricsTimingRequest:index=%s, path=%s, request_id=%s, interval=%s]", new Object[] { Integer.valueOf(b()), a, b, Long.valueOf(d) });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */