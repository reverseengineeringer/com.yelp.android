package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class c$2
  implements c.c.a
{
  c$2(c paramc) {}
  
  public void a(List<c.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      c.a locala = (c.a)paramList.next();
      c.a(a, a.a(a, b));
    }
    c.a(a).countDown();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */