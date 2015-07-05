package com.yelp.android.ao;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class i
{
  private static String d = "UTF-8";
  protected ConcurrentHashMap<String, String> a;
  protected ConcurrentHashMap<String, j> b;
  protected ConcurrentHashMap<String, ArrayList<String>> c;
  private HttpEntity e = null;
  
  public i()
  {
    d();
  }
  
  private void d()
  {
    a = new ConcurrentHashMap();
    b = new ConcurrentHashMap();
    c = new ConcurrentHashMap();
    e = null;
  }
  
  public Map<String, String> a()
  {
    return new ConcurrentHashMap(a);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      a.put(paramString1, paramString2);
      e = null;
    }
  }
  
  public HttpEntity b()
  {
    if (e == null)
    {
      if (b.isEmpty()) {
        break label354;
      }
      l locall = new l();
      Iterator localIterator = a.entrySet().iterator();
      Map.Entry localEntry;
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        locall.a((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      localIterator = c.entrySet().iterator();
      Object localObject;
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        localObject = ((ArrayList)localEntry.getValue()).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          locall.a((String)localEntry.getKey(), str);
        }
      }
      int j = b.entrySet().size();
      localIterator = b.entrySet().iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        localObject = (j)localEntry.getValue();
        boolean bool;
        if (a != null)
        {
          if (i != j - 1) {
            break label309;
          }
          bool = true;
          label263:
          if (c == null) {
            break label314;
          }
          locall.a((String)localEntry.getKey(), ((j)localObject).a(), a, c, bool);
        }
        for (;;)
        {
          i += 1;
          break;
          label309:
          bool = false;
          break label263;
          label314:
          locall.a((String)localEntry.getKey(), ((j)localObject).a(), a, bool);
        }
      }
      e = locall;
    }
    for (;;)
    {
      return e;
      try
      {
        label354:
        e = new UrlEncodedFormEntity(c(), d);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
  }
  
  protected List<BasicNameValuePair> c()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator1 = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), str));
      }
    }
    return localLinkedList;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    localIterator1 = b.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      ArrayList localArrayList = (ArrayList)localEntry.getValue();
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        if (localArrayList.indexOf(str) != 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */