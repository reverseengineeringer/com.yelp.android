package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

@fv
public class de
  implements dd
{
  private final dc a;
  private final HashSet<AbstractMap.SimpleEntry<String, bz>> b;
  
  public de(dc paramdc)
  {
    a = paramdc;
    b = new HashSet();
  }
  
  public void a()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      AbstractMap.SimpleEntry localSimpleEntry = (AbstractMap.SimpleEntry)localIterator.next();
      gz.e("Unregistering eventhandler: " + ((bz)localSimpleEntry.getValue()).toString());
      a.b((String)localSimpleEntry.getKey(), (bz)localSimpleEntry.getValue());
    }
    b.clear();
  }
  
  public void a(String paramString, bz parambz)
  {
    a.a(paramString, parambz);
    b.add(new AbstractMap.SimpleEntry(paramString, parambz));
  }
  
  public void a(String paramString1, String paramString2)
  {
    a.a(paramString1, paramString2);
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    a.a(paramString, paramJSONObject);
  }
  
  public void b(String paramString, bz parambz)
  {
    a.b(paramString, parambz);
    b.remove(new AbstractMap.SimpleEntry(paramString, parambz));
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    a.b(paramString, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */