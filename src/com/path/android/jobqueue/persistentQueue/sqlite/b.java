package com.path.android.jobqueue.persistentQueue.sqlite;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class b
{
  private final StringBuilder a = new StringBuilder();
  private final Map<String, String> b = new HashMap();
  
  private String b(boolean paramBoolean, Collection<String> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.size() == 0))
    {
      if (paramBoolean) {
        return "w_n";
      }
      return "wo_n";
    }
    a.setLength(0);
    StringBuilder localStringBuilder = a;
    if (paramBoolean) {}
    for (String str = "X";; str = "Y")
    {
      localStringBuilder.append(str);
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        str = (String)paramCollection.next();
        a.append("-").append(str);
      }
    }
    return a.toString();
  }
  
  public String a(boolean paramBoolean, Collection<String> paramCollection)
  {
    try
    {
      paramCollection = b(paramBoolean, paramCollection);
      paramCollection = (String)b.get(paramCollection);
      return paramCollection;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public void a(String paramString, boolean paramBoolean, Collection<String> paramCollection)
  {
    try
    {
      paramCollection = b(paramBoolean, paramCollection);
      b.put(paramCollection, paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */