package com.yelp.android.appdata.experiment;

import com.yelp.android.util.StringUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class j
{
  private static i a;
  
  public static i a()
  {
    if (a == null) {
      throw new IllegalStateException("Experiment.DATA should have been initialized by AppData!");
    }
    return a;
  }
  
  public static Map<String, String> a(Map<String, String> paramMap, List<? extends a<? extends Enum<?>>> paramList)
  {
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      a locala = (a)paramList.next();
      if (paramMap.containsKey(locala.c())) {
        localHashMap.put(locala.c(), paramMap.get(locala.c()));
      }
    }
    return localHashMap;
  }
  
  public static void a(i parami)
  {
    a = parami;
  }
  
  public static void a(Map<String, Object> paramMap, String paramString1, String paramString2)
  {
    paramString1 = a().a(paramString1);
    if (!StringUtils.d(paramString1)) {
      paramMap.put(paramString2, paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */