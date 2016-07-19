package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.s;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@fv
public class ck
  implements Iterable<cj>
{
  private final List<cj> a = new LinkedList();
  
  private cj c(ib paramib)
  {
    Iterator localIterator = s.t().iterator();
    while (localIterator.hasNext())
    {
      cj localcj = (cj)localIterator.next();
      if (a == paramib) {
        return localcj;
      }
    }
    return null;
  }
  
  public void a(cj paramcj)
  {
    a.add(paramcj);
  }
  
  public boolean a(ib paramib)
  {
    paramib = c(paramib);
    if (paramib != null)
    {
      b.a();
      return true;
    }
    return false;
  }
  
  public void b(cj paramcj)
  {
    a.remove(paramcj);
  }
  
  public boolean b(ib paramib)
  {
    return c(paramib) != null;
  }
  
  public Iterator<cj> iterator()
  {
    return a.iterator();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */