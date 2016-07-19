package com.yelp.android.cx;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class m
{
  private static final Collection a(Object paramObject)
  {
    int j = 0;
    int k = 0;
    int m = 0;
    int i = 0;
    Object localObject;
    ArrayList localArrayList;
    if ((paramObject instanceof int[]))
    {
      localObject = (int[])paramObject;
      localArrayList = new ArrayList();
      j = localObject.length;
      for (;;)
      {
        paramObject = localArrayList;
        if (i >= j) {
          break;
        }
        localArrayList.add(Integer.valueOf(localObject[i]));
        i += 1;
      }
    }
    if ((paramObject instanceof long[]))
    {
      localObject = (long[])paramObject;
      localArrayList = new ArrayList();
      k = localObject.length;
      i = j;
      for (;;)
      {
        paramObject = localArrayList;
        if (i >= k) {
          break;
        }
        localArrayList.add(Long.valueOf(localObject[i]));
        i += 1;
      }
    }
    if ((paramObject instanceof double[]))
    {
      localObject = (double[])paramObject;
      localArrayList = new ArrayList();
      j = localObject.length;
      i = k;
      for (;;)
      {
        paramObject = localArrayList;
        if (i >= j) {
          break;
        }
        localArrayList.add(Double.valueOf(localObject[i]));
        i += 1;
      }
    }
    if ((paramObject instanceof float[]))
    {
      localObject = (float[])paramObject;
      localArrayList = new ArrayList();
      j = localObject.length;
      i = m;
      for (;;)
      {
        paramObject = localArrayList;
        if (i >= j) {
          break;
        }
        localArrayList.add(Float.valueOf(localObject[i]));
        i += 1;
      }
    }
    if ((paramObject instanceof Object[]))
    {
      paramObject = Arrays.asList((Object[])paramObject);
      return (Collection)paramObject;
    }
    return null;
  }
  
  private static JSONArray a(Collection paramCollection)
  {
    JSONArray localJSONArray;
    if ((paramCollection != null) && (paramCollection.size() > 0))
    {
      localJSONArray = new JSONArray();
      Iterator localIterator = paramCollection.iterator();
      if (localIterator.hasNext())
      {
        paramCollection = localIterator.next();
        if (paramCollection == null) {}
      }
    }
    for (;;)
    {
      try
      {
        if (paramCollection.getClass().isArray())
        {
          paramCollection = a(paramCollection);
          if (paramCollection == null) {
            break label156;
          }
          paramCollection = a(paramCollection);
          if (paramCollection == null) {
            break;
          }
          localJSONArray.put(localJSONArray);
          break;
        }
        if ((paramCollection instanceof Collection))
        {
          if (a((Collection)paramCollection) == null) {
            break;
          }
          localJSONArray.put(localJSONArray);
          break;
        }
        if ((paramCollection instanceof Map))
        {
          paramCollection = a((Map)paramCollection);
          if (paramCollection == null) {
            break;
          }
          localJSONArray.put(paramCollection);
          break;
        }
        localJSONArray.put(paramCollection);
      }
      catch (Throwable paramCollection) {}
      return localJSONArray;
      return null;
      break;
      label156:
      paramCollection = null;
    }
  }
  
  public static final JSONObject a(Map paramMap)
  {
    JSONObject localJSONObject;
    Object localObject3;
    Object localObject1;
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      localJSONObject = new JSONObject();
      Iterator localIterator = paramMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        localObject3 = localIterator.next();
        localObject1 = paramMap.get(localObject3);
        if (localObject1 == null) {}
      }
    }
    for (;;)
    {
      try
      {
        if (localObject1.getClass().isArray())
        {
          localObject1 = a(localObject1);
          if (localObject1 == null) {
            break label193;
          }
          localObject1 = a((Collection)localObject1);
          if (localObject1 == null) {
            break;
          }
          localJSONObject.putOpt(localObject3.toString(), localObject1);
          break;
        }
        if ((localObject1 instanceof Collection))
        {
          localObject1 = a((Collection)localObject1);
          if (localObject1 == null) {
            break;
          }
          localJSONObject.putOpt(localObject3.toString(), localObject1);
          break;
        }
        if ((localObject1 instanceof Map))
        {
          localObject1 = a((Map)localObject1);
          if (localObject1 == null) {
            break;
          }
          localJSONObject.putOpt(localObject3.toString(), localObject1);
          break;
        }
        localJSONObject.putOpt(localObject3.toString(), localObject1);
      }
      catch (Throwable localThrowable) {}
      return localJSONObject;
      return null;
      break;
      label193:
      Object localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */