package com.yelp.android.analytics;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class g
  extends b
{
  private final com.yelp.android.analytics.iris.b a;
  private final String b;
  private Map<String, Object> c;
  
  public g(com.yelp.android.analytics.iris.b paramb, String paramString1, String paramString2)
  {
    this(paramb, paramString1, b(paramString2));
  }
  
  public g(com.yelp.android.analytics.iris.b paramb, String paramString, Map<String, Object> paramMap)
  {
    a(paramb.getCategory());
    a = paramb;
    b = paramString;
    c = paramMap;
  }
  
  public static Map<String, Object> b(String paramString)
  {
    if (paramString != null) {
      return Collections.singletonMap("id", paramString);
    }
    return Collections.emptyMap();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    c = paramMap;
  }
  
  public JSONObject c()
  {
    JSONObject localJSONObject1 = super.c();
    localJSONObject1.put("request_id", b);
    localJSONObject1.put("iri", a.getIriName());
    if ((c != null) && (!c.isEmpty()))
    {
      JSONObject localJSONObject2 = new JSONObject();
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localJSONObject2.put((String)localEntry.getKey(), localEntry.getValue());
      }
      localJSONObject1.put("params", localJSONObject2);
    }
    return localJSONObject1;
  }
  
  public com.yelp.android.analytics.iris.b d()
  {
    return a;
  }
  
  public Map<String, Object> e()
  {
    return c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append("[MetricsIri:");
    localStringBuilder.append("index=");
    localStringBuilder.append(b());
    localStringBuilder.append(", ");
    localStringBuilder.append("request_id=");
    localStringBuilder.append(b);
    localStringBuilder.append(", ");
    localStringBuilder.append("iri=");
    localStringBuilder.append(a);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */