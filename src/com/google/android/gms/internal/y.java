package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@fv
public class y
{
  private final Object a = new Object();
  private int b;
  private List<x> c = new LinkedList();
  
  public x a()
  {
    Object localObject1 = null;
    label146:
    label149:
    for (;;)
    {
      synchronized (a)
      {
        if (c.size() == 0)
        {
          gz.a("Queue empty");
          return null;
        }
        if (c.size() >= 2)
        {
          int i = Integer.MIN_VALUE;
          Iterator localIterator = c.iterator();
          if (localIterator.hasNext())
          {
            x localx2 = (x)localIterator.next();
            int j = localx2.h();
            if (j <= i) {
              break label146;
            }
            localObject1 = localx2;
            i = j;
            break label149;
          }
          c.remove(localObject1);
          return (x)localObject1;
        }
      }
      x localx1 = (x)c.get(0);
      localx1.d();
      return localx1;
    }
  }
  
  public boolean a(x paramx)
  {
    synchronized (a)
    {
      return c.contains(paramx);
    }
  }
  
  public boolean b(x paramx)
  {
    synchronized (a)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        x localx = (x)localIterator.next();
        if ((paramx != localx) && (localx.b().equals(paramx.b())))
        {
          localIterator.remove();
          return true;
        }
      }
      return false;
    }
  }
  
  public void c(x paramx)
  {
    synchronized (a)
    {
      if (c.size() >= 10)
      {
        gz.a("Queue is full, current size = " + c.size());
        c.remove(0);
      }
      int i = b;
      b = (i + 1);
      paramx.a(i);
      c.add(paramx);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */