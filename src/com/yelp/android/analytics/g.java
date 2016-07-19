package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.a;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class g
  extends b
{
  private final a a;
  private final String b;
  private Map<String, Object> c;
  
  public g(a parama, String paramString1, String paramString2)
  {
    this(parama, paramString1, b(paramString2));
  }
  
  public g(a parama, String paramString, Map<String, Object> paramMap)
  {
    a(parama.getCategory());
    a = parama;
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
    throws JSONException
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
  
  public a d()
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
  
  public static class a
  {
    TreeMap<String, String> a = new TreeMap();
    boolean b = false;
    private a c = null;
    private String d;
    
    public a a(a parama)
    {
      c = parama;
      return this;
    }
    
    public a a(String paramString)
    {
      d = paramString;
      return this;
    }
    
    public a a(String paramString1, String paramString2)
    {
      a.put(paramString1, paramString2);
      return this;
    }
    
    public final g a()
    {
      if (b) {
        throw new IllegalStateException("Reusing Builder ... bad");
      }
      b = true;
      return new g(c, d, new TreeMap(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */