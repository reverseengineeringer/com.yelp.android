package com.kahuna.sdk;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public class a
{
  private List<Event> a;
  private String b;
  private List<String> c;
  
  protected a(List<Event> paramList, String paramString, List<String> paramList1)
  {
    a = paramList;
    b = paramString;
    c = paramList1;
  }
  
  protected List<Event> a()
  {
    return a;
  }
  
  protected String b()
  {
    Object localObject = "";
    if (!aj.a(b))
    {
      String str = b;
      localObject = str;
      if (b.length() > 10000) {
        localObject = str.substring(0, 10000);
      }
      localObject = aj.b((String)localObject);
    }
    return (String)localObject;
  }
  
  protected JSONArray c()
  {
    JSONArray localJSONArray = new JSONArray();
    if (!aj.a(c))
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        String str = aj.b((String)localIterator.next());
        if (str != null) {
          localJSONArray.put(str);
        }
      }
    }
    return localJSONArray;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */