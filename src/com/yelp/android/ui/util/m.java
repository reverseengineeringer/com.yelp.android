package com.yelp.android.ui.util;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class m
{
  public static Bundle a(Map<String, ? extends Parcelable> paramMap)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localBundle.putParcelable(str, (Parcelable)paramMap.get(str));
    }
    return localBundle;
  }
  
  public static <T extends Parcelable> Map<String, T> a(Bundle paramBundle, Class<T> paramClass)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramClass.cast(paramBundle.getParcelable(str)));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */