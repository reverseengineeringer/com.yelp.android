package com.yelp.android.bg;

import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  Map<String, String> a;
  
  public Map<String, String> a()
  {
    return new HashMap(a);
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((String)localEntry.getKey()).startsWith("&")) {
        localHashMap.put(((String)localEntry.getKey()).substring(1), localEntry.getValue());
      } else {
        localHashMap.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    return f.a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */