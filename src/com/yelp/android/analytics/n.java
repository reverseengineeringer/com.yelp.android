package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.b;
import java.util.Map;
import org.json.JSONObject;

public class n
  extends g
{
  private final long a;
  
  public n(b paramb, long paramLong, Map<String, Object> paramMap)
  {
    super(paramb, null, paramMap);
    a = paramLong;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject = super.c();
    if (a > 0L) {
      localJSONObject.put("interval", a);
    }
    return localJSONObject;
  }
  
  public long f()
  {
    return a;
  }
  
  public String toString()
  {
    return "[MetricsTiming:" + "index=" + b() + ", " + "iri=" + d().getIriName() + ", " + "interval=" + a + "]";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */