package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.a;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class l
  extends g
{
  private final long a;
  
  public l(a parama, long paramLong, Map<String, Object> paramMap)
  {
    super(parama, null, paramMap);
    a = paramLong;
  }
  
  public JSONObject c()
    throws JSONException
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
 * Qualified Name:     com.yelp.android.analytics.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */