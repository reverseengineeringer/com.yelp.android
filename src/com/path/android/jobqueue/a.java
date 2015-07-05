package com.path.android.jobqueue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeSet;

public class a
{
  private ArrayList<String> a;
  private final TreeSet<String> b = new TreeSet();
  
  public Collection<String> a()
  {
    try
    {
      if (a == null) {
        a = new ArrayList(b);
      }
      ArrayList localArrayList = a;
      return localArrayList;
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    try
    {
      if (b.add(paramString)) {
        a = null;
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void b(String paramString)
  {
    try
    {
      if (b.remove(paramString)) {
        a = null;
      }
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
 * Qualified Name:     com.path.android.jobqueue.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */