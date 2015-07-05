package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@ey
public class al
{
  private final Object mH = new Object();
  private List<ak> nA = new LinkedList();
  private int nz;
  
  public boolean a(ak paramak)
  {
    synchronized (mH)
    {
      return nA.contains(paramak);
    }
  }
  
  public ak aZ()
  {
    Object localObject1 = null;
    label146:
    label149:
    for (;;)
    {
      synchronized (mH)
      {
        if (nA.size() == 0)
        {
          gr.S("Queue empty");
          return null;
        }
        if (nA.size() >= 2)
        {
          int i = Integer.MIN_VALUE;
          Iterator localIterator = nA.iterator();
          if (localIterator.hasNext())
          {
            ak localak2 = (ak)localIterator.next();
            int j = localak2.getScore();
            if (j <= i) {
              break label146;
            }
            localObject1 = localak2;
            i = j;
            break label149;
          }
          nA.remove(localObject1);
          return (ak)localObject1;
        }
      }
      ak localak1 = (ak)nA.get(0);
      localak1.aU();
      return localak1;
    }
  }
  
  public boolean b(ak paramak)
  {
    synchronized (mH)
    {
      Iterator localIterator = nA.iterator();
      while (localIterator.hasNext())
      {
        ak localak = (ak)localIterator.next();
        if ((paramak != localak) && (localak.aT().equals(paramak.aT())))
        {
          nA.remove(paramak);
          return true;
        }
      }
      return false;
    }
  }
  
  public void c(ak paramak)
  {
    synchronized (mH)
    {
      if (nA.size() >= 10)
      {
        gr.S("Queue is full, current size = " + nA.size());
        nA.remove(0);
      }
      int i = nz;
      nz = (i + 1);
      paramak.c(i);
      nA.add(paramak);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */