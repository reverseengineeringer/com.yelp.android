package com.kahuna.sdk;

import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class v
  implements i
{
  private Map<String, Set<String>> a;
  
  protected v()
  {
    a = new HashMap();
  }
  
  protected v(Map<String, Set<String>> paramMap)
  {
    a = paramMap;
  }
  
  public Map<String, Set<String>> a()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (Set)localEntry.getValue();
      if (!w.a((Set)localObject))
      {
        localObject = new HashSet((Collection)localObject);
        localHashMap.put(localEntry.getKey(), localObject);
      }
    }
    return localHashMap;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((w.a(paramString1)) || (w.a(paramString2)))
    {
      if (l.u()) {
        Log.w("Kahuna", "Attempted to add invalid credentials to a UserCredentials Object. Key: " + w.a(paramString1) + " Value:" + w.a(paramString2));
      }
      return;
    }
    if (!a.containsKey(paramString1)) {
      a.put(paramString1, new HashSet());
    }
    ((Set)a.get(paramString1)).add(paramString2);
  }
  
  public boolean a(v paramv)
  {
    if (paramv == null) {
      return false;
    }
    paramv = a;
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Set localSet = (Set)localEntry.getValue();
      if (!paramv.containsKey(localEntry.getKey())) {
        return false;
      }
      if (localSet.size() != ((Set)paramv.get(localEntry.getKey())).size()) {
        return false;
      }
      if (!localSet.containsAll((Collection)paramv.get(localEntry.getKey()))) {
        return false;
      }
    }
    return true;
  }
  
  public boolean b()
  {
    return a.isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */