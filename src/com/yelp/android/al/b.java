package com.yelp.android.al;

import com.comscore.utils.f;
import com.comscore.utils.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class b
{
  protected HashMap<String, a> a = new HashMap();
  protected String b;
  protected long c;
  
  protected b(com.comscore.analytics.a parama)
  {
    b(parama.Q());
    c = h.a();
  }
  
  public Boolean a(String paramString)
  {
    return Boolean.valueOf(a.containsKey(paramString));
  }
  
  public String a(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    HashMap localHashMap = new HashMap(a);
    int j = paramArrayOfString.length;
    int i = 0;
    String str;
    a locala;
    while (i < j)
    {
      str = paramArrayOfString[i];
      locala = (a)localHashMap.get(str);
      if (locala != null)
      {
        localStringBuilder.append(locala.a());
        localHashMap.remove(str);
      }
      i += 1;
    }
    if (paramArrayOfString != f.c)
    {
      paramArrayOfString = f.c;
      j = paramArrayOfString.length;
      i = 0;
      while (i < j)
      {
        str = paramArrayOfString[i];
        locala = (a)localHashMap.get(str);
        if (locala != null)
        {
          localStringBuilder.append(locala.a());
          localHashMap.remove(str);
        }
        i += 1;
      }
    }
    paramArrayOfString = localHashMap.values().iterator();
    while (paramArrayOfString.hasNext()) {
      localStringBuilder.append(((a)paramArrayOfString.next()).a());
    }
    if ((localStringBuilder.length() > 0) && (localStringBuilder.charAt(0) == '&')) {
      return localStringBuilder.substring(1);
    }
    return localStringBuilder.toString();
  }
  
  protected void a(a parama)
  {
    if (a.get(a) == null) {
      a.put(a, parama);
    }
  }
  
  public void a(String paramString, Boolean paramBoolean1, Boolean paramBoolean2)
  {
    a locala = (a)a.get(paramString);
    if ((locala != null) && ((!(locala instanceof d)) || (paramBoolean2.booleanValue()) || (paramBoolean1.booleanValue()))) {
      a.remove(paramString);
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, Boolean.valueOf(false));
  }
  
  public void a(String paramString1, String paramString2, Boolean paramBoolean)
  {
    a(paramString1, paramBoolean, Boolean.valueOf(false));
    a(paramString1, paramString2, paramBoolean, Boolean.valueOf(false));
  }
  
  protected void a(String paramString1, String paramString2, Boolean paramBoolean1, Boolean paramBoolean2)
  {
    if (paramBoolean2.booleanValue())
    {
      a(new d(paramString1, paramString2, paramBoolean1));
      return;
    }
    a(new a(paramString1, paramString2, paramBoolean1));
  }
  
  protected void a(HashMap<String, String> paramHashMap)
  {
    a(paramHashMap, false);
  }
  
  protected void a(HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (paramHashMap != null)
    {
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(str, (String)paramHashMap.get(str), Boolean.valueOf(paramBoolean));
      }
    }
  }
  
  public void b(a parama)
  {
    a(a, c, Boolean.valueOf(parama instanceof d));
    a(parama);
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public String c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */