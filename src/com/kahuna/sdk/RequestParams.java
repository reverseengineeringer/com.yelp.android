package com.kahuna.sdk;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class RequestParams
  implements Serializable
{
  private static final long serialVersionUID = 7190546230862958724L;
  ConcurrentHashMap<String, String> paramsMap = new ConcurrentHashMap();
  
  public Map<String, String> getUrlParams()
  {
    return new ConcurrentHashMap(paramsMap);
  }
  
  public void put(String paramString1, String paramString2)
  {
    if ((!w.a(paramString1)) && (!w.a(paramString2))) {
      paramsMap.put(paramString1, paramString2);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramsMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.RequestParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */