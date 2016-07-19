package com.yelp.android.bg;

import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  Map<String, String> a = new HashMap();
  
  public Map<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put(paramString + (String)localEntry.getKey(), localEntry.getValue());
    }
    return localHashMap;
  }
  
  public String toString()
  {
    return f.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */