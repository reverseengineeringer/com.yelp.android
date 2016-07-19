package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@fv
public class al
{
  private final Collection<ak> a = new ArrayList();
  private final Collection<ak<String>> b = new ArrayList();
  private final Collection<ak<String>> c = new ArrayList();
  
  public List<String> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((ak)localIterator.next()).c();
      if (str != null) {
        localArrayList.add(str);
      }
    }
    return localArrayList;
  }
  
  public void a(ak paramak)
  {
    a.add(paramak);
  }
  
  public List<String> b()
  {
    List localList = a();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((ak)localIterator.next()).c();
      if (str != null) {
        localList.add(str);
      }
    }
    return localList;
  }
  
  public void b(ak<String> paramak)
  {
    b.add(paramak);
  }
  
  public void c(ak<String> paramak)
  {
    c.add(paramak);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */