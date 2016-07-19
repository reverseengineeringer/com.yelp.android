package com.bugsnag.android;

import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class Breadcrumbs
  implements JsonStream.Streamable
{
  private int maxSize = 20;
  private final List<Breadcrumb> store = new LinkedList();
  
  void add(String paramString)
  {
    if (store.size() >= maxSize) {
      store.remove(0);
    }
    store.add(new Breadcrumb(paramString));
  }
  
  void clear()
  {
    store.clear();
  }
  
  void setSize(int paramInt)
  {
    if (paramInt > store.size())
    {
      maxSize = paramInt;
      return;
    }
    store.subList(0, store.size() - paramInt).clear();
  }
  
  public void toStream(JsonStream paramJsonStream)
    throws IOException
  {
    paramJsonStream.beginArray();
    Iterator localIterator = store.iterator();
    while (localIterator.hasNext())
    {
      Breadcrumb localBreadcrumb = (Breadcrumb)localIterator.next();
      paramJsonStream.beginArray();
      paramJsonStream.value(timestamp);
      paramJsonStream.value(message);
      paramJsonStream.endArray();
    }
    paramJsonStream.endArray();
  }
  
  private static class Breadcrumb
  {
    final String message;
    final String timestamp = DateUtils.toISO8601(new Date());
    
    Breadcrumb(String paramString)
    {
      message = paramString.substring(0, Math.min(paramString.length(), 140));
    }
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Breadcrumbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */