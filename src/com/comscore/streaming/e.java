package com.comscore.streaming;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
{
  public static void a(Map<String, String> paramMap, Set<String> paramSet)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!paramSet.contains(str)) {
        paramMap.remove(str);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */