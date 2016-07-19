package com.bugsnag.android;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class MetaData
  implements JsonStream.Streamable
{
  private String[] filters;
  private final Map<String, Object> store;
  
  public MetaData()
  {
    store = new ConcurrentHashMap();
  }
  
  public MetaData(Map<String, Object> paramMap)
  {
    store = new ConcurrentHashMap(paramMap);
  }
  
  static MetaData merge(MetaData... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      MetaData localMetaData = paramVarArgs[i];
      if (localMetaData != null) {
        localArrayList.add(store);
      }
      i += 1;
    }
    return new MetaData(mergeMaps((Map[])localArrayList.toArray(new Map[0])));
  }
  
  private static Map<String, Object> mergeMaps(Map<String, Object>... paramVarArgs)
  {
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    int j = paramVarArgs.length;
    int i = 0;
    if (i < j)
    {
      Map<String, Object> localMap = paramVarArgs[i];
      if (localMap == null) {}
      for (;;)
      {
        i += 1;
        break;
        Object localObject1 = new HashSet(localConcurrentHashMap.keySet());
        ((Set)localObject1).addAll(localMap.keySet());
        localObject1 = ((Set)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          String str = (String)((Iterator)localObject1).next();
          Object localObject2 = localConcurrentHashMap.get(str);
          Object localObject3 = localMap.get(str);
          if (localObject3 != null)
          {
            if ((localObject2 != null) && ((localObject2 instanceof Map)) && ((localObject3 instanceof Map))) {
              localConcurrentHashMap.put(str, mergeMaps(new Map[] { (Map)localObject2, (Map)localObject3 }));
            } else {
              localConcurrentHashMap.put(str, localObject3);
            }
          }
          else {
            localConcurrentHashMap.put(str, localObject2);
          }
        }
      }
    }
    return localConcurrentHashMap;
  }
  
  private void objectToStream(Object paramObject, JsonStream paramJsonStream)
    throws IOException
  {
    if (paramObject == null)
    {
      paramJsonStream.nullValue();
      return;
    }
    if ((paramObject instanceof String))
    {
      paramJsonStream.value((String)paramObject);
      return;
    }
    if ((paramObject instanceof Number))
    {
      paramJsonStream.value((Number)paramObject);
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      paramJsonStream.value((Boolean)paramObject);
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramJsonStream.beginObject();
      paramObject = ((Map)paramObject).entrySet().iterator();
      while (((Iterator)paramObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)paramObject).next();
        Object localObject = localEntry.getKey();
        if ((localObject instanceof String))
        {
          localObject = (String)localObject;
          paramJsonStream.name((String)localObject);
          if (shouldFilter((String)localObject)) {
            paramJsonStream.value("[FILTERED]");
          } else {
            objectToStream(localEntry.getValue(), paramJsonStream);
          }
        }
      }
      paramJsonStream.endObject();
      return;
    }
    if ((paramObject instanceof Collection))
    {
      paramJsonStream.beginArray();
      paramObject = ((Collection)paramObject).iterator();
      while (((Iterator)paramObject).hasNext()) {
        objectToStream(((Iterator)paramObject).next(), paramJsonStream);
      }
      paramJsonStream.endArray();
      return;
    }
    if (paramObject.getClass().isArray())
    {
      paramJsonStream.beginArray();
      int j = Array.getLength(paramObject);
      int i = 0;
      while (i < j)
      {
        objectToStream(Array.get(paramObject, i), paramJsonStream);
        i += 1;
      }
      paramJsonStream.endArray();
      return;
    }
    paramJsonStream.value("[OBJECT]");
  }
  
  private boolean shouldFilter(String paramString)
  {
    if ((filters == null) || (paramString == null)) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = filters;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (paramString.contains(arrayOfString[i])) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public void addToTab(String paramString1, String paramString2, Object paramObject)
  {
    paramString1 = getTab(paramString1);
    if (paramObject != null)
    {
      paramString1.put(paramString2, paramObject);
      return;
    }
    paramString1.remove(paramString2);
  }
  
  public void clearTab(String paramString)
  {
    store.remove(paramString);
  }
  
  Map<String, Object> getTab(String paramString)
  {
    Map localMap = (Map)store.get(paramString);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new ConcurrentHashMap();
      store.put(paramString, localObject);
    }
    return (Map<String, Object>)localObject;
  }
  
  void setFilters(String... paramVarArgs)
  {
    filters = paramVarArgs;
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    objectToStream(store, paramJsonStream);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.MetaData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */