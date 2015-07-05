package com.comscore.applications;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class a
  extends c
{
  protected a(com.comscore.analytics.a parama, EventType paramEventType, String paramString)
  {
    super(parama, paramEventType, paramString);
  }
  
  private Boolean b(String paramString1, String paramString2)
  {
    return Boolean.valueOf(paramString1.contains(paramString2));
  }
  
  private Boolean c(String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      if (!"0123456789".contains("" + paramString.charAt(i))) {
        return Boolean.valueOf(false);
      }
      i += 1;
    }
    return Boolean.valueOf(true);
  }
  
  private String c(String paramString1, String paramString2)
  {
    paramString2 = new StringBuilder(paramString2);
    paramString1 = e(paramString1).iterator();
    while (paramString1.hasNext())
    {
      String str = (String)paramString1.next();
      if (!paramString2.toString().contains(str))
      {
        if (paramString2.toString().equals("")) {
          paramString2.append(str).append(":1");
        } else {
          paramString2.append(";").append(str).append(":1");
        }
      }
      else
      {
        String[] arrayOfString = paramString2.toString().split(";");
        int i = 0;
        while (i < arrayOfString.length)
        {
          if (arrayOfString[i].contains(str))
          {
            Object localObject = arrayOfString[i].split(":");
            int j = Integer.valueOf(localObject[1]).intValue();
            localObject = localObject[0] + ":" + Integer.valueOf(j + 1);
            paramString2.replace(paramString2.indexOf(arrayOfString[i]), paramString2.indexOf(arrayOfString[i]) + arrayOfString[i].length(), (String)localObject);
          }
          i += 1;
        }
      }
    }
    return paramString2.toString();
  }
  
  private Boolean d(String paramString)
  {
    if (paramString == null) {
      return Boolean.valueOf(false);
    }
    if (!paramString.contains(",")) {
      return Boolean.valueOf(false);
    }
    if (!paramString.contains(" ")) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  private List<String> e(String paramString)
  {
    paramString = paramString.split(",");
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramString.length)
    {
      localArrayList.add(paramString[i]);
      i += 1;
    }
    return localArrayList;
  }
  
  public List<com.yelp.android.al.a> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext())
    {
      com.yelp.android.al.a locala = (com.yelp.android.al.a)localIterator.next();
      if (c.booleanValue()) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
  
  public void a(List<com.yelp.android.al.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject1 = (com.yelp.android.al.a)paramList.next();
      Object localObject2 = (com.yelp.android.al.a)a.get(a);
      if (localObject2 == null)
      {
        if (d(b).booleanValue())
        {
          localObject2 = c(b, "");
          a(a, (String)localObject2, Boolean.valueOf(true));
        }
        else
        {
          b((com.yelp.android.al.a)localObject1);
        }
      }
      else if ((c(b).booleanValue()) && (c(b).booleanValue()))
      {
        int i = Integer.valueOf(b).intValue();
        int j = Integer.valueOf(b).intValue();
        a(a, Integer.valueOf(j + i).toString(), Boolean.valueOf(true));
      }
      else if (d(b).booleanValue())
      {
        localObject2 = c(b, b);
        a(a, (String)localObject2, Boolean.valueOf(true));
      }
      else if (!b(b, b).booleanValue())
      {
        localObject1 = b + "," + b;
        a(a, (String)localObject1, Boolean.valueOf(true));
      }
    }
  }
  
  public void b()
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = a.values().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      com.yelp.android.al.a locala = (com.yelp.android.al.a)((Iterator)localObject2).next();
      if (d(b).booleanValue()) {
        ((ArrayList)localObject1).add(locala);
      }
    }
    localObject1 = ((ArrayList)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (com.yelp.android.al.a)((Iterator)localObject1).next();
      a(a, c(b, ""), Boolean.valueOf(true));
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.applications.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */